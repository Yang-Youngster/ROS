# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "kr_mav_manager: 0 messages, 5 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(kr_mav_manager_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Vec4.srv" NAME_WE)
add_custom_target(_kr_mav_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kr_mav_manager" "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Vec4.srv" ""
)

get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/GoalTimed.srv" NAME_WE)
add_custom_target(_kr_mav_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kr_mav_manager" "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/GoalTimed.srv" ""
)

get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Circle.srv" NAME_WE)
add_custom_target(_kr_mav_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kr_mav_manager" "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Circle.srv" ""
)

get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Lissajous.srv" NAME_WE)
add_custom_target(_kr_mav_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kr_mav_manager" "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Lissajous.srv" ""
)

get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/CompoundLissajous.srv" NAME_WE)
add_custom_target(_kr_mav_manager_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kr_mav_manager" "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/CompoundLissajous.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Vec4.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kr_mav_manager
)
_generate_srv_cpp(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/GoalTimed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kr_mav_manager
)
_generate_srv_cpp(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Circle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kr_mav_manager
)
_generate_srv_cpp(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Lissajous.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kr_mav_manager
)
_generate_srv_cpp(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/CompoundLissajous.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kr_mav_manager
)

### Generating Module File
_generate_module_cpp(kr_mav_manager
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kr_mav_manager
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(kr_mav_manager_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(kr_mav_manager_generate_messages kr_mav_manager_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Vec4.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_cpp _kr_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/GoalTimed.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_cpp _kr_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Circle.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_cpp _kr_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Lissajous.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_cpp _kr_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/CompoundLissajous.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_cpp _kr_mav_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kr_mav_manager_gencpp)
add_dependencies(kr_mav_manager_gencpp kr_mav_manager_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kr_mav_manager_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Vec4.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kr_mav_manager
)
_generate_srv_eus(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/GoalTimed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kr_mav_manager
)
_generate_srv_eus(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Circle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kr_mav_manager
)
_generate_srv_eus(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Lissajous.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kr_mav_manager
)
_generate_srv_eus(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/CompoundLissajous.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kr_mav_manager
)

### Generating Module File
_generate_module_eus(kr_mav_manager
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kr_mav_manager
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(kr_mav_manager_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(kr_mav_manager_generate_messages kr_mav_manager_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Vec4.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_eus _kr_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/GoalTimed.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_eus _kr_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Circle.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_eus _kr_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Lissajous.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_eus _kr_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/CompoundLissajous.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_eus _kr_mav_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kr_mav_manager_geneus)
add_dependencies(kr_mav_manager_geneus kr_mav_manager_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kr_mav_manager_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Vec4.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kr_mav_manager
)
_generate_srv_lisp(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/GoalTimed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kr_mav_manager
)
_generate_srv_lisp(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Circle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kr_mav_manager
)
_generate_srv_lisp(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Lissajous.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kr_mav_manager
)
_generate_srv_lisp(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/CompoundLissajous.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kr_mav_manager
)

### Generating Module File
_generate_module_lisp(kr_mav_manager
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kr_mav_manager
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(kr_mav_manager_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(kr_mav_manager_generate_messages kr_mav_manager_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Vec4.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_lisp _kr_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/GoalTimed.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_lisp _kr_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Circle.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_lisp _kr_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Lissajous.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_lisp _kr_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/CompoundLissajous.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_lisp _kr_mav_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kr_mav_manager_genlisp)
add_dependencies(kr_mav_manager_genlisp kr_mav_manager_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kr_mav_manager_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Vec4.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kr_mav_manager
)
_generate_srv_nodejs(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/GoalTimed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kr_mav_manager
)
_generate_srv_nodejs(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Circle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kr_mav_manager
)
_generate_srv_nodejs(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Lissajous.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kr_mav_manager
)
_generate_srv_nodejs(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/CompoundLissajous.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kr_mav_manager
)

### Generating Module File
_generate_module_nodejs(kr_mav_manager
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kr_mav_manager
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(kr_mav_manager_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(kr_mav_manager_generate_messages kr_mav_manager_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Vec4.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_nodejs _kr_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/GoalTimed.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_nodejs _kr_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Circle.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_nodejs _kr_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Lissajous.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_nodejs _kr_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/CompoundLissajous.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_nodejs _kr_mav_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kr_mav_manager_gennodejs)
add_dependencies(kr_mav_manager_gennodejs kr_mav_manager_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kr_mav_manager_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Vec4.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_manager
)
_generate_srv_py(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/GoalTimed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_manager
)
_generate_srv_py(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Circle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_manager
)
_generate_srv_py(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Lissajous.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_manager
)
_generate_srv_py(kr_mav_manager
  "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/CompoundLissajous.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_manager
)

### Generating Module File
_generate_module_py(kr_mav_manager
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_manager
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(kr_mav_manager_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(kr_mav_manager_generate_messages kr_mav_manager_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Vec4.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_py _kr_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/GoalTimed.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_py _kr_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Circle.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_py _kr_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/Lissajous.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_py _kr_mav_manager_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/luoyang/文档/GitHub/ROS/test_path/src/kr_mav_manager/srv/CompoundLissajous.srv" NAME_WE)
add_dependencies(kr_mav_manager_generate_messages_py _kr_mav_manager_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kr_mav_manager_genpy)
add_dependencies(kr_mav_manager_genpy kr_mav_manager_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kr_mav_manager_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kr_mav_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kr_mav_manager
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kr_mav_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kr_mav_manager
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kr_mav_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kr_mav_manager
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kr_mav_manager)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kr_mav_manager
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_manager)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_manager\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_manager
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
