#include <ros/ros.h>
#include <mavros_msgs/State.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/TwistStamped.h>
#include <sensor_msgs/Imu.h>
#include <cmath>
#include <queue>

enum FlightState {
    INIT_OFFBOARD,
    TAKEOFF,
    HOVER_AFTER_TAKEOFF,
    MOVE_FORWARD,
    HOVER_AFTER_FORWARD,
    MOVE_RIGHT,
    HOVER_AFTER_RIGHT,
    RETURN_TO_START,
    HOVER_AFTER_RETURN,
    FLY_FORWARD_CURVED,
    HOVER_AFTER_FORWARD_CURVED,
    LANDING,
    LANDED
};

mavros_msgs::State current_state;
double local_z = 0.0;
double accel_z = 0.0;
double vel_z = 0.0;

const int FILTER_SIZE = 10;
std::queue<double> z_queue;
double z_sum = 0.0;
double z_avg = 0.0;

std::queue<double> accel_queue;
double accel_sum = 0.0;
double accel_avg = 0.0;

std::queue<double> vel_queue;
double vel_sum = 0.0;
double vel_avg = 0.0;

double ground_z = 0.0;
bool ground_z_set = false;

geometry_msgs::PoseStamped start_pose;
bool start_pose_recorded = false;

ros::Time vel_stable_start_time;
bool vel_stable = false;

void state_cb(const mavros_msgs::State::ConstPtr& msg){
    current_state = *msg;
}

//
void local_pos_cb(const geometry_msgs::PoseStamped::ConstPtr& msg){
    local_z = msg->pose.position.z;
    z_sum += local_z;
    
    z_queue.push(local_z);
    if(z_queue.size() > FILTER_SIZE){
        z_sum -= z_queue.front();
        z_queue.pop();
    }
    if(!z_queue.empty()){
        z_avg = z_sum / z_queue.size();
    }
    if(!ground_z_set && ros::Time::now() - ros::Time(0) > ros::Duration(1.0)){
        //标定地面高度
        ground_z = local_z;
        ground_z_set = true;
        ROS_INFO("地面高度已设置为: %.2f 米", ground_z);
    }
}

void imu_cb(const sensor_msgs::Imu::ConstPtr& msg){
    accel_z = msg->linear_acceleration.z;
    accel_sum += accel_z;
    accel_queue.push(accel_z);
    if(accel_queue.size() > FILTER_SIZE){
        accel_sum -= accel_queue.front();
        accel_queue.pop();
    }
    if(!accel_queue.empty()){
        accel_avg = accel_sum / accel_queue.size();
    }
}

void velocity_cb(const geometry_msgs::TwistStamped::ConstPtr& msg){
    vel_z = msg->twist.linear.z;
    vel_sum += vel_z;
    vel_queue.push(vel_z);
    if(vel_queue.size() > FILTER_SIZE){
        vel_sum -= vel_queue.front();
        vel_queue.pop();
    }
    if(!vel_queue.empty()){
        vel_avg = vel_sum / vel_queue.size();
    }
}

int main(int argc, char **argv)
{
    setlocale(LC_ALL, "C.UTF-8");
    ros::init(argc, argv, "px4_control_node");
    ros::NodeHandle nh;

    ros::Subscriber state_sub = nh.subscribe<mavros_msgs::State>("mavros/state", 10, state_cb);
    ros::Subscriber local_pos_sub = nh.subscribe<geometry_msgs::PoseStamped>("mavros/local_position/pose", 10, local_pos_cb);
    
    ros::Subscriber imu_sub = nh.subscribe<sensor_msgs::Imu>("mavros/imu/data", 10, imu_cb);
    ros::Subscriber velocity_sub = nh.subscribe<geometry_msgs::TwistStamped>("mavros/local_position/velocity_local", 10, velocity_cb);

    ros::Publisher local_pos_pub = nh.advertise<geometry_msgs::PoseStamped>("mavros/setpoint_position/local", 10);
    ros::Publisher local_vel_pub = nh.advertise<geometry_msgs::TwistStamped>("mavros/setpoint_velocity/cmd_vel", 10);

    ros::ServiceClient arming_client = nh.serviceClient<mavros_msgs::CommandBool>("mavros/cmd/arming");
    ros::ServiceClient set_mode_client = nh.serviceClient<mavros_msgs::SetMode>("mavros/set_mode");

    ros::Rate rate(20.0);

    while(ros::ok() && !current_state.connected){
        ros::spinOnce();//
        rate.sleep();
        ROS_INFO_THROTTLE(5, "等待飞控连接...");
    }

    ROS_INFO("飞控已连接");

    while(ros::ok() && !ground_z_set){
        ros::spinOnce();
        rate.sleep();
        ROS_INFO_THROTTLE(1, "等待设置地面高度基准...");
    }

    geometry_msgs::PoseStamped pose;
    pose.pose.position.x = 0;
    pose.pose.position.y = 0;
    pose.pose.position.z = ground_z + 5.0;

    double takeoff_z = 0.0;

    FlightState flight_state = INIT_OFFBOARD;
    ros::Time state_start_time = ros::Time::now();

    for(int i = 100; ros::ok() && i > 0; --i){
        local_pos_pub.publish(pose);
        ros::spinOnce();
        rate.sleep();
    }

    ros::Time landing_start_time;
    ros::Time accel_stable_start_time;
    bool accel_stable = false;

    while(ros::ok() && flight_state != LANDED){
        ros::spinOnce();

        switch(flight_state){
            case INIT_OFFBOARD:
            {
                mavros_msgs::CommandBool arm_cmd;
                arm_cmd.request.value = true;

                if(arming_client.call(arm_cmd) && arm_cmd.response.success){
                    ROS_INFO("电机已解锁");
                }
                else{
                    ROS_ERROR("电机解锁失败");
                }

                mavros_msgs::SetMode offb_set_mode;
                offb_set_mode.request.custom_mode = "OFFBOARD";

                if(set_mode_client.call(offb_set_mode) && offb_set_mode.response.mode_sent){
                    ROS_INFO("切换到 OFFBOARD 模式");
                    flight_state = TAKEOFF;
                    state_start_time = ros::Time::now();
                }
                else{
                    ROS_ERROR("切换模式失败");
                }
                break;
            }
            case TAKEOFF:
            {
                local_pos_pub.publish(pose);
                if((ros::Time::now() - state_start_time).toSec() > 10.0){
                    takeoff_z = z_avg;
                    ROS_INFO("起飞完成，实际达到高度: %.2f 米，进入悬停状态", takeoff_z);
                    flight_state = HOVER_AFTER_TAKEOFF;
                    state_start_time = ros::Time::now();
                }
                break;
            }
            case HOVER_AFTER_TAKEOFF:
            {
                if((ros::Time::now() - state_start_time).toSec() > 5.0){
                    start_pose = pose;
                    start_pose_recorded = true;
                    ROS_INFO("记录起始位置，准备向前飞行5米");
                    flight_state = MOVE_FORWARD;
                    state_start_time = ros::Time::now();
                }
                else{
                    local_pos_pub.publish(pose);
                }
                break;
            }
            case MOVE_FORWARD:
            {
                double target_distance = 5.0;
                double elapsed_time = (ros::Time::now() - state_start_time).toSec();
                //利用0.3的速度计算飞行时间
                double duration = target_distance / 0.3;

                if(elapsed_time < duration){
                    geometry_msgs::TwistStamped vel_cmd;
                    vel_cmd.header.stamp = ros::Time::now();
                    vel_cmd.header.frame_id = "base_footprint";
                    vel_cmd.twist.linear.x = 0.3;
                    vel_cmd.twist.linear.y = 0.0;
                    vel_cmd.twist.linear.z = 0.0;
                    local_vel_pub.publish(vel_cmd);
                }else{
                    geometry_msgs::TwistStamped stop_cmd;
                    stop_cmd.header.stamp = ros::Time::now();
                    stop_cmd.header.frame_id = "base_footprint";
                    stop_cmd.twist.linear.x = 0.0;
                    stop_cmd.twist.linear.y = 0.0;
                    stop_cmd.twist.linear.z = 0.0;
                    local_vel_pub.publish(stop_cmd);

                    ROS_INFO("向前飞行5米完成，进入悬停状态");
                    flight_state = HOVER_AFTER_FORWARD;
                    state_start_time = ros::Time::now();
                }
                break;
            }
            case HOVER_AFTER_FORWARD:
            {
                if((ros::Time::now() - state_start_time).toSec() > 5.0){
                    ROS_INFO("悬停结束，开始向右飞行5米");
                    flight_state = MOVE_RIGHT;
                    state_start_time = ros::Time::now();
                }
                else{
                    local_pos_pub.publish(pose);
                }
                break;
            }
            case MOVE_RIGHT:
            {
                double target_distance = 5.0;
                double elapsed_time = (ros::Time::now() - state_start_time).toSec();
                double duration = target_distance / 0.3;

                if(elapsed_time < duration){
                    geometry_msgs::TwistStamped vel_cmd;
                    vel_cmd.header.stamp = ros::Time::now();
                    vel_cmd.header.frame_id = "base_footprint";
                    vel_cmd.twist.linear.x = 0.0;
                    vel_cmd.twist.linear.y = 0.3;
                    vel_cmd.twist.linear.z = 0.0;
                    local_vel_pub.publish(vel_cmd);
                }else{
                    geometry_msgs::TwistStamped stop_cmd;
                    stop_cmd.header.stamp = ros::Time::now();
                    stop_cmd.header.frame_id = "base_footprint";
                    stop_cmd.twist.linear.x = 0.0;
                    stop_cmd.twist.linear.y = 0.0;
                    stop_cmd.twist.linear.z = 0.0;
                    local_vel_pub.publish(stop_cmd);

                    ROS_INFO("向右飞行5米完成，进入悬停状态");
                    flight_state = HOVER_AFTER_RIGHT;
                    state_start_time = ros::Time::now();
                }
                break;
            }
            case HOVER_AFTER_RIGHT:
            {
                if((ros::Time::now() - state_start_time).toSec() > 5.0){
                    ROS_INFO("悬停结束，开始返回起始位置");
                    flight_state = RETURN_TO_START;
                    state_start_time = ros::Time::now();
                }
                else{
                    local_pos_pub.publish(pose);
                }
                break;
            }
            case RETURN_TO_START:
            {
                double delta_x = start_pose.pose.position.x - pose.pose.position.x;
                double delta_y = start_pose.pose.position.y - pose.pose.position.y;

                if(std::abs(delta_x) > 0.1 || std::abs(delta_y) > 0.1){
                    pose.pose.position.x += (delta_x > 0 ? 0.25 : -0.25);
                    pose.pose.position.y += (delta_y > 0 ? 0.25 : -0.25);
                    pose.pose.position.z = takeoff_z;

                    local_pos_pub.publish(pose);
                }
                else{
                    ROS_INFO("返回起始位置完成，进入悬停状态");
                    flight_state = HOVER_AFTER_RETURN;
                    state_start_time = ros::Time::now();
                }
                break;
            }
            case HOVER_AFTER_RETURN:
            {
                if((ros::Time::now() - state_start_time).toSec() > 5.0){
                    ROS_INFO("悬停结束，开始曲线向前飞行");
                    flight_state = FLY_FORWARD_CURVED;
                    state_start_time = ros::Time::now();
                }
                else{
                    local_pos_pub.publish(pose);
                }
                break;
            }
            case FLY_FORWARD_CURVED:
            {
                double t = (ros::Time::now() - state_start_time).toSec();
                double duration = 12.0;

                if(t <= duration){
                    double v_x = 10.0 / duration;

                    double A = 2.0;
                    double omega = 6 * M_PI / duration;

                    double delta_x = v_x / 20.0;
                    double x_target = pose.pose.position.x + delta_x;
                    double y_target = A * sin(omega * t);

                    pose.pose.position.x = x_target;
                    pose.pose.position.y = y_target;

                    pose.pose.position.z = takeoff_z;

                    local_pos_pub.publish(pose);
                }
                else{
                    ROS_INFO("向前曲线飞行结束，进入悬停状态");
                    flight_state = HOVER_AFTER_FORWARD_CURVED;
                    state_start_time = ros::Time::now();
                }
                break;
            }
            case HOVER_AFTER_FORWARD_CURVED:
            {
                if((ros::Time::now() - state_start_time).toSec() > 5.0){
                    ROS_INFO("悬停结束，开始降落");
                    flight_state = LANDING;
                    state_start_time = ros::Time::now();
                    landing_start_time = ros::Time::now();
                }
                else{
                    local_pos_pub.publish(pose);
                }
                break;
            }
            case LANDING:
            {
                geometry_msgs::TwistStamped vel_cmd;
                vel_cmd.header.stamp = ros::Time::now();
                vel_cmd.header.frame_id = "base_footprint";
                vel_cmd.twist.linear.x = 0.0;
                vel_cmd.twist.linear.y = 0.0;
                vel_cmd.twist.linear.z = -0.3;

                local_vel_pub.publish(vel_cmd);

                bool height_condition_met = false;
                if(z_avg <= ground_z + 0.2){
                    if((ros::Time::now() - landing_start_time).toSec() > 3.0){
                        height_condition_met = true;
                    }
                }
                else{
                    landing_start_time = ros::Time::now();
                }

                bool accel_condition_met = false;
                double accel_threshold = 0.1;

                if(z_avg <= ground_z + 0.2){
                    if(std::abs(accel_avg) <= accel_threshold){
                        if(!accel_stable){
                            accel_stable_start_time = ros::Time::now();
                            accel_stable = true;
                        }
                        else{
                            if((ros::Time::now() - accel_stable_start_time).toSec() > 3.0){
                                accel_condition_met = true;
                            }
                        }
                    }
                    else{
                        accel_stable = false;
                    }
                }
                else{
                    accel_stable = false;
                }

                bool vel_condition_met = false;
                double vel_threshold = 0.1;

                if(z_avg <= ground_z + 0.1){
                    if(std::abs(vel_avg) <= vel_threshold){
                        if(!vel_stable){
                            vel_stable_start_time = ros::Time::now();
                            vel_stable = true;
                        }
                        else{
                            if((ros::Time::now() - vel_stable_start_time).toSec() > 3.0){
                                vel_condition_met = true;
                            }
                        }
                    }
                    else{
                        vel_stable = false;
                    }
                }
                else{
                    vel_stable = false;
                }

                if(height_condition_met || accel_condition_met || vel_condition_met){
                    ROS_INFO("降落完成，锁定电机");
                    flight_state = LANDED;
                }

                break;
            }
            case LANDED:
            {
                mavros_msgs::CommandBool disarm_cmd;
                disarm_cmd.request.value = false;

                if(arming_client.call(disarm_cmd) && disarm_cmd.response.success){
                    ROS_INFO("电机已上锁");
                }
                else{
                    ROS_ERROR("电机上锁失败");
                }

                ros::shutdown();
                break;
            }
            default:
                break;
        }

        rate.sleep();
    }

    return 0;
}