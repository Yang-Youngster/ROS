#include <ros/ros.h>

int main(int argc, char* argv[])
{
    ros::init(argc, argv, "demo_comm");
    ros::NodeHandle nh;
    ROS_INFO("Hello World");
    return 0;
}