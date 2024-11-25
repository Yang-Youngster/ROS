#ifndef _CALLBACK_H
#define _CALLBACK_H

#include <ros/ros.h>
#include <mavros_msgs/State.h>
#include <geometry_msgs/PoseStamped.h> //头文件引用错误

//无人机当前状态函数
class State_Data_t
{
public:
    mavros_msgs::State current_state;
    mavros_msgs::State state_before_offboard;

    State_Data_t();
    void feed(mavros_msgs::StateConstPtr pMsg);
};
//地面位置标定 -GPS地面标定 -是否精度处理
class GPS_Data_t
{
public:
    double x,y,z;
    bool referencePoseSet;
    geometry_msgs::PoseStamped referencePose;

    GPS_Data_t();
    void feed(const geometry_msgs::PoseStampedConstPtr msg);
};
#endif
