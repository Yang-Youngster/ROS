#include "ros/ros.h"
#include "demo_comm_pkg/Example.h"


int main(int argc, char **argv) {

    
  ros::init(argc, argv, "demo_sub_msg");
  ros::NodeHandle n;


  //指定话题，回调函数
  ros::Subscriber sub = n.subscribe<demo_comm_pkg::Example>("example", 1000, [](const demo_comm_pkg::Example& msg) {
    ROS_INFO("获取订阅人的信息： name : %s, age: %d , height: %f", msg.name.c_str(), msg.age,msg.height);
  });



  ros::spin();
  return 0;
}
