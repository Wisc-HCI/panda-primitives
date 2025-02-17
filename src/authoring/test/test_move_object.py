#!/usr/bin/env python3
"""
Test the move_object action. The robot will first execute a PICK action to grasp a known object at a 
specified position, then execute PLACE action to put down it at a specified position.

Known object means that the object is already in the robot's database and the robot knows how to handle
it. For example, if the place where the robot puts down the object is a box, the robot will just drop it 
instead of placing it.
"""


import copy
import rospy
from std_msgs.msg import String, Header
from authoring_msgs.msg import Command, Action 
from panda_ros_msgs.msg import HybridPose, HybridPoseArray

def test_move_object():
    pub = rospy.Publisher('/parser/command', Command, queue_size=1, latch=True)
    rate = rospy.Rate(10) # 10hz

    # Create a pick pose.
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

    #Create place pose
    hybrid_pose2 = HybridPose()
    hybrid_pose2.sel_vector = [1,1,1,0,0,0]
    hybrid_pose2.pose.position.x=0.52 # Forward
    hybrid_pose2.pose.position.y=0.2  # Sideways
    hybrid_pose2.pose.position.z=-0.04 # Up
        
    hybrid_pose2.pose.orientation.w=1
    hybrid_pose2.constraint_frame.w=1 

    # We specify the pick and place position and store them in a HybridPoseArray
    poses = HybridPoseArray()
    poses.poses = [hybrid_pose1, hybrid_pose2]

    # Since we place the bult in a box, the robot will drop it
    action = Action(type=4,  # MOVE_OBJECT
                    poses=poses, 
                    # If we change "BOLT_box" to "BOLT_table" or else, the robot will place it
                    item=String(data="BOLT_box") # We must use "_" to indicate the object and the container
                    )
        
    cmd = Command()
    cmd.type = 2  # EXEC
    cmd.core_action = [action]

    rospy.loginfo(cmd)
    pub.publish(cmd)
    rate.sleep()     

if __name__ == '__main__':
    rospy.init_node('test_move_object', anonymous=True)
    test_move_object()
 