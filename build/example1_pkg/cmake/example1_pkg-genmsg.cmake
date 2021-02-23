# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "example1_pkg: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iexample1_pkg:/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(example1_pkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/Dummy.msg" NAME_WE)
add_custom_target(_example1_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "example1_pkg" "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/Dummy.msg" ""
)

get_filename_component(_filename "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/answer.msg" NAME_WE)
add_custom_target(_example1_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "example1_pkg" "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/answer.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(example1_pkg
  "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/Dummy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/example1_pkg
)
_generate_msg_cpp(example1_pkg
  "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/answer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/example1_pkg
)

### Generating Services

### Generating Module File
_generate_module_cpp(example1_pkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/example1_pkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(example1_pkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(example1_pkg_generate_messages example1_pkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/Dummy.msg" NAME_WE)
add_dependencies(example1_pkg_generate_messages_cpp _example1_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/answer.msg" NAME_WE)
add_dependencies(example1_pkg_generate_messages_cpp _example1_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(example1_pkg_gencpp)
add_dependencies(example1_pkg_gencpp example1_pkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS example1_pkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(example1_pkg
  "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/Dummy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/example1_pkg
)
_generate_msg_eus(example1_pkg
  "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/answer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/example1_pkg
)

### Generating Services

### Generating Module File
_generate_module_eus(example1_pkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/example1_pkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(example1_pkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(example1_pkg_generate_messages example1_pkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/Dummy.msg" NAME_WE)
add_dependencies(example1_pkg_generate_messages_eus _example1_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/answer.msg" NAME_WE)
add_dependencies(example1_pkg_generate_messages_eus _example1_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(example1_pkg_geneus)
add_dependencies(example1_pkg_geneus example1_pkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS example1_pkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(example1_pkg
  "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/Dummy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/example1_pkg
)
_generate_msg_lisp(example1_pkg
  "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/answer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/example1_pkg
)

### Generating Services

### Generating Module File
_generate_module_lisp(example1_pkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/example1_pkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(example1_pkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(example1_pkg_generate_messages example1_pkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/Dummy.msg" NAME_WE)
add_dependencies(example1_pkg_generate_messages_lisp _example1_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/answer.msg" NAME_WE)
add_dependencies(example1_pkg_generate_messages_lisp _example1_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(example1_pkg_genlisp)
add_dependencies(example1_pkg_genlisp example1_pkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS example1_pkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(example1_pkg
  "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/Dummy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/example1_pkg
)
_generate_msg_nodejs(example1_pkg
  "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/answer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/example1_pkg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(example1_pkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/example1_pkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(example1_pkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(example1_pkg_generate_messages example1_pkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/Dummy.msg" NAME_WE)
add_dependencies(example1_pkg_generate_messages_nodejs _example1_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/answer.msg" NAME_WE)
add_dependencies(example1_pkg_generate_messages_nodejs _example1_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(example1_pkg_gennodejs)
add_dependencies(example1_pkg_gennodejs example1_pkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS example1_pkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(example1_pkg
  "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/Dummy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/example1_pkg
)
_generate_msg_py(example1_pkg
  "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/answer.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/example1_pkg
)

### Generating Services

### Generating Module File
_generate_module_py(example1_pkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/example1_pkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(example1_pkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(example1_pkg_generate_messages example1_pkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/Dummy.msg" NAME_WE)
add_dependencies(example1_pkg_generate_messages_py _example1_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mert/Desktop/example_1/Mert/src/example1_pkg/msg/answer.msg" NAME_WE)
add_dependencies(example1_pkg_generate_messages_py _example1_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(example1_pkg_genpy)
add_dependencies(example1_pkg_genpy example1_pkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS example1_pkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/example1_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/example1_pkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(example1_pkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/example1_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/example1_pkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(example1_pkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/example1_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/example1_pkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(example1_pkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/example1_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/example1_pkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(example1_pkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/example1_pkg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/example1_pkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/example1_pkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(example1_pkg_generate_messages_py std_msgs_generate_messages_py)
endif()
