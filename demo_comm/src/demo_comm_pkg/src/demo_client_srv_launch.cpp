#include "ros/ros.h"
#include "demo_comm_pkg/Server_01.h"

int main(int argc, char **argv)
{
    


    
    ros::init(argc, argv, "demo_client");
    ros::NodeHandle n;
    ros::ServiceClient client = n.serviceClient<demo_comm_pkg::Server_01>("InitServer");

    demo_comm_pkg::Server_01 srv;


    srv.request.a=2;

    srv.request.b=3;
    
    if (client.call(srv))
    {
        ROS_INFO("Sum: %d", srv.response.sum);
    }




}