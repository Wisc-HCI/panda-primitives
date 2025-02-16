#!/usr/bin/env python3
"""
Test the pick action. Gripper should move to the specified position and close. However, the gripper
won't directly move to it, but rather move to a pre-pick position which is 8cm above the pick position,
then to the pick position. Once it closed, it will return to the pre-pick position.
"""

import copy
import rospy
from std_msgs.msg import String, Header
from authoring_msgs.msg import Command, Action 
from panda_ros_msgs.msg import HybridPose, HybridPoseArray

def test_move_unknown():
    pub = rospy.Publisher('/parser/command', Command, queue_size=1, latch=True)
    rate = rospy.Rate(10) # 10hz

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

    #Create another pose
    hybrid_pose2 = HybridPose()
    hybrid_pose2.sel_vector = [1,1,1,0,0,0]
    hybrid_pose2.pose.position.x=0.52 # Forward
    hybrid_pose2.pose.position.y=0.2  # Sideways
    hybrid_pose2.pose.position.z=-0.04 # Up
        
    hybrid_pose2.pose.orientation.w=1
    hybrid_pose2.constraint_frame.w=1 

    # Once we specify the pick position, the planner will create pre-pick and post-pick
    # positions, so we need to use a HybridPoseArray to store these positions
    poses = HybridPoseArray()
    poses.poses = [hybrid_pose1, hybrid_pose2]

    action = Action(type=4,  # MOVE_OBJECT
                    poses=poses, 
                    item=String(data="BOLT_box") # NOT SURE IF THIS IS CORRECT
                    )
        
    cmd = Command()
    cmd.type = 2  # EXEC
    cmd.core_action = [action]

    rospy.loginfo(cmd)
    pub.publish(cmd)
    rate.sleep()     

if __name__ == '__main__':
    rospy.init_node('test_twist', anonymous=True)
    test_move_unknown()
 