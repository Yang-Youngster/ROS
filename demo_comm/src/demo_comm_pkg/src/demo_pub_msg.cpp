#include "ros/ros.h"
#include "demo_comm_pkg/Example.h" //倒入自定义信息头文件
#include "ctime"   

int main(int argc, char **argv)
{
    //如何发布消息
    ros::init(argc, argv, "demo_pub_msg"); //初始化节点
    ros::NodeHandle n; //创建句柄

    ros::Publisher pub = n.advertise<demo_comm_pkg::Example>("example", 1000); //创建发布者，并指定话题名和队列大小
    demo_comm_pkg::Example msg; //创建消息

    msg.age=18;
    msg.name="LuoYang";
    msg.height=180;

    ros::Rate loop_rate(10); //设置发布循环频率
    time_t now; //获取当前时间

    while(ros::ok())
    {
        time_t date= time(&now);

        // 发布消息
        pub.publish(msg);
        ROS_INFO(" name:%s  age:%d   height:%f",msg.name,msg.age,msg.height);
        
        msg.age+=1;
        msg.height+=0.1;

        loop_rate.sleep(); //休眠
        ros::spinOnce();
    }
    return 0;
}