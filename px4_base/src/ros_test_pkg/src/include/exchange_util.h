#ifndef __EXCHANGE_UTIL_H
#define __EXCHANGE_UTIL_H
#include <Eigen/Dense>
/*********************************************
   实验平台：位置控制器
   library version: PX4
   author : 肥肠教主-LuoYang
   date: 2024/10/21
   subject: 处理各种数据的转换
**********************************************/
class Exchange_Util {
    

public:
  Exchange_Util();
  double get_yaw_from_quaternion(Eigen::Quaterniond quaternion);



};
#endif