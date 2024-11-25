#ifndef __BASE_NODE_H
#define __BASE_NODE_H

#include <ros/ros.h>
#include <mavros_msgs/State.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/TwistStamped.h>
#include <sensor_msgs/Imu.h>
#include <cmath>
#include <queue>



//全局位置变量
geometry_msgs::PoseStamped tra_pose;

const int QUEUE_SIZE=20;

//取平均值
std::queue<double> average_ground;
double real_local_z=0.0;

double z_sum = 0.0;
double z_avg = 0.0;

double ground_z=0.0;
bool ground_set=false;



// mavros_msgs::State current_state; 
// void state_cb(const mavros_msgs::State::ConstPtr& msg){
//     current_state = *msg;   // 无人机当前状态
// };

void get_ground_cb(const geometry_msgs::PoseStamped::ConstPtr& msg)
{
    real_local_z=msg->pose.position.z;
    average_ground.push(real_local_z);

    if(average_ground.size()>QUEUE_SIZE)
    {
      z_sum-=average_ground.front();
      average_ground.pop();
    }
    if(!average_ground.empty())
    {
      z_sum+=real_local_z;
      z_avg=z_sum/average_ground.size();
    }
    //时间间隔1秒更新一次
    if(!ground_set ){
    
        ground_z=z_avg;
        ground_set=true;
        ROS_INFO_THROTTLE(2,"无人机地面 : GROUND_Z =%0.2f",ground_z);

    }
  }

#endif