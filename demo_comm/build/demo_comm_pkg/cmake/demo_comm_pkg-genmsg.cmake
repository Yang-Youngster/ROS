# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "demo_comm_pkg: 1 messages, 1 services")

set(MSG_I_FLAGS "-Idemo_comm_pkg:/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(demo_comm_pkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/msg/Example.msg" NAME_WE)
add_custom_target(_demo_comm_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "demo_comm_pkg" "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/msg/Example.msg" ""
)

get_filename_component(_filename "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/srv/Server_01.srv" NAME_WE)
add_custom_target(_demo_comm_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "demo_comm_pkg" "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/srv/Server_01.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(demo_comm_pkg
  "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/msg/Example.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo_comm_pkg
)

### Generating Services
_generate_srv_cpp(demo_comm_pkg
  "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/srv/Server_01.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo_comm_pkg
)

### Generating Module File
_generate_module_cpp(demo_comm_pkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo_comm_pkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(demo_comm_pkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(demo_comm_pkg_generate_messages demo_comm_pkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/msg/Example.msg" NAME_WE)
add_dependencies(demo_comm_pkg_generate_messages_cpp _demo_comm_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/srv/Server_01.srv" NAME_WE)
add_dependencies(demo_comm_pkg_generate_messages_cpp _demo_comm_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(demo_comm_pkg_gencpp)
add_dependencies(demo_comm_pkg_gencpp demo_comm_pkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS demo_comm_pkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(demo_comm_pkg
  "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/msg/Example.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/demo_comm_pkg
)

### Generating Services
_generate_srv_eus(demo_comm_pkg
  "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/srv/Server_01.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/demo_comm_pkg
)

### Generating Module File
_generate_module_eus(demo_comm_pkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/demo_comm_pkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(demo_comm_pkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(demo_comm_pkg_generate_messages demo_comm_pkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/msg/Example.msg" NAME_WE)
add_dependencies(demo_comm_pkg_generate_messages_eus _demo_comm_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/srv/Server_01.srv" NAME_WE)
add_dependencies(demo_comm_pkg_generate_messages_eus _demo_comm_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(demo_comm_pkg_geneus)
add_dependencies(demo_comm_pkg_geneus demo_comm_pkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS demo_comm_pkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(demo_comm_pkg
  "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/msg/Example.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo_comm_pkg
)

### Generating Services
_generate_srv_lisp(demo_comm_pkg
  "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/srv/Server_01.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo_comm_pkg
)

### Generating Module File
_generate_module_lisp(demo_comm_pkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo_comm_pkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(demo_comm_pkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(demo_comm_pkg_generate_messages demo_comm_pkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/msg/Example.msg" NAME_WE)
add_dependencies(demo_comm_pkg_generate_messages_lisp _demo_comm_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/srv/Server_01.srv" NAME_WE)
add_dependencies(demo_comm_pkg_generate_messages_lisp _demo_comm_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(demo_comm_pkg_genlisp)
add_dependencies(demo_comm_pkg_genlisp demo_comm_pkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS demo_comm_pkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(demo_comm_pkg
  "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/msg/Example.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/demo_comm_pkg
)

### Generating Services
_generate_srv_nodejs(demo_comm_pkg
  "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/srv/Server_01.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/demo_comm_pkg
)

### Generating Module File
_generate_module_nodejs(demo_comm_pkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/demo_comm_pkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(demo_comm_pkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(demo_comm_pkg_generate_messages demo_comm_pkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/msg/Example.msg" NAME_WE)
add_dependencies(demo_comm_pkg_generate_messages_nodejs _demo_comm_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/srv/Server_01.srv" NAME_WE)
add_dependencies(demo_comm_pkg_generate_messages_nodejs _demo_comm_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(demo_comm_pkg_gennodejs)
add_dependencies(demo_comm_pkg_gennodejs demo_comm_pkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS demo_comm_pkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(demo_comm_pkg
  "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/msg/Example.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo_comm_pkg
)

### Generating Services
_generate_srv_py(demo_comm_pkg
  "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/srv/Server_01.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo_comm_pkg
)

### Generating Module File
_generate_module_py(demo_comm_pkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo_comm_pkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(demo_comm_pkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(demo_comm_pkg_generate_messages demo_comm_pkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/msg/Example.msg" NAME_WE)
add_dependencies(demo_comm_pkg_generate_messages_py _demo_comm_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/桌面/ROS/demo_comm/src/demo_comm_pkg/srv/Server_01.srv" NAME_WE)
add_dependencies(demo_comm_pkg_generate_messages_py _demo_comm_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(demo_comm_pkg_genpy)
add_dependencies(demo_comm_pkg_genpy demo_comm_pkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS demo_comm_pkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo_comm_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/demo_comm_pkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(demo_comm_pkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/demo_comm_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/demo_comm_pkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(demo_comm_pkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo_comm_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/demo_comm_pkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(demo_comm_pkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/demo_comm_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/demo_comm_pkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(demo_comm_pkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo_comm_pkg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo_comm_pkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/demo_comm_pkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(demo_comm_pkg_generate_messages_py std_msgs_generate_messages_py)
endif()
