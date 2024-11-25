/**
 * @file offb_node.cpp
 * @brief Offboard control example node, written with MAVROS version 0.19.x, PX4 Pro Flight
 * Stack and tested in Gazebo Classic SITL
 */

#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>
#include <mavros_msgs/AttitudeTarget.h>
mavros_msgs::State current_state; 
bool distance_check=false;
void state_cb(const mavros_msgs::State::ConstPtr& msg){
    current_state = *msg;   // 无人机当前状态
    ROS_INFO("State changed, connected: %s", current_state.connected ? "true" : "false");
};

void get_pose(const geometry_msgs::PoseStamped::ConstPtr& msg){
     
     if(msg->pose.position.y <-9.8)
     {
        distance_check=true;
     }
    ROS_INFO("Position: x=%f ", msg->pose.position.y);
};

struct Quaternion {
    double w, x, y, z;
};
Quaternion rollQuaternion(double angle) {
    double halfAngle = angle / 2.0;
    double cosHalfAngle = cos(halfAngle);
    double sinHalfAngle = sin(halfAngle);
    return Quaternion{cosHalfAngle, sinHalfAngle, 0.0, 0.0};
}
//
int main(int argc, char **argv)
{
    ros::init(argc, argv, "offb_node");
    ros::NodeHandle nh;

    ros::Subscriber state_sub = nh.subscribe<mavros_msgs::State>
            ("mavros/state", 1, state_cb);
    ros::Publisher local_pos_pub = nh.advertise<geometry_msgs::PoseStamped>
            ("mavros/setpoint_position/local", 1);
    ros::ServiceClient arming_client = nh.serviceClient<mavros_msgs::CommandBool>
            ("mavros/cmd/arming");
    ros::ServiceClient set_mode_client = nh.serviceClient<mavros_msgs::SetMode>
            ("mavros/set_mode");
    ros::Publisher local_vel_pub = nh.advertise<mavros_msgs::AttitudeTarget>("/mavros/setpoint_raw/attitude", 10);
    //获取当前位置信息
    ros::Subscriber local_pos__get_sub = nh.subscribe<geometry_msgs::PoseStamped>("/mavros/local_position/pose", 10,get_pose);

    //the setpoint publishing rate MUST be faster than 2Hz
    ros::Rate rate(20.0);


    // wait for FCU connection
    while(ros::ok() && !current_state.connected){
        ros::spinOnce();
        rate.sleep();
        ROS_INFO("Waiting for FCU connection...");
    }
 geometry_msgs::PoseStamped pose;

    pose.pose.position.x = 0;
    pose.pose.position.y = 0;
    pose.pose.position.z = 2;


    Quaternion q = rollQuaternion(30 * M_PI / 180.0);
    mavros_msgs::AttitudeTarget attitude;
    attitude.orientation.w = q.w;
    attitude.orientation.x = q.x;
    attitude.orientation.y = q.y;
    attitude.orientation.z = q.z;
    attitude.thrust = 0.7;


    //send a few setpoints before starting
    for(int i = 100; ros::ok() && i > 0; --i){
        local_pos_pub.publish(pose);
        ros::spinOnce();
        rate.sleep();
        ROS_INFO("Publishing setpoints...");
    }
    mavros_msgs::SetMode offb_set_mode;
    offb_set_mode.request.custom_mode = "OFFBOARD";
    // 无人机解锁 --自身检查
    mavros_msgs::CommandBool arm_cmd;
    arm_cmd.request.value = true;
    ros::Time last_request = ros::Time::now();
    while(ros::ok()){
        if( current_state.mode != "OFFBOARD" &&
            (ros::Time::now() - last_request > ros::Duration(5.0))){
            // 切换 Offboard 模式
            if( set_mode_client.call(offb_set_mode) &&
                offb_set_mode.response.mode_sent){
                ROS_INFO("Offboard enabled");
            }
            last_request = ros::Time::now();
        } else {
            if( !current_state.armed &&
                (ros::Time::now() - last_request > ros::Duration(5.0))){
                //无人机解锁
                if( arming_client.call(arm_cmd) &&
                    arm_cmd.response.success){
                    ROS_INFO("Vehicle armed");
                }
                last_request = ros::Time::now();
            }
        }
        local_pos_pub.publish(pose); // 发送目标点位置

      
        if(ros::Time::now()-last_request > ros::Duration(20.0)&& distance_check){
          //发送固定点的姿态
          local_vel_pub.publish(attitude);
        }
        // }else{
        //    pose.pose.position.x=0;
        //    pose.pose.position.y=-10;
        //    pose.pose.position.z=2;
        //    local_pos_pub.publish(pose);
        // }

        // if(ros::Time::now()-last_request > ros::Duration(20.0)){
        //    pose.pose.position.x=0;
        //    pose.pose.position.y=0;
        //    pose.pose.position.z=2;
        //    local_pos_pub.publish(pose);
         
        // }

        ros::spinOnce();   // 回调函数
        rate.sleep();  
    }

    return 0;
}
