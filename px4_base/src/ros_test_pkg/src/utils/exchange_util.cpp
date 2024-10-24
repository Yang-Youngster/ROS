#include "exchange_util.h"


double get_yaw_from_quaternion(Eigen::Quaterniond quaternion)
{
    //根据四元数计算yaw角
    //yaw = atan2(2 * (q0*q3 - q1*q2), 1 - 2 * (q2*q2 + q3*q3）;
    double yaw = 0.0;
    yaw = atan2(2 * (quaternion.w() * quaternion.z() + quaternion.x() * quaternion.y()),
                1 - 2 * (quaternion.y() * quaternion.y() + quaternion.z() * quaternion.z()));
}