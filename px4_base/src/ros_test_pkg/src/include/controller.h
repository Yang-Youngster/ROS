#ifndef __CONTROLLER_H
#define __CONTROLLER_H
#include <Eigen/Dense>
#include "exchange_util.h"
/*********************************************
   实验平台：位置控制器
   library version: PX4
   author : 肥肠教主-LuoYang
   date: 2024/10/18
   subject:
**********************************************/
//定义期望数据结构体
struct desired_data
{
   /* data */
   //位置
    Eigen::Vector3d p;
    //速度
    Eigen::Vector3d v;
    //加速度
    Eigen::Vector3d a;
    //角速度
    Eigen::Vector3d j;
    //四元数
    Eigen::Quaterniond q;
     //期望航向角
    double yaw;
    //期望航向角速度
    double yaw_rate;
    double head_rate;
    desired_data(){};

    desired_data(Odom_Data_t &odom)
        : p(odom.p),
          v(Eigen::Vector3d::Zero()),
          a(Eigen::Vector3d::Zero()),
          j(Eigen::Vector3d::Zero()),
          q(odom.q),
          yaw(
            //获取四元数对应的航向角
            Exchange_Util::get_yaw_from_quaternion(odom.q)
            ),
          yaw_rate(0),
          head_rate(0){};
};

//获取里程计的数据 -GPS数据
struct Odom_Data_t
{ 
   
     
    



   /* data */
};



class linearcontroller{
   public:
    linearcontroller();








}






#endif