"""
This currently does NOT work.
"""
import copy

import rospy
from std_msgs.msg import String
from authoring_msgs.msg import Command, Action 
from panda_ros_msgs.msg import HybridPose, HybridPoseArray


def test_move_angle():
    pub = rospy.Publisher('/parser/command', Command, queue_size=1)
    rate = rospy.Rate(10) # 10hz

    # For some reason, a single message does not go through so need to
    # send at least 2.
    for i in range(2):
        # default RESET angle [0., -0.34, 0., -1.66, 0., 1.32, 0.8]

        test_pose = [0., -0.34, 0.25, -1.66, 0., 1.32, 0.8]

        action = Action(type=Action.MOVE_ANGLE,  # move to specified joint_pose
                        joint_pose=test_pose, 
                        item=String(data="MOVE_ANGLE") # NOT SURE IF THIS IS CORRECT
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