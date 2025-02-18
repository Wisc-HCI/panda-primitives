"""
Tests gripper commands GRASP and RELEASE. Gripper should open and 
then close 3 seconds after. 

Note: The gripper needs to be given something to grasp. If it 
doesn't have something, it will go to the reset position.
"""


import rospy
from std_msgs.msg import String
from authoring_msgs.msg import Command, Action 
from panda_ros_msgs.msg import HybridPose, HybridPoseArray


def test_gripper():
    pub = rospy.Publisher('/parser/command', Command, queue_size=1, latch=True)
    rate = rospy.Rate(10) # 10hz

    # FIRST GRASP
    action = Action(type=8,  # GRASP
                    )

    cmd = Command()
    cmd.type = 2  # EXEC
    cmd.core_action = [action]

    rospy.loginfo(cmd)
    pub.publish(cmd)
    rate.sleep()

    # Wait for 3 seconds
    pause = rospy.Rate(1/3)
    pause.sleep()

    # THEN RELEASE
    action = Action(type=9,  # RELEASE
                    )

    cmd = Command()
    cmd.type = 2  # EXEC
    cmd.core_action = [action]

    rospy.loginfo(cmd)
    pub.publish(cmd)
    rate.sleep()



if __name__ == '__main__':
    rospy.init_node('teset_gripper', anonymous=True)
    
    test_gripper()
 