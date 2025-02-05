"""
This currently does NOT work.
"""
import copy

import rospy
from std_msgs.msg import String
from authoring_msgs.msg import Command, Action 
from panda_ros_msgs.msg import HybridPose, HybridPoseArray


def test_reset():
    pub = rospy.Publisher('/parser/command', Command, queue_size=1)
    rate = rospy.Rate(10) # 10hz

    # For some reason, a single message does not go through so need to
    # send at least 2.
    for i in range(2):

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

        poses = HybridPoseArray()

        poses.poses = [p0 ] # Home position

        action = Action(type=Action.RESET,  # RESET
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
    rospy.init_node('reset', anonymous=True)
    
    test_reset()