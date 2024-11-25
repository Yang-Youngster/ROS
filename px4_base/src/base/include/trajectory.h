#ifndef _TRAJECTORY_H
#define _TRAJECTORY_H


#include <ros/ros.h>
#include <Eigen/Dense>
#include <math.h>

// 定义轨迹点 
class TrajectoryPoint{
    public:
    EIGEN_MAKE_ALIGNED_OPERATOR_NEW;
    Eigen::Vector3d position;
    Eigen::Vector3d velocity;
    Eigen::Vector3d acceleration;
    //Eigen::Vector3d j;
    Eigen::Quaterniond quaternion;
    double yaw;
    double yaw_rate;
    double head_rate;
    TrajectoryPoint():position{0,0,2.0}{}
};
struct Tra_Eight_Paramters
{
    double time;
    double radius1;
    double radius2;
    double phase_shift;     //相位差
    double speed;     
    bool onFirstCircle = true;
    Tra_Eight_Paramters(const double time,const double raradius1,const double raradius2,double phase_shift,double speed,bool onFirstCircle):
    time(time),radius1(raradius1),radius2(raradius2),phase_shift(phase_shift),speed(speed),onFirstCircle(onFirstCircle)
    {}; 
    
};

// struct Desired_State_t
// {
//     Eigen::Vector3d p;
//     Eigen::Vector3d v;
//     Eigen::Vector3d a;
//     Eigen::Vector3d j;
//     Eigen::Quaterniond q;
//     double yaw;
//     double yaw_rate;
//     double head_rate;

//     Desired_State_t(){};

//     Desired_State_t(Odom_Data_t &odom)
//         : p(odom.p),
//           v(Eigen::Vector3d::Zero()),
//           a(Eigen::Vector3d::Zero()),
//           j(Eigen::Vector3d::Zero()),
//           q(odom.q),
//           yaw(uav_utils::get_yaw_from_quaternion(odom.q)),
//           yaw_rate(0),
//           head_rate(0){};
// };

// 定义特定轨迹
class Trajectory
{
public:
    EIGEN_MAKE_ALIGNED_OPERATOR_NEW;   //Eigen-宏定义-用于内存对齐
    Tra_Eight_Paramters trajectory_Eight_paramters{0.0,5.0,3.0,0.0,0.02,true}; //从0.0开始，半径为5.0的圆，半径为3.0的圆，相位偏移为0.0，速度为0.03，默认在第一个
    TrajectoryPoint trajectory_points;
    Trajectory();
    void setDefaultPosition(double x, double y, double z);
    void setEightTrajectory();     

};



























#endif