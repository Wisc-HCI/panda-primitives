"""
Tests MOVE_FORCE primitive. How this works is that the robot
will move to the (x, y)=(0.5, 0.3) position provided (z not allowed) while
maintaining force of ~7 newtons downwards. This means that the 
robot will continue moving slowly downwards once it reaches the x,y position
until an upward force of >7 Newtons is applied by the user (this can be a gentle upward push).

"""


import rospy
from std_msgs.msg import String, Header
from authoring_msgs.msg import Command, Action 
from panda_ros_msgs.msg import HybridPose, HybridPoseArray


def test_move_force():
    pub = rospy.Publisher('/parser/command', Command, queue_size=1, latch=True)
    rate = rospy.Rate(10) # 10hz


    # Z position and selection vector
    # do not matter bc set in mover_server
    hybrid_pose = HybridPose()
    hybrid_pose.pose.position.x=0.5 # Forward
    hybrid_pose.pose.position.y=0.3  # Sideways

    hybrid_pose.pose.orientation.w=1 # This is facing Downward (x=0, y=0, z=0, w=1)

    # We still need a constraint frame bc although it is set in move_force in mover_server,
    # mover_server also uses it to set _starting_pose
    hybrid_pose.constraint_frame.w = 1 


    # Timestamp required
    header = Header()
    header.stamp = rospy.Time.now()
    hybrid_pose.header = header
    


    action = Action(type=16,  # MOVE_FORCE
                    pose=hybrid_pose, 
                    item=String(data="NONE")
                    )


    
    cmd = Command()
    cmd.type = 2  # EXEC
    cmd.core_action = [action]


    rospy.loginfo(cmd)
    pub.publish(cmd)
    rate.sleep()


if __name__ == '__main__':
    rospy.init_node('test_move_force', anonymous=True)
    
    test_move_force()
 