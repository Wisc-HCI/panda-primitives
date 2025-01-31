"""
Tests gripper commands GRASP and RELEASE. Gripper should open and 
then close 3 seconds after.
"""


import rospy
from std_msgs.msg import String
from authoring_msgs.msg import Command, Action 
from panda_ros_msgs.msg import HybridPose, HybridPoseArray


def test_gripper():
    pub = rospy.Publisher('/parser/command', Command, queue_size=1)
    rate = rospy.Rate(10) # 10hz

    # FIRST GRASP
    # For some reason, a single message does not go through so need to
    # send at least 2.
    for i in range(2):

        action = Action(type=8,  # GRASP
                        item=String(data="BOLT") # NOT SURE IF THIS IS CORRECT
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
    # For some reason, a single message does not go through so need to
    # send at least 2.
    for i in range(2):

        action = Action(type=9,  # RELEASE
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
    
    test_gripper()
 