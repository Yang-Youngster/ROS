#include "trajectory.h"


//轨迹默认构造函数
Trajectory::Trajectory(){}

void Trajectory::setDefaultPosition(double x, double y, double z){
    trajectory_points.position(0) = x;
    trajectory_points.position(1) = y;
    trajectory_points.position(2) = z;
}

/*默认参数：
    double time = 0.0;
    double radius1 = 5.0;
    double radius2 = 3.0;
    double phase_shift = 0.0;//相位偏移
    double speed = 0.03;
    bool onFirstCircle = true;
*/
void  Trajectory::setEightTrajectory()
{
     // 8 字的上半部分第一个圆
        if (trajectory_Eight_paramters.onFirstCircle) {
            trajectory_points.position.x() = trajectory_Eight_paramters.radius1 * sin(trajectory_Eight_paramters.time);
            trajectory_points.position.y() = trajectory_Eight_paramters.radius1 * (1 - cos(trajectory_Eight_paramters.time));
        } else {
            // 第二个圆
            trajectory_points.position.x() = trajectory_Eight_paramters.radius2 * sin(trajectory_Eight_paramters.time + trajectory_Eight_paramters.phase_shift);
            trajectory_points.position.y() = -trajectory_Eight_paramters.radius2 * (1 - cos(trajectory_Eight_paramters.time + trajectory_Eight_paramters.phase_shift));
        }
       // local_set_pub.publish(pose);
        trajectory_Eight_paramters.time += trajectory_Eight_paramters.speed;
        // 过渡逻辑
        if (trajectory_Eight_paramters.onFirstCircle && trajectory_Eight_paramters.time >= 2 * M_PI) {
            trajectory_Eight_paramters.time = 0.0;
            trajectory_Eight_paramters.onFirstCircle = false;
        } else if (!trajectory_Eight_paramters.onFirstCircle && trajectory_Eight_paramters.time >= 2 * M_PI) {
            trajectory_Eight_paramters.time = 0.0;
            trajectory_Eight_paramters.onFirstCircle = true;
        }
}