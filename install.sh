#!/bin/bash
sudo apt update
sudo apt install libasio-dev

# Install project's dependencies 
sudo apt install ros-foxy-cv-bridge ros-foxy-camera-calibration-parsers
sudo apt install python3-colcon-common-extensions
sudo apt install python3-pip
pip3 install transformations==2018.9.5
sudo apt install gazebo11 libgazebo11 libgazebo11-dev
sudo apt install ros-foxy-gazebo-ros-pkgs ros-foxy-cv-bridge

# Install ros project
mkdir -p ~/tello_ros_ws/src
cd ~/tello_ros_ws/src
git clone https://github.com/KiloNovemberDelta/tello_ros.git
git clone https://github.com/ptrmu/ros2_shared.git
cd ..
source /opt/ros/foxy/setup.bash
# If you didn't intall Gazebo, skip tello_gazebo while building:
colcon build --event-handlers console_direct+
