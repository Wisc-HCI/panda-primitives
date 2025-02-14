
import copy


import rospy
from std_msgs.msg import String, Header
from authoring_msgs.msg import Command, Action 
from panda_ros_msgs.msg import HybridPose, HybridPoseArray


def test_move_force():
    pub = rospy.Publisher('/parser/command', Command, queue_size=1, latch=True)
    rate = rospy.Rate(10)  # 10Hz


    
    

    hybrid_pose = HybridPose()
    hybrid_pose.pose.position.x = 0.5
    hybrid_pose.pose.position.y = 0.3
    hybrid_pose.pose.position.z = 0.4


    hybrid_pose.pose.orientation.w = 1
    hybrid_pose.constraint_frame.w = 1

    #header = Header()
    #header.stamp = rospy.Time.now()
    #hybrid_pose.header = header


    



    action = Action(
        type=16,  # MOVE_FORCE，对应定义中的数值（例如 16）
        pose=hybrid_pose,
        item=String(data="BOLT")  # 可选，标识操作对象
    )

        # 构造 Command 消息，类型 2 通常表示 EXEC 执行命令
    cmd = Command()
    cmd.type = 2  # EXEC 模式
    cmd.core_action = [action]

    rospy.loginfo("Publishing MOVE_FORCE command:\n%s", cmd)
    pub.publish(cmd)
    rate.sleep()


if __name__ == '__main__':
    rospy.init_node('test_move_force_node', anonymous=True)
    test_move_force()
