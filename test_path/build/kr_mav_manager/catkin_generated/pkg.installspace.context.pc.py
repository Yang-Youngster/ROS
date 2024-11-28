# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include/eigen3".split(';') if "${prefix}/include;/usr/include/eigen3" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;std_msgs;nav_msgs;sensor_msgs;geometry_msgs;quadrotor_msgs;kr_tracker_msgs;message_runtime".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lkr_mav_manager".split(';') if "-lkr_mav_manager" != "" else []
PROJECT_NAME = "kr_mav_manager"
PROJECT_SPACE_DIR = "/home/luoyang/文档/GitHub/ROS/test_path/install"
PROJECT_VERSION = "1.0.0"
