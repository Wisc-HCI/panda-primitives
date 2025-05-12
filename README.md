# Panda Primitives

This is ros package that used to define Primitives (i.e. skills) for the Franka Emika Panda 7-DOF Robot that can be chained together to complete more complex tasks.

## Prerequisites
For Simulation you will need:
* Ubuntu machine with:
    * [Docker Engine](https://docs.docker.com/engine/install/).
    * A ROS Workspace with this package clone under `src/`.
    * The following ROS packages also cloned under `src/` in your ROS workspace:
        * [panda_ros](https://github.com/Wisc-HCI/panda_ros)
        * [PandController](https://github.com/Wisc-HCI/PandaController)
        * [panda_ros_msgs](https://github.com/emmanuel-senft/panda-ros-msgs/tree/study)
        * [authoring_msgs](https://github.com/emmanuel-senft/authoring-msgs/tree/study)
        * [rviz_camera_stream](https://github.com/lucasw/rviz_camera_stream)
        * [ros_numpy](https://github.com/eric-wieser/ros_numpy)

        
For Running on the Panda, you will need:
* Above requirements.
* Franka Emika Panda 7 DOF Robot setup with the [FCI](https://frankaemika.github.io/docs/getting_started.html) and set to static IP of 192.168.1.XXX (Ex/ 192.168.1.3) and Netmask to 255.255.255.0.
    * Robot system version: 4.2.X (FER pandas)
    * Robot / Gripper Server version: 5 / 3
* [Axio80-M20 Force Torque Sensor](https://www.ati-ia.com/products/ft/ft_models.aspx?id=Axia80-M20) installed on the Panda's End Effector and connected to the host computer via ethernet with IP 192.168.2.2 (or change the IP in src/PandaController/src/ForceTorqueListener.cpp).
* The following added to the Ubuntu Machine:
    * The [Realtime Kernel Patch Kernel Patch](https://frankaemika.github.io/docs/installation_linux.html#setting-up-the-real-time-kernel) added to the Ubuntu Machine.
    * Static IP of 192.168.1.XXX (Ex/ 192.168.1.5) and Netmask of 255.255.255.0 for the ethernet connected to the Panda. The ethernet connected to the Force Torque sensor needs to be set to a static IP of 192.168.2.XXX (Ex/ 192.168.2.5).


## Setup
Make sure you run these commands in the root of your ROS Workspace (above `src/`)

First set up display forwarding:
```bash
xhost +local:
```

Now  build the container image and start the container. These commands mount on the current directory as the containers file system so any changes you make to the files on your host machine will be mirrored in the container. These commands also allow the containers display to be forwarded to your host machine so that you can see it.
```bash
sudo docker build -f src/panda-primitives/Dockerfile -t panda-prim .

sudo docker run --rm -it --privileged --cap-add=SYS_NICE --env DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $(pwd):/workspace --net=host panda-prim
```

You should now be in the docker container. 

Now compile C++ package (PandaController)
```bash
cd src/PandaController/
mkdir -p build
cd build
[ -f Makefile ] || cmake ..  # Only initialize if not  already
make install
cd ../../..
``` 

Now build the ROS packages:
```bash
catkin build
source devel/setup.bash
```

## Running

1. [SKIP FOR SIMULATION] Start the robot controller:
    ```bash
    export PANDA_IP=192.168.1.3 # REPLACE with your panda's IP
    roslaunch controller mover.launch`
    ```

2. Run one of the following:
    * [SIMULATION] `roslaunch panda-primitives all.launch only_virtual:=true`
    * [ON ROBOT] `roslaunch panda-primitives all.launch`

3. In a seperate terminal (still in your docker container), run:
    ```bash
    source devel/setup.bash
    rosrun panda-primitives test_twist.py
    ```

    You can also run any other scripts in the panda-primitives/test folder in this same manner.

---

## Tips and Tricks:
* To view transforms:
`rosrun rqt_tf_tree rqt_tf_tree`

* To open multiple another terminal to you docker container, first run the following on your local machine:
    ```bash
    sudo docker ps
    ```
    This will give you a list of containers with container IDs. Then run the following with your container ID:
    ```bash
    sudo docker exec -it YOUR_CONTAINER_ID bash
    ```
    Now run the following in your newly opened terminal to source the workspace.
    ```bash
    source devel/setup.bash
    ```  