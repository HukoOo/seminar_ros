# This is an auto generated Dockerfile for ros:ros-core
# generated from docker_images/create_ros_core_image.Dockerfile.em
FROM nicky707/seminar:latest

# clone ros package repo
ENV ROS_WS /opt/ros_ws
RUN mkdir -p $ROS_WS/src
WORKDIR $ROS_WS
RUN git -C src clone \
      https://github.com/HukoOo/seminar_ros.git

# build ros package source
RUN /bin/bash -c "bash /ros_entrypoint.sh && catkin_make"

# run ros package launch file
CMD ["roslaunch", "topic_pkg", "talker_listener.launch"]
