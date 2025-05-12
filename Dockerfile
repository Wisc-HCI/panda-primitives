# Use an official Ubuntu 20.04 LTS as a parent image
FROM osrf/ros:noetic-desktop-full

# Set noninteractive to avoid prompts during the build
ARG DEBIAN_FRONTEND=noninteractive

# Update apt package list and install general packages
RUN apt-get update && \
    apt-get install -y --fix-missing \
    curl \
    wget \
    nano \
    build-essential \
    cmake \
    libeigen3-dev \
    python3-catkin-tools \
    python3-pip \
    ros-noetic-libfranka \
    ros-noetic-franka-ros \
    ros-noetic-urdfdom-py \
    ros-noetic-kdl-parser-py \
    ros-noetic-kdl-conversions \
    usbutils



# Install python packages
RUN pip install websockets\
    scipy

# Install rosdep updates
COPY . /workspace
WORKDIR /workspace/


# Set the default command to execute
CMD ["bash"]



