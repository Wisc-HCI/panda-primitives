"""
Tests primitive commands. For this to work, make you should to setup 
panda-primitives-control (according to the readme and run 
`roslaunch controller mover_test.launch` in that repo.

Then make sure to set up this repo (according to the readme) run:
- Terminal 1:
    `roslaunch authoring test_primitives.launch`
- Terminal 2:
    `rosrun authoring controller_tester.py`
"""


import rospy
from std_msgs.msg import string


# Tests parser

def test_parser():
    pub = rospy.Publisher('/gui/command', String, queue_size=1)
    rate = rospy.Rate(10) # 10hz

    # For some reason, a single message does not go through so need to
    # send at least 4.
    for i in range(4):
        string = String()
        string.data = "trigger_1;screw;pix_pos:1200-1350_750-950"

        rospy.loginfo(string)
        pub.publish(string)
        rate.sleep()



if __name__ == '__main__':
    rospy.init_node('test_primitives', anonymous=True)
    
    test_parser()