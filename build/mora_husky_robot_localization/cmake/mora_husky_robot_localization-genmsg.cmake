# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mora_husky_robot_localization: 0 messages, 2 services")

set(MSG_I_FLAGS "-Igeographic_msgs:/opt/ros/indigo/share/geographic_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Iuuid_msgs:/opt/ros/indigo/share/uuid_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mora_husky_robot_localization_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/uadmin/roslab/src/mora_husky_robot_localization/srv/SetPose.srv" NAME_WE)
add_custom_target(_mora_husky_robot_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mora_husky_robot_localization" "/home/uadmin/roslab/src/mora_husky_robot_localization/srv/SetPose.srv" "geometry_msgs/Point:geometry_msgs/PoseWithCovariance:geometry_msgs/PoseWithCovarianceStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/uadmin/roslab/src/mora_husky_robot_localization/srv/SetDatum.srv" NAME_WE)
add_custom_target(_mora_husky_robot_localization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mora_husky_robot_localization" "/home/uadmin/roslab/src/mora_husky_robot_localization/srv/SetDatum.srv" "geographic_msgs/GeoPose:geometry_msgs/Quaternion:geographic_msgs/GeoPoint"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(mora_husky_robot_localization
  "/home/uadmin/roslab/src/mora_husky_robot_localization/srv/SetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mora_husky_robot_localization
)
_generate_srv_cpp(mora_husky_robot_localization
  "/home/uadmin/roslab/src/mora_husky_robot_localization/srv/SetDatum.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geographic_msgs/cmake/../msg/GeoPose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mora_husky_robot_localization
)

### Generating Module File
_generate_module_cpp(mora_husky_robot_localization
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mora_husky_robot_localization
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mora_husky_robot_localization_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mora_husky_robot_localization_generate_messages mora_husky_robot_localization_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/uadmin/roslab/src/mora_husky_robot_localization/srv/SetPose.srv" NAME_WE)
add_dependencies(mora_husky_robot_localization_generate_messages_cpp _mora_husky_robot_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uadmin/roslab/src/mora_husky_robot_localization/srv/SetDatum.srv" NAME_WE)
add_dependencies(mora_husky_robot_localization_generate_messages_cpp _mora_husky_robot_localization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mora_husky_robot_localization_gencpp)
add_dependencies(mora_husky_robot_localization_gencpp mora_husky_robot_localization_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mora_husky_robot_localization_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(mora_husky_robot_localization
  "/home/uadmin/roslab/src/mora_husky_robot_localization/srv/SetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mora_husky_robot_localization
)
_generate_srv_lisp(mora_husky_robot_localization
  "/home/uadmin/roslab/src/mora_husky_robot_localization/srv/SetDatum.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geographic_msgs/cmake/../msg/GeoPose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mora_husky_robot_localization
)

### Generating Module File
_generate_module_lisp(mora_husky_robot_localization
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mora_husky_robot_localization
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mora_husky_robot_localization_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mora_husky_robot_localization_generate_messages mora_husky_robot_localization_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/uadmin/roslab/src/mora_husky_robot_localization/srv/SetPose.srv" NAME_WE)
add_dependencies(mora_husky_robot_localization_generate_messages_lisp _mora_husky_robot_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uadmin/roslab/src/mora_husky_robot_localization/srv/SetDatum.srv" NAME_WE)
add_dependencies(mora_husky_robot_localization_generate_messages_lisp _mora_husky_robot_localization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mora_husky_robot_localization_genlisp)
add_dependencies(mora_husky_robot_localization_genlisp mora_husky_robot_localization_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mora_husky_robot_localization_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(mora_husky_robot_localization
  "/home/uadmin/roslab/src/mora_husky_robot_localization/srv/SetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mora_husky_robot_localization
)
_generate_srv_py(mora_husky_robot_localization
  "/home/uadmin/roslab/src/mora_husky_robot_localization/srv/SetDatum.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geographic_msgs/cmake/../msg/GeoPose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geographic_msgs/cmake/../msg/GeoPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mora_husky_robot_localization
)

### Generating Module File
_generate_module_py(mora_husky_robot_localization
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mora_husky_robot_localization
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mora_husky_robot_localization_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mora_husky_robot_localization_generate_messages mora_husky_robot_localization_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/uadmin/roslab/src/mora_husky_robot_localization/srv/SetPose.srv" NAME_WE)
add_dependencies(mora_husky_robot_localization_generate_messages_py _mora_husky_robot_localization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uadmin/roslab/src/mora_husky_robot_localization/srv/SetDatum.srv" NAME_WE)
add_dependencies(mora_husky_robot_localization_generate_messages_py _mora_husky_robot_localization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mora_husky_robot_localization_genpy)
add_dependencies(mora_husky_robot_localization_genpy mora_husky_robot_localization_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mora_husky_robot_localization_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mora_husky_robot_localization)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mora_husky_robot_localization
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geographic_msgs_generate_messages_cpp)
  add_dependencies(mora_husky_robot_localization_generate_messages_cpp geographic_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(mora_husky_robot_localization_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mora_husky_robot_localization_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mora_husky_robot_localization)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mora_husky_robot_localization
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geographic_msgs_generate_messages_lisp)
  add_dependencies(mora_husky_robot_localization_generate_messages_lisp geographic_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(mora_husky_robot_localization_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mora_husky_robot_localization_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mora_husky_robot_localization)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mora_husky_robot_localization\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mora_husky_robot_localization
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geographic_msgs_generate_messages_py)
  add_dependencies(mora_husky_robot_localization_generate_messages_py geographic_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(mora_husky_robot_localization_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mora_husky_robot_localization_generate_messages_py std_msgs_generate_messages_py)
endif()
