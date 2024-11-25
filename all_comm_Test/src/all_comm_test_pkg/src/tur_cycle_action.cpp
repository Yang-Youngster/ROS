#include <ros/ros.h>
#include "geometry_msgs/Twist.h"

int main(int argc, char **argv)
{
    ros::init(argc, argv, "tur_cycle");
    ros::NodeHandle n;

    //创建发布者对象
    ros::Publisher pub = n.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 1000);
    geometry_msgs::Twist msg;
    //根据rqt_graph查看，发布者发布的数据类型是geometry_msgs::Twist

    //线速度
    msg.linear.x = 0.5;
    msg.linear.y = 0.0;
    msg.linear.z = 0.0;
    //角速度
    msg.angular.x = 0.0;
    msg.angular.y = 0.0;
    msg.angular.z = 2.0;
   ros::Rate rate(10);
    while(ros::ok())
    {
        pub.publish(msg);
        ros::spinOnce();
        rate.sleep();
    }
 return 0;
}