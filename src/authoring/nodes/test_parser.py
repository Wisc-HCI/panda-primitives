"""
Tests primitive commands. For this to work, make you should to setup 
panda-primitives-control (according to the readme and run 
`roslaunch controller mover_test.launch` in that repo.

Then make sure to set up this repo (according to the readme) run:
- Terminal 1:
    `roslaunch authoring all.launch`
- Terminal 2:
    `rosrun authoring test_parser.py`

- [Optional] Terminal 3: View tranforms
    `rosrun rqt_tf_tree rqt_tf_tree`


Note: If you want virtual, toggle line 112 in mover_server to True and run 
`roslaunch authoring all.launch only_virtual:=true` instead 
"""

import copy

import rospy
from std_msgs.msg import String
from authoring_msgs.msg import Command, Action 
from panda_ros_msgs.msg import HybridPose, HybridPoseArray



def test_twist():
    pub = rospy.Publisher('/parser/command', Command, queue_size=1)
    rate = rospy.Rate(10) # 10hz

    # For some reason, a single message does not go through so need to
    # send at least 4.
    for i in range(4):

        hybrid_pose = HybridPose()
        hybrid_pose.sel_vector = [1,1,1,0,0,0]
        hybrid_pose.pose.position.x=0.52 # Forward
        hybrid_pose.pose.position.y=0.0  # Sideways
        hybrid_pose.pose.position.z=-0.24 # Up
        
        # This is facing Downward (x=0, y=0, z=0, w=1)
        hybrid_pose.pose.orientation.w=1

        # The mover does something where it transforms based on the constraint frame (quaternion)
        # To have no transform, the following should be set: x=0, y=0, z=0, w=1
        hybrid_pose.constraint_frame.w = 1 


        poses = HybridPoseArray()
        poses.poses = [hybrid_pose] 

        action = Action(type=17,  # UNSCREW
                        poses=poses, 
                        item=String(data="BOLT") # NOT SURE IF THIS IS CORRECT
                        )


        
        cmd = Command()
        cmd.type = 2  # EXEC
        cmd.core_action = [action]


        rospy.loginfo(cmd)
        pub.publish(cmd)
        rate.sleep()

def test_wipe():
    pub = rospy.Publisher('/parser/command', Command, queue_size=1)
    rate = rospy.Rate(10) # 10hz

    # For some reason, a single message does not go through so need to
    # send at least 4.
    for i in range(4):

        p0 = HybridPose()
        p0.sel_vector = [1,1,1,0,0,0]
        p0.pose.position.x=0.5 # Forward
        p0.pose.position.y=0.0  # Sideways
        p0.pose.position.z=-0.25 # Up
        
        # This is facing Downward (x=0, y=0, z=0, w=1)
        p0.pose.orientation.w=1

        # The mover does something where it transforms based on the constraint frame (quaternion)
        # To have no transform, the following should be set: x=0, y=0, z=0, w=1
        p0.constraint_frame.w = 1 

        # P0 is where the robot picks up the eraser and the rest of the Ps
        # make up the wipeable area which I'm making a Rectangle so P1 is upper left 
        # (starting at same place as eraser), P2 is upper right, P3 is lower right, P4 is lower left
        p1 = copy.deepcopy(p0)
        p1.pose.position.x=0.6
        p1.pose.position.z=-0.26
        p2 = copy.deepcopy(p1)
        p2.pose.position.y=0.1 # Move right abit
        p3 = copy.deepcopy(p2)
        p3.pose.position.x=0.5
        p4 = copy.deepcopy(p1)
        p4.pose.position.x=0.5

        

        poses = HybridPoseArray()

        poses.poses = [p0, # Location of wiping object
                        p1, p2, p3, p4] # Wipable area 

        action = Action(type=3,  # WIPE
                        poses=poses, 
                        item=String(data="WHITEBOARD_ERASER") # NOT SURE IF THIS IS CORRECT
                        )


        
        cmd = Command()
        cmd.type = 2  # EXEC
        cmd.core_action = [action]


        rospy.loginfo(cmd)
        pub.publish(cmd)
        rate.sleep()

if __name__ == '__main__':
    rospy.init_node('test_primitives', anonymous=True)
    

    test_twist()
    # test_wipe()