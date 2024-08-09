#include <ros/ros.h>
#include "turtlesim/Spawn.h"

int main(int argc, char **argv)
{
    ros::init(argc, argv, "tur_spwan");
    ros::NodeHandle n;

    ros::ServiceClient client = n.serviceClient<turtlesim::Spawn>("spawn");

    turtlesim::Spawn srv;
   
    srv.request.x = 2;
    srv.request.y = 1;
    srv.request.theta = 0;
    srv.request.name = "Tur";
    if (client.call(srv))
    {
        ROS_INFO("Turtle spawned at name: %s", srv.response.name.c_str() );
        ros::spin();
        return 1;
    }else
    {
        ROS_ERROR("Failed to spawn turtle");
        return 0;
    }
}
