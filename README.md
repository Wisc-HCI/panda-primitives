# Panda Primitives

This work aims to define Primitives (i.e. skills) for the Franka Emika Panda 7-DOF Robot that can be chained together to complete more complex tasks.

## Prerequisites
You will need:
* For Simulation:
    * Ubuntu machine
    * [Docker Engine](https://docs.docker.com/engine/install/).
* For Running on Hardware:
    * Above requirements.
    * Franka Emika Panda Robotic arm with a Force Torque Sensor. Reference  [panda-primitives-control](https://github.com/wisc-HCI/panda-primitives-control) for the specifics
    * The control layer of the robot: [panda-primitives-control](https://github.com/wisc-HCI/panda-primitives-control).



## Setup

First set up display forwarding:
```bash
xhost +local:
```
Now  build the container image and start the container. Make sure you are in this root directory (NIST_Benchmark). These commands mount on the current directory as the containers file system so any changes you make to the files on your host machine will be mirrored in the container. These commands also allow the containers display to be forwarded to your host machine so that you can see it.
```bash
sudo docker build -t panda-prim .

# Start the container with real-time kernel privileges, mount onto the current directory, and allow display forwarding. Container is removed once it exits.
sudo docker run --rm -it --privileged --cap-add=SYS_NICE --env DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $(pwd):/workspace --net=host panda-prim
```

Now build the repo
```bash
catkin build authoring
source devel/setup.bash
```

## Running

### Starting the robot controller for simulation use only
- `roslaunch authoring all.launch only_virtual:=true`
