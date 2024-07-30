#include "ros/ros.h"
#include "demo_comm_pkg/Server_01.h"

//对客户端传输的数据进行处理
bool doResp(demo_comm_pkg::Server_01::Request &req, demo_comm_pkg::Server_01::Response &res)
{
    int parm_1=req.request_01;
    int parm_2=req.request_02;
    ROS_INFO("服务端接受的数据：parm_1:  %d, parm_2:  %d", parm_1, parm_2);
    
    //逻辑处理
    if(parm_1<0||parm_2<0)
    {
        ROS_ERROR("传输的数据不能为负数！");

        return false;
    }
    res.response_01=parm_1+parm_2;
  return true;
}
int main(int argc, char **argv)
{
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "demo_server");
    ros::NodeHandle n;
    ros::ServiceServer service = n.advertiseService("InitServer", doResp);
    ROS_INFO("服务端启动成功！");
    ros::spin();
    return 0;
}
