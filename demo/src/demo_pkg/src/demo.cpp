#include <ros/ros.h>

int main(int argc,char* argv[])
{
    ros::init(argc,argv,"demo");
    ros::NodeHandle n;
    ROS_INFO("Hello world");
    return 0;
}