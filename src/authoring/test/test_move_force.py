"""
Tests MOVE_FORCE primitive. How this works is that the robot
will move to the x, y position provided (z not allowed) while
maintaining a constant force (measured when the command triggered).
If force drops too much, the robot will stop.

"""



import rospy
from std_msgs.msg import String, Header
from authoring_msgs.msg import Command, Action 
from panda_ros_msgs.msg import HybridPose, HybridPoseArray


def test_move_force():
    pub = rospy.Publisher('/parser/command', Command, queue_size=1)
    rate = rospy.Rate(10) # 10hz


    for i in range(2):
        hybrid_pose = HybridPose()
        hybrid_pose.sel_vector = [1,1,1,0,0,0]
        hybrid_pose.pose.position.x=0.5 # Forward
        hybrid_pose.pose.position.y=0.0  # Sideways
        hybrid_pose.pose.position.z=-0.1 # Up
        
        # This is facing Downward (x=0, y=0, z=0, w=1)
        hybrid_pose.pose.orientation.w=1

        # The mover does something where it transforms based on the constraint frame (quaternion)
        # To have no transform, the following should be set: x=0, y=0, z=0, w=1
        hybrid_pose.constraint_frame.w = 1 
        


        action = Action(type=6,  # MOVE
                        pose=hybrid_pose, 
                        item=String(data="NONE")
                        )


        
        cmd = Command()
        cmd.type = 2  # EXEC
        cmd.core_action = [action]


        rospy.loginfo(cmd)
        pub.publish(cmd)
        rate.sleep()

    pause = rospy.Rate(1/10) 
    pause.sleep() # Wait 10 seconds

    # Then test move with force by moving slightly right
    # For some reason, a single message does not go through so need to
    # send at least 2.
    for i in range(2):

        # Z position, selection vector, and constraint frame
        # do not matter bc set in mover_server
        hybrid_pose = HybridPose()
        hybrid_pose.pose.position.x=0.5 # Forward
        hybrid_pose.pose.position.y=0.01  # Sideways
        
        # This is facing Downward (x=0, y=0, z=0, w=1)
        hybrid_pose.pose.orientation.w=1


        # Timestamp required
        header = Header()
        header.stamp = rospy.Time.now()  # Current time
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
 