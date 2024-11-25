/**
 * @file offb_node.cpp
 * @brief Offboard control example node, written with MAVROS version 0.19.x, PX4 Pro Flight
 * Stack and tested in Gazebo Classic SITL
 */
#include  "base_node.h"
#include  "base_state_machine.h"
#include  "trajectory.h"
/*********************************************
*   实验平台：PX4
*   library version: ubuntu 20.04 ROS1 Noetic
*   author : 肥肠教主-LuoYang
*   deta: 2024/10/24
*   subject: 集成功能控制
/**********************************************/

int main(int argc, char **argv)
{
    ros::init(argc, argv, "base_node");
    ros::NodeHandle nh;
    setlocale(LC_ALL, "");
    //状态机mavros/state
    State_Machine state_machine;
    //初始化轨迹点
    Trajectory trajectory;

    ros::Subscriber state_sub = nh.subscribe<mavros_msgs::State>("mavros/state",10,boost::bind(&State_Data_t::feed, &state_machine.state_data , _1));
    //获取当前定位信息标定地面参考点
    ros::Subscriber local_sub = nh.subscribe<geometry_msgs::PoseStamped>("mavros/local_position/pose", 10, boost::bind(&GPS_Data_t::feed, &state_machine.gps_data , _1));
    //发送位置
    ros::Publisher local_set_pub = nh.advertise<geometry_msgs::PoseStamped>("mavros/setpoint_position/local", 1);

    //订阅速度、姿态
    
    
    //启动服务节点
    ros::ServiceClient arming_client = nh.serviceClient<mavros_msgs::CommandBool>("mavros/cmd/arming");
    ros::ServiceClient set_mode_client = nh.serviceClient<mavros_msgs::SetMode>("mavros/set_mode");
    
    ros::Rate rate(20.0);   
    
    ROS_INFO_THROTTLE(2,"Ready to arm/takeoff!");
    while(ros::ok() && !state_machine.state_data.current_state.connected)
    {
      ros::spinOnce();
      rate.sleep();
      ROS_INFO_THROTTLE(2,"Waiting for FCU connection...");
    }
    geometry_msgs::PoseStamped pose;
    pose.pose.position.x = 0;
    pose.pose.position.y = 0;
    pose.pose.position.z = 2;
    //send a few setpoints before starting
    for(int i = 100; ros::ok() && i > 0; --i){
        local_set_pub.publish(pose);
        ros::spinOnce();
        rate.sleep();
        ROS_INFO_THROTTLE(1,"Publishing setpoints...");
    }
    mavros_msgs::SetMode offb_set_mode;
    offb_set_mode.request.custom_mode = "OFFBOARD";
    // 无人机解锁 --自身检查
    mavros_msgs::CommandBool arm_cmd;
    arm_cmd.request.value = true;
    ros::Time last_request = ros::Time::now();
    while(ros::ok()){
        if( state_machine.state_data.current_state.mode != "OFFBOARD" &&
            (ros::Time::now() - last_request > ros::Duration(5.0))){
            // 切换 Offboard 模式
            if( set_mode_client.call(offb_set_mode) &&
                offb_set_mode.response.mode_sent){
                ROS_INFO_THROTTLE(2,"Offboard enabled");
            }
            last_request = ros::Time::now();
        } else {
            if( !state_machine.state_data.current_state.armed &&
                (ros::Time::now() - last_request > ros::Duration(5.0))){
                //无人机解锁
                if( arming_client.call(arm_cmd) &&
                    arm_cmd.response.success){
                    ROS_INFO_THROTTLE(2,"Vehicle armed");
                }
                last_request = ros::Time::now();
            }
        }
        // //通过Eigen库中的轨迹点直接使用
         tra_pose.pose.position.x = trajectory.trajectory_points.position(0);
         tra_pose.pose.position.y = trajectory.trajectory_points.position(1);
         tra_pose.pose.position.z = trajectory.trajectory_points.position(2);
 
        local_set_pub.publish(tra_pose); // 默认起飞 2.0 米
        ros::spinOnce();   // 回调函数
        rate.sleep();  

        if(ros::Time::now()-last_request > ros::Duration(30.0))
        {
             ROS_INFO_THROTTLE(1,"Done!");
            break;
        }
    }
    while (ros::ok()) {

        trajectory.setEightTrajectory();
         //通过Eigen库中的轨迹点直接使用
        tra_pose.pose.position.x = trajectory.trajectory_points.position(0);
        tra_pose.pose.position.y = trajectory.trajectory_points.position(1);
        tra_pose.pose.position.z = trajectory.trajectory_points.position(2);
        local_set_pub.publish(tra_pose);
        ros::spinOnce();
        rate.sleep();
    }
    return 0;
}
