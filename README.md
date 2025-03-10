# Panda Primitives

This work aims to define Primitives (i.e. skills) for the Franka Emika Panda 7-DOF Robot that can be chained together to complete more complex tasks.

## Prerequisites
You will need:
* For Simulation:
    * Ubuntu machine
    * [Docker Engine](https://docs.docker.com/engine/install/).
* For Running on the Panda:
    * Above requirements.
    * Franka Emika Panda Robotic arm with a Force Torque Sensor. Reference  [panda-primitives-control](https://github.com/wisc-HCI/panda-primitives-control) for the specifics
    * The control layer of the robot: [panda-primitives-control](https://github.com/wisc-HCI/panda-primitives-control).



## Setup
1. Bring in the submodules:
    ```bash
    git submodule update --init --recursive
    ```

2. [SKIP FOR SIMULATION] Setup up [panda-primitives-control](https://github.com/wisc-HCI/panda-primitives-control) by following the instructions in that repo's README.md.

3. Setup this repo.

    First set up display forwarding:
    ```bash
    xhost +local:
    ```

    Now  build the container image and start the container. Make sure you are in this root directory. These commands mount on the current directory as the containers file system so any changes you make to the files on your host machine will be mirrored in the container. These commands also allow the containers display to be forwarded to your host machine so that you can see it.
    ```bash
    sudo docker build -t panda-prim .

    sudo docker run --rm -it --privileged --cap-add=SYS_NICE --env DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $(pwd):/workspace --net=host panda-prim
    ```

    You should now be in the docker container repo. Now build the repo.
    ```bash
    catkin build authoring
    source devel/setup.bash
    ```

## Running


1. [SKIP FOR SIMULATION] In the **panda-primitives-control** container, run:
    `roslaunch controller mover_test.launch`

2. Run one of the following:
    * [SIMULATION] `roslaunch authoring all.launch only_virtual:=true`
    * [ON ROBOT] `roslaunch authoring all.launch`

3. In a seperate terminal (still in your docker container), navigate to src/dexterity-interface and set up [dexterity-interface](https://github.com/Wisc-HCI/dexterity-interface)
   by following the instructions in the repository's readme.md, then open the chat interface to interact with llm:
    ```bash
    cd src/dexterity-interface
    python3 chat.py
    ```
    Once we finished talking with llm, its response will be record at output.txt, then we run:
    ```bash
    cd ../..
    source devel/setup.bash
    roslaunch authoring llm_control.launch
    ```

    You can also run any other scripts in the authoring/test folder in this same manner.

---

## Notes:
To view transforms:
`rosrun rqt_tf_tree rqt_tf_tree`
