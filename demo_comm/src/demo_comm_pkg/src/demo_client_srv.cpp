#include "ros/ros.h"
#include "demo_comm_pkg/Server_01.h"

int main(int argc, char **argv)
{
    setlocale(LC_ALL,"");

    //根据传输的参数形式，通过默认的形式进行传输 rosrun 包名 节点名 参数名
    if (argc != 3)    //argv[0] 程序名 argv[1] 参数值 ……
     {
        ROS_ERROR("传输的数据有误");
        return 1;
     }

    //根据launch文件中的参数，进行传输    

    // if (argc != 3)    //argv[0] 程序名 argv[1] 参数值 ……
    //  {
    //     ROS_ERROR("Usage: demo_client_srv <num>");
    //     return 1;
    //  }
 
    ros::init(argc, argv, "demo_client");
    ros::NodeHandle n;

    ros::ServiceClient client = n.serviceClient<demo_comm_pkg::Server_01>("InitServer");

    ros::service::waitForService("InitServer",ros::Duration(1));
    //自定义消息体
    demo_comm_pkg::Server_01 srv;

    //服务间的通信
    srv.request.request_01= atoi(argv[1]);
    srv.request.request_02= atoi(argv[2]);

    if (client.call(srv))
    {
        ROS_INFO("Success: %d",srv.response.response_01);
    }
    else
    {
        ROS_ERROR("Failed to call service");
        return 1;
    }
    return 0;
}

