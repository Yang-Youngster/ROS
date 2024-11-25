#include <ros/ros.h>
#include <turtlesim/Pose.h>

void show_pose(const turtlesim::Pose::ConstPtr& pose)
{
    ROS_INFO("turtlePOse: x: %f, y: %f ,theta: %f ,linear_velocity: %f , angular.angular_velocity: %f"
    , pose->x, pose->y,pose->theta,pose->linear_velocity,pose->angular_velocity);
}
//订阅函数位置信息

int main(int argc, char **argv)
{
    ros::init(argc, argv, "tur_cycle_action_sub");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("turtle1/pose", 10, show_pose);
    ros::spin();
    return 0;
}