#include <base_callback.h>


State_Data_t::State_Data_t(){};
void State_Data_t::feed(mavros_msgs::StateConstPtr pMsg)
{
    current_state=*pMsg;
    if(current_state.mode.c_str()!="OFFBOARD")
    {
        ROS_INFO_THROTTLE(1,"Current State :%s ",current_state.mode.c_str());
    }
}

GPS_Data_t::GPS_Data_t():referencePoseSet(false){};
void GPS_Data_t::feed(const geometry_msgs::PoseStampedConstPtr msg)
{
    //作地面标定
    if(referencePoseSet==false)
    {
        referencePose=*msg;
        referencePoseSet=true;
        ROS_INFO_THROTTLE(1,"地面基准线高度 : %f",referencePose.pose.position.z);
    }else{
        ROS_INFO_THROTTLE(1,"等待标定完成");
    }
}

