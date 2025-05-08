"""
Tests untwisting a large bolt ~1 rotation with the UNSCREW command.
Bolt need to be placed at (x,y,z) = (0.52, 0, -0.24). You can eyeball
this as the place where the gripper first goes down before closing.

Note: If the gripper does not grasp the bolt, it will "reset" without
doing any twisting.
"""

import copy

import rospy
from std_msgs.msg import String
from authoring_msgs.msg import Command, Action 
from panda_ros_msgs.msg import HybridPose, HybridPoseArray


def test_twist():
    pub = rospy.Publisher('/parser/command', Command, queue_size=1, latch=True)
    rate = rospy.Rate(10) # 10hz


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


if __name__ == '__main__':
    rospy.init_node('test_twist', anonymous=True)
    
    test_twist()
 