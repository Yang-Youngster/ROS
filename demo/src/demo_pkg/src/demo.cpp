#include <ros/ros.h>

int main(int argc,char* argv[])
{
    ros::init(argc,argv,"demo");
    ros::NodeHandle n;
    //ros::spin();
    ROS_INFO("Hello world");
    return 0;
}