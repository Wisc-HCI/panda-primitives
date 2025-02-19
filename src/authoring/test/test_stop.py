#!/usr/bin/env python3
"""
Test the stop action. The robot will not abruptly halt but will instead move to a predefined safe 
position. This position serves as a default resting or home location, which is typically appended 
at the end of a sequence of planned motions to guide the robot back to its designated stop position.
Totally the same as MOVE action, but we store the position(for future use).
"""


import copy

import rospy
from std_msgs.msg import String
from authoring_msgs.msg import Command, Action 
from panda_ros_msgs.msg import HybridPose, HybridPoseArray


def test_stop():
    pub = rospy.Publisher('/parser/command', Command, queue_size=1, latch=True)
    rate = rospy.Rate(10) # 10hz

    # Define the home position for the robot
    hybrid_pose1 = HybridPose()
    hybrid_pose1.sel_vector = [1,1,1,0,0,0]
    hybrid_pose1.pose.position.x=0.52 # Forward
    hybrid_pose1.pose.position.y=0.0  # Sideways
    hybrid_pose1.pose.position.z=-0.04 # Up
        
    # This is facing Downward (x=0, y=0, z=0, w=1)
    hybrid_pose1.pose.orientation.w=1

    # The mover does something where it transforms based on the constraint frame (quaternion)
    # To have no transform, the following should be set: x=0, y=0, z=0, w=1
    hybrid_pose1.constraint_frame.w=1 

    poses = HybridPoseArray()
    poses.poses = [hybrid_pose1] 

    action = Action(type=14,  # STOP
                    poses=poses, 
                    item=String(data="BOLT") # NOT SURE IF THIS IS CORRECT
                    )
        
    cmd = Command()
    cmd.type = 2  # EXEC
    cmd.core_action = [action]


    rospy.loginfo(cmd)
    pub.publish(cmd)
    rate.sleep()


if __name__ == '__main__':
    rospy.init_node('test_stop', anonymous=True)
    
    test_stop()
 
