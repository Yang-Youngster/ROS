#include "ros/ros.h"
#include "demo_comm_pkg/Example.h"

void doMsg(const demo_comm_pkg::Example::ConstPtr& msg_p){

    //c_str 转换成c语言字符串 
     ROS_INFO(" name:%s  age:%d   height:%f",msg_p->name.c_str(),msg_p->age,msg_p->height);
    // ROS_INFO("我听见:%s",(*msg_p).data.c_str());
}
int main(int argc, char **argv) {
   setlocale(LC_ALL,"");
  ros::init(argc, argv, "demo_sub_msg");
  ros::NodeHandle n;
  //指定话题，回调函数
  ros::Subscriber sub = n.subscribe<demo_comm_pkg::Example>("example", 10,doMsg);
  
  ros::spin();
  return 0;
}
