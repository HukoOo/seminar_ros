cmake_minimum_required(VERSION 2.8.3)
project(srv_pkg)
find_package(catkin REQUIRED COMPONENTS std_msgs message_generation)

add_message_files(FILES Num.msg)
add_service_files(FILES AddTwoInts.srv)
generate_messages(DEPENDENCIES std_msgs)
catkin_package(CATKIN_DEPENDS rospy message_runtime)

include_directories(${catkin_INCLUDE_DIRS})
