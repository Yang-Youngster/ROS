#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>
#include <geometry_msgs/TwistStamped.h>
#include <string>
#include <sstream>
#include <iostream>


mavros_msgs::State current_state;
void state_cb(const mavros_msgs::State::ConstPtr& msg){
    current_state = *msg;
}
 
int main(int argc, char **argv)
{
    ros::init(argc, argv, "position");
    ros::NodeHandle nh;
 
    ros::Subscriber state_sub = nh.subscribe<mavros_msgs::State>
            ("mavros/state", 10, state_cb);
    ros::Publisher local_pos_pub = nh.advertise<geometry_msgs::PoseStamped>
            ("mavros/setpoint_position/local", 10);
    ros::ServiceClient arming_client = nh.serviceClient<mavros_msgs::CommandBool>
            ("mavros/cmd/arming");
    ros::ServiceClient set_mode_client = nh.serviceClient<mavros_msgs::SetMode>
            ("mavros/set_mode");
    //ros::Publisher velocity_pub = nh.advertise<geometry_msgs::TwistStamped>
           // ("mavros/setpoint_velocity/cmd_vel", 10);
    //the setpoint publishing rate MUST be faster than 2Hz
    ros::Rate rate(20.0);
 
    // wait for FCU connection
    while(ros::ok() && current_state.connected){
        ROS_INFO("wait for FCU connection");
        ros::spinOnce();
        rate.sleep();
    }
 
    geometry_msgs::PoseStamped pose;
    pose.pose.position.x = 0;
    pose.pose.position.y = 0;
    pose.pose.position.z = 1.5;
 
    mavros_msgs::SetMode offb_set_mode;
    offb_set_mode.request.custom_mode = "OFFBOARD";
    mavros_msgs::CommandBool arm_cmd;
    arm_cmd.request.value = true;
    int state = 3;
    ros::Time last_request = ros::Time::now();


    while(ros::ok() ){
       
       if( !current_state.armed ){
                if( arming_client.call(arm_cmd) &&
                    arm_cmd.response.success){
                    ROS_INFO("Vehicle armed");
                }
            }
        if( current_state.mode != "OFFBOARD"){
            if( set_mode_client.call(offb_set_mode) &&
                offb_set_mode.response.mode_sent){
                ROS_INFO("Offboard enabled");
            }
        } 
 
        if( (ros::Time::now() - last_request > ros::Duration(5.0))) break;
 
        ros::spinOnce();
        rate.sleep();
    }
    while(state--) {
        last_request = ros::Time::now();
        while(ros::ok()) {
            if( (ros::Time::now() - last_request > ros::Duration(5.0))) break;//结束的条件
           
            pose.pose.position.x = 0;
            pose.pose.position.y = 0;
            local_pos_pub.publish(pose);
            ROS_INFO("SUCCESS0");
            ros::spinOnce();
            rate.sleep();
        }
        last_request = ros::Time::now();

        while(ros::ok()) {
            //5秒时间
           if( (ros::Time::now() - last_request > ros::Duration(5.0))) break;
           
           pose.pose.position.x = 3;
           pose.pose.position.y = 3;
           local_pos_pub.publish(pose);
           ROS_INFO("SUCCESS1");
           ros::spinOnce();
           rate.sleep();
       }
 last_request = ros::Time::now();
        while(ros::ok()) {
            //5秒时间
           if( (ros::Time::now() - last_request > ros::Duration(5.0))) break;
           
           pose.pose.position.x = 3;
           pose.pose.position.y = 6;
           local_pos_pub.publish(pose);
           ROS_INFO("SUCCESS2");
           ros::spinOnce();
           rate.sleep();
        }
         last_request = ros::Time::now();
        while(ros::ok()) {
            //5秒时间
           if( (ros::Time::now() - last_request > ros::Duration(5.0))) break;
           
           pose.pose.position.x = 3;
           pose.pose.position.y = -3;
           local_pos_pub.publish(pose);
           ROS_INFO("SUCCESS3");
           ros::spinOnce();
           rate.sleep();
        }

       ROS_INFO_STREAM("state="<<state);
    }
    offb_set_mode.request.custom_mode = "AUTO.LAND";
    //offb_set_mode.response.mode_sent
    //检查设定模式是否接收成功
    if( set_mode_client.call(offb_set_mode) && offb_set_mode.response.mode_sent)
    {
        ROS_INFO("AUTO.LAND enabled");
        last_request = ros::Time::now();
    }
 
    return 0;
}

    