#!/bin/bash

sudo apt update -y
sudo apt upgrade -y 
#sudo apt --only-upgrade install ros-galactic-gazebo-ros-pkgs -y
sudo apt -y install libasio-dev


# Install project's dependencies 

sudo apt -y install ros-galactic-cv-bridge ros-galactic-camera-calibration-parsers
sudo apt -y install python3-colcon-common-extensions
sudo apt -y install python3-pip
pip3 install transformations==2018.9.5
sudo apt -y install gazebo11 libgazebo11 libgazebo11-dev
sudo apt -y install ros-galactic-gazebo-ros-pkgs ros-galactic-cv-bridge


# Install opencv 

pip3 install opencv-contrib-python


# Install ros project

mkdir -p ~/tello_ros_ws/src
cd ~/tello_ros_ws/src
git clone https://github.com/KiloNovemberDelta/tello_ros.git -b galactic
git clone https://github.com/ptrmu/ros2_shared.git
cd ..
source /opt/ros/galactic/setup.bash

# If you didn't intall Gazebo, skip tello_gazebo while building:

colcon build --event-handlers console_direct+
