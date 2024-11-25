#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <geometry_msgs/Point.h>
#include <vector>

// 定义圆形轨迹结构体
struct CircularTrajectory {
    double radius;
    double center_x;
    double center_y;
    double center_z;
};

// 定义圆周率常量
const double PI = 3.141592653589793;


// 函数：生成圆形轨迹点
std::vector<geometry_msgs::Point> generateCircularTrajectoryPoints(const CircularTrajectory& circularTrajectory, int numPoints) {
    std::vector<geometry_msgs::Point> trajectoryPoints;

    for (int i = 0; i < numPoints; ++i) {
        geometry_msgs::Point point;
        double angle = 2 * PI * i / numPoints;

        point.x = circularTrajectory.center_x + circularTrajectory.radius * cos(angle);
        point.y = circularTrajectory.center_y + circularTrajectory.radius * cos(angle);
        point.z = circularTrajectory.center_z;

        trajectoryPoints.push_back(point);
    }

    return trajectoryPoints;
}
// 函数：发布圆形轨迹到rviz
void publishCircularTrajectoryToRviz(const std::vector<geometry_msgs::Point>& trajectoryPoints, ros::Publisher& marker_publisher) {
    visualization_msgs::Marker marker;
    marker.header.frame_id = "map";
    marker.header.stamp = ros::Time::now();
    marker.ns = "circular_trajectory_marker";
    marker.id = 0;
    marker.type = visualization_msgs::Marker::LINE_STRIP;
    marker.action = visualization_msgs::Marker::ADD;

    marker.scale.x = 0.1;
    marker.scale.y = 0.1;
    marker.scale.z = 0.1;

    marker.color.r = 0.0;
    marker.color.g = 1.0;
    marker.color.b = 0.0;
    marker.color.a = 1.0;

    marker.pose.orientation.w = 1.0;
    marker.pose.orientation.x = 0.0;
    marker.pose.orientation.y = 0.0;
    marker.pose.orientation.z = 0.0;



    for (const auto& point : trajectoryPoints) {
        marker.points.push_back(point);
        ROS_INFO("轨迹点： x: %f, y: %f", point.x, point.y);
    }

    marker_publisher.publish(marker);
}
int main(int argc, char** argv) {
    
    ros::init(argc, argv, "circular_trajectory_publisher");
    setlocale(LC_ALL, "");
    ros::NodeHandle nh;


    ros::Rate rate(20.0);
    // 创建一个发布者，用于发布圆形轨迹标记到rviz
       ros::Publisher trajectory_publisher = nh.advertise<visualization_msgs::Marker>("trajectory_publisher", 10);

    // 定义圆形轨迹参数
    CircularTrajectory circularTrajectory;
    circularTrajectory.radius = 2.0; // 半径
    circularTrajectory.center_x = 0.0;
    circularTrajectory.center_y = 0.0;
    circularTrajectory.center_z = 0.0;

    // 生成圆形轨迹点
    int numPoints = 500;

    std::vector<geometry_msgs::Point> trajectoryPoints = generateCircularTrajectoryPoints(circularTrajectory, numPoints);

     while(ros::ok()){
         // 发布圆形轨迹到rviz
        publishCircularTrajectoryToRviz(trajectoryPoints, trajectory_publisher); 
        ros::spinOnce();
        ros::Duration(0.15).sleep();
     }
    
    return 0;
}
