"""
Tests primitive commands. For this to work, make you should to setup 
panda-primitives-control (according to the readme and run 
`roslaunch controller mover_test.launch` in that repo.

Then make sure to set up this repo (according to the readme) run:
- Terminal 1:
    `roslaunch authoring test_primitives.launch`
- Terminal 2:
    `rosrun authoring test_parser.py`

- [Optional] Terminal 3: View tranforms
    `rosrun rqt_tf_tree rqt_tf_tree`
"""


import rospy
from std_msgs.msg import String
from authoring_msgs.msg import Command, Action 
from panda_ros_msgs.msg import HybridPose, HybridPoseArray



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

def test_planner():
    pub = rospy.Publisher('/parser/command', Command, queue_size=1)
    rate = rospy.Rate(10) # 10hz

    # For some reason, a single message does not go through so need to
    # send at least 4.
    for i in range(4):

        hybrid_pose = HybridPose()
        hybrid_pose.sel_vector = [1,1,1,0,0,0]
        hybrid_pose.pose.position.x=0.35
        hybrid_pose.pose.position.y=0.1
        hybrid_pose.pose.position.y=0.25


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
    rospy.init_node('test_primitives', anonymous=True)
    
    # test_parser() # DOES NOT WORK
    test_planner()