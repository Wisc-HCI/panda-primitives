"""
This currently does NOT work.
"""
import copy

import rospy
from std_msgs.msg import String
from authoring_msgs.msg import Command, Action 
from panda_ros_msgs.msg import HybridPose, HybridPoseArray


def test_wipe():
    pub = rospy.Publisher('/parser/command', Command, queue_size=1, latch=True)
    rate = rospy.Rate(10) # 10hz


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


    p2 = copy.deepcopy(p1)
    p2.pose.position.y=0.1 # Move right a bit

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
    rospy.init_node('test_wipe', anonymous=True)
    
    test_wipe()