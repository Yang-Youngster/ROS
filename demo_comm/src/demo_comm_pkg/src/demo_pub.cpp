#include "ros/ros.h"
#include "std_msgs/String.h"


int main(int argc, char **argv)
{
    // 设置编码格式
    setlocale(LC_ALL,"");
    //初始化节点
    //初始化参数解释为：节点名称，参数名，默认值
    //argc和argv为系统参数，用于初始化ros节点
    //最后的参数为节点名称，如果ros::init()中没有设置节点名称，则使用ros::this_node::getName()获取 （确保唯一性）    
    ros::init(argc, argv, "talker");
    // 创建节点句柄
    ros::NodeHandle n;

    // 创建发布者
    //4.实例化 发布者 对象
    //泛型: 发布的消息类型
    //参数1: 要发布到的话题
    //参数2: 队列中最大保存的消息数，超出此阀值时，先进的先销毁(时间早的先销毁)
    ros::Publisher chatter_pub = n.advertise<std_msgs::String>("chatter", 1000);
    // 创建发布频率
    ros::Rate loop_rate(10);
    // 发布消息
    std::string msgs_str = "Hello world!";
    //计数器
    int count = 0;
    //临时存储消息  
    std_msgs::String msg;

    while (ros::ok()){

        //使用 stringstream 拼接字符串与编号
        std::stringstream ss;
        ss << msgs_str << count;
        msg.data = ss.str();
        //发布消息
        chatter_pub.publish(msg);
        //加入调试，打印发送的消息
        ROS_INFO("发送的消息:%s",msg.data.c_str());
        //根据前面制定的发送频率自动休眠 休眠时间 = 1/频率；
        loop_rate.sleep();
        count++;//循环结束前，让 count 自增
        //暂无应用
        ros::spinOnce();
    }
    return 0;
}