#include "ros/ros.h"
#include "std_msgs/String.h"

void doMsg(const std_msgs::String::ConstPtr& msg_p){
    ROS_INFO("我听见:%s",msg_p->data.c_str());
    // ROS_INFO("我听见:%s",(*msg_p).data.c_str());
}

int main(int argc, char **argv){
     setlocale(LC_ALL,"");
    ros::init(argc, argv, "demo_sub");
    ros::NodeHandle n;

    ros::Subscriber sub = n.subscribe<std_msgs::String>("chatter",10,doMsg);

    //循环等待回调
    ros::spin();
    return 0;
}