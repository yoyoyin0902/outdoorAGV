# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "AnhungControl: 6 messages, 0 services")

set(MSG_I_FLAGS "-IAnhungControl:/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(AnhungControl_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Battery.msg" NAME_WE)
add_custom_target(_AnhungControl_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "AnhungControl" "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Battery.msg" ""
)

get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/setmap_ctr.msg" NAME_WE)
add_custom_target(_AnhungControl_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "AnhungControl" "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/setmap_ctr.msg" ""
)

get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Node_recv.msg" NAME_WE)
add_custom_target(_AnhungControl_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "AnhungControl" "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Node_recv.msg" ""
)

get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/traffic_recv.msg" NAME_WE)
add_custom_target(_AnhungControl_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "AnhungControl" "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/traffic_recv.msg" ""
)

get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/joystick.msg" NAME_WE)
add_custom_target(_AnhungControl_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "AnhungControl" "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/joystick.msg" ""
)

get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/state.msg" NAME_WE)
add_custom_target(_AnhungControl_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "AnhungControl" "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/state.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/AnhungControl
)
_generate_msg_cpp(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/setmap_ctr.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/AnhungControl
)
_generate_msg_cpp(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/AnhungControl
)
_generate_msg_cpp(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Node_recv.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/AnhungControl
)
_generate_msg_cpp(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/traffic_recv.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/AnhungControl
)
_generate_msg_cpp(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/AnhungControl
)

### Generating Services

### Generating Module File
_generate_module_cpp(AnhungControl
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/AnhungControl
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(AnhungControl_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(AnhungControl_generate_messages AnhungControl_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Battery.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_cpp _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/setmap_ctr.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_cpp _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Node_recv.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_cpp _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/traffic_recv.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_cpp _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/joystick.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_cpp _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/state.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_cpp _AnhungControl_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(AnhungControl_gencpp)
add_dependencies(AnhungControl_gencpp AnhungControl_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS AnhungControl_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/AnhungControl
)
_generate_msg_eus(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/setmap_ctr.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/AnhungControl
)
_generate_msg_eus(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/AnhungControl
)
_generate_msg_eus(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Node_recv.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/AnhungControl
)
_generate_msg_eus(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/traffic_recv.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/AnhungControl
)
_generate_msg_eus(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/AnhungControl
)

### Generating Services

### Generating Module File
_generate_module_eus(AnhungControl
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/AnhungControl
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(AnhungControl_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(AnhungControl_generate_messages AnhungControl_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Battery.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_eus _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/setmap_ctr.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_eus _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Node_recv.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_eus _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/traffic_recv.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_eus _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/joystick.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_eus _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/state.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_eus _AnhungControl_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(AnhungControl_geneus)
add_dependencies(AnhungControl_geneus AnhungControl_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS AnhungControl_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/AnhungControl
)
_generate_msg_lisp(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/setmap_ctr.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/AnhungControl
)
_generate_msg_lisp(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/AnhungControl
)
_generate_msg_lisp(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Node_recv.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/AnhungControl
)
_generate_msg_lisp(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/traffic_recv.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/AnhungControl
)
_generate_msg_lisp(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/AnhungControl
)

### Generating Services

### Generating Module File
_generate_module_lisp(AnhungControl
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/AnhungControl
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(AnhungControl_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(AnhungControl_generate_messages AnhungControl_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Battery.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_lisp _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/setmap_ctr.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_lisp _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Node_recv.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_lisp _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/traffic_recv.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_lisp _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/joystick.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_lisp _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/state.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_lisp _AnhungControl_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(AnhungControl_genlisp)
add_dependencies(AnhungControl_genlisp AnhungControl_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS AnhungControl_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/AnhungControl
)
_generate_msg_nodejs(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/setmap_ctr.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/AnhungControl
)
_generate_msg_nodejs(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/AnhungControl
)
_generate_msg_nodejs(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Node_recv.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/AnhungControl
)
_generate_msg_nodejs(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/traffic_recv.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/AnhungControl
)
_generate_msg_nodejs(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/AnhungControl
)

### Generating Services

### Generating Module File
_generate_module_nodejs(AnhungControl
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/AnhungControl
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(AnhungControl_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(AnhungControl_generate_messages AnhungControl_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Battery.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_nodejs _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/setmap_ctr.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_nodejs _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Node_recv.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_nodejs _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/traffic_recv.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_nodejs _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/joystick.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_nodejs _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/state.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_nodejs _AnhungControl_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(AnhungControl_gennodejs)
add_dependencies(AnhungControl_gennodejs AnhungControl_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS AnhungControl_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/AnhungControl
)
_generate_msg_py(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/setmap_ctr.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/AnhungControl
)
_generate_msg_py(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/AnhungControl
)
_generate_msg_py(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Node_recv.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/AnhungControl
)
_generate_msg_py(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/traffic_recv.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/AnhungControl
)
_generate_msg_py(AnhungControl
  "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/AnhungControl
)

### Generating Services

### Generating Module File
_generate_module_py(AnhungControl
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/AnhungControl
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(AnhungControl_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(AnhungControl_generate_messages AnhungControl_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Battery.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_py _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/setmap_ctr.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_py _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/Node_recv.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_py _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/traffic_recv.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_py _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/joystick.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_py _AnhungControl_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amy/Desktop/outdoorAGV/src/AnhungControl/msg/state.msg" NAME_WE)
add_dependencies(AnhungControl_generate_messages_py _AnhungControl_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(AnhungControl_genpy)
add_dependencies(AnhungControl_genpy AnhungControl_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS AnhungControl_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/AnhungControl)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/AnhungControl
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(AnhungControl_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/AnhungControl)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/AnhungControl
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(AnhungControl_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/AnhungControl)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/AnhungControl
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(AnhungControl_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/AnhungControl)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/AnhungControl
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(AnhungControl_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/AnhungControl)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/AnhungControl\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/AnhungControl
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(AnhungControl_generate_messages_py std_msgs_generate_messages_py)
endif()
