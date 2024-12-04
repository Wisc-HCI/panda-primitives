# Setup 

The following instructions are for setting up FCI control on the Franka Emika Robot (FER) Panda using libfranka and franka_ros. These instructions allow you to launch a container so that you don't have to face most of the pain and suffering we went through in the installation process. However, if you want to control the physical Panda (versus just simulating it), you will still nee to install a Real-Time kernel patch (required by libfranka) on your host computer because containers share the host's machines kernel.

<span style="color:red"> **Note: You only have to do steps 1-2 once, the first time you are setting up this repo to work with your Panda. Steps 3-4 you have to do EVERY time you want to work with the robot if your container has shut down.**</span>



### 1. Prequisites

Here is what you need to start with:
* Robot system version: 4.2.2 (FER pandas)
* Robot / Gripper Server version: 5/3
* Ubuntu version: 20.04.06 Focal Fossil (any 20.04 version should work fine)

2. Setting Up Your Container
<span style="color:red"> **The previous steps, you only have to do one time. The following steps, you need to do everytime you want to work with the robot if your container has shut down.** </span>


First set up display forwarding:
```bash
xhost +local:
```
Now  build the container image and start the container. Make sure you are in this root directory (NIST_Benchmark). These commands mount on the current directory as the containers file system so any changes you make to the files on your host machine will be mirrored in the container. These commands also allow the containers display to be forwarded to your host machine so that you can see it.
```bash
sudo docker build -t panda-prim-container .

# Start the container with real-time kernel privileges, mount onto the current directory, and allow display forwarding. Container is removed once it exits.
sudo docker run --rm -it --privileged --cap-add=SYS_NICE --env DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $(pwd):/workspace --net=host panda-prim-container
```


---

###  Notes
* If there is an error with `catkin build` about configuration differences of symlink, run `catkin clean -y` and then rebuild. That should fix the issues.

* If you make changes in any of the src C/C++ files, you'll need to run:

    ```bash
    catkin build
    source devel/setup.sh
    ```
* Opening a new docker terminal:
    ```bash
    docker ps  # This will show you running containers w/ their ID
    docker exec -it <CONTAINER_ID> bash  # This will open the container's terminal
    source devel/setup.bash  # Run this in the container's terminal
    ```

* If you ever change  /src/relaxed_ik_ros1/relaxed_ik_core (which you probably should not be doing), you will need to go into that directory and recompile it with `cargo build`

* If you make changes to libfranka (which you probably should not be doing), you'll need to run:
    ``` bash
    cd libfranka/build  # May need to use other command to get to this directory
    rm -r * # For cleaning the cache to avoid errors of builds on different machines
    cmake -DBUILD_TESTS=OFF .. 
    cmake --build .
    cpack -G DEB
    sudo dpkg -i libfranka-0.9.2-x86_64.deb
    ```
