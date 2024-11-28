# Install script for directory: /home/luoyang/文档/GitHub/ROS/test_path/src/trackers/kr_tracker_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/luoyang/文档/GitHub/ROS/test_path/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kr_tracker_msgs/srv" TYPE FILE FILES "/home/luoyang/文档/GitHub/ROS/test_path/src/trackers/kr_tracker_msgs/srv/Transition.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kr_tracker_msgs/action" TYPE FILE FILES
    "/home/luoyang/文档/GitHub/ROS/test_path/src/trackers/kr_tracker_msgs/action/LineTracker.action"
    "/home/luoyang/文档/GitHub/ROS/test_path/src/trackers/kr_tracker_msgs/action/VelocityTracker.action"
    "/home/luoyang/文档/GitHub/ROS/test_path/src/trackers/kr_tracker_msgs/action/CircleTracker.action"
    "/home/luoyang/文档/GitHub/ROS/test_path/src/trackers/kr_tracker_msgs/action/TrajectoryTracker.action"
    "/home/luoyang/文档/GitHub/ROS/test_path/src/trackers/kr_tracker_msgs/action/LissajousTracker.action"
    "/home/luoyang/文档/GitHub/ROS/test_path/src/trackers/kr_tracker_msgs/action/LissajousAdder.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kr_tracker_msgs/msg" TYPE FILE FILES
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/LineTrackerAction.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/LineTrackerActionGoal.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/LineTrackerActionResult.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/LineTrackerActionFeedback.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/LineTrackerGoal.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/LineTrackerResult.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/LineTrackerFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kr_tracker_msgs/msg" TYPE FILE FILES
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/VelocityTrackerAction.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/VelocityTrackerActionGoal.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/VelocityTrackerActionResult.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/VelocityTrackerActionFeedback.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/VelocityTrackerGoal.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/VelocityTrackerResult.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/VelocityTrackerFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kr_tracker_msgs/msg" TYPE FILE FILES
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/CircleTrackerAction.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/CircleTrackerActionGoal.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/CircleTrackerActionResult.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/CircleTrackerActionFeedback.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/CircleTrackerGoal.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/CircleTrackerResult.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/CircleTrackerFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kr_tracker_msgs/msg" TYPE FILE FILES
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/TrajectoryTrackerAction.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/TrajectoryTrackerActionGoal.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/TrajectoryTrackerActionResult.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/TrajectoryTrackerActionFeedback.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/TrajectoryTrackerGoal.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/TrajectoryTrackerResult.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/TrajectoryTrackerFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kr_tracker_msgs/msg" TYPE FILE FILES
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/LissajousTrackerAction.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/LissajousTrackerActionGoal.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/LissajousTrackerActionResult.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/LissajousTrackerActionFeedback.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/LissajousTrackerGoal.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/LissajousTrackerResult.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/LissajousTrackerFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kr_tracker_msgs/msg" TYPE FILE FILES
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/LissajousAdderAction.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/LissajousAdderActionGoal.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/LissajousAdderActionResult.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/LissajousAdderActionFeedback.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/LissajousAdderGoal.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/LissajousAdderResult.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/kr_tracker_msgs/msg/LissajousAdderFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kr_tracker_msgs/msg" TYPE FILE FILES
    "/home/luoyang/文档/GitHub/ROS/test_path/src/trackers/kr_tracker_msgs/msg/TrackerStatus.msg"
    "/home/luoyang/文档/GitHub/ROS/test_path/src/trackers/kr_tracker_msgs/msg/VelocityGoal.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kr_tracker_msgs/cmake" TYPE FILE FILES "/home/luoyang/文档/GitHub/ROS/test_path/build/trackers/kr_tracker_msgs/catkin_generated/installspace/kr_tracker_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/luoyang/文档/GitHub/ROS/test_path/devel/include/kr_tracker_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/roseus/ros/kr_tracker_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/common-lisp/ros/kr_tracker_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/luoyang/文档/GitHub/ROS/test_path/devel/share/gennodejs/ros/kr_tracker_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/luoyang/文档/GitHub/ROS/test_path/devel/lib/python3/dist-packages/kr_tracker_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/luoyang/文档/GitHub/ROS/test_path/devel/lib/python3/dist-packages/kr_tracker_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/luoyang/文档/GitHub/ROS/test_path/build/trackers/kr_tracker_msgs/catkin_generated/installspace/kr_tracker_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kr_tracker_msgs/cmake" TYPE FILE FILES "/home/luoyang/文档/GitHub/ROS/test_path/build/trackers/kr_tracker_msgs/catkin_generated/installspace/kr_tracker_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kr_tracker_msgs/cmake" TYPE FILE FILES
    "/home/luoyang/文档/GitHub/ROS/test_path/build/trackers/kr_tracker_msgs/catkin_generated/installspace/kr_tracker_msgsConfig.cmake"
    "/home/luoyang/文档/GitHub/ROS/test_path/build/trackers/kr_tracker_msgs/catkin_generated/installspace/kr_tracker_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kr_tracker_msgs" TYPE FILE FILES "/home/luoyang/文档/GitHub/ROS/test_path/src/trackers/kr_tracker_msgs/package.xml")
endif()

