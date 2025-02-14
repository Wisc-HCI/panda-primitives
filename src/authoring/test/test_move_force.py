#!/usr/bin/env python3
import copy


import rospy
from std_msgs.msg import String
from authoring_msgs.msg import Command, Action 
from panda_ros_msgs.msg import HybridPose, HybridPoseArray


def test_move_force():
    pub = rospy.Publisher('/parser/command', Command, queue_size=1)
    rate = rospy.Rate(10)  # 10Hz


    # 为了确保消息能顺利传递，至少发送两条消息
    for i in range(2):
        # 构造目标位姿
        hybrid_pose = HybridPose()
        hybrid_pose.sel_vector = [1, 1, 1, 0, 0, 0]
        hybrid_pose.pose.position.x = 0.6
        hybrid_pose.pose.position.y = 0.0
        hybrid_pose.pose.position.z = 0.2
        # 设置目标朝向（无旋转）
        hybrid_pose.header.stamp = rospy.Time.now() + rospy.Duration(5.0)
        hybrid_pose.pose.orientation.w = 1



        # 填充 constraint_frame（通常设置为单位四元数表示无旋转）
        hybrid_pose.constraint_frame.w = 1

        # 将目标位姿放入 HybridPoseArray
        poses = HybridPoseArray()
        poses.poses = [hybrid_pose]

        # 构造一个 Action 消息
        action = Action(
            type=16,  # MOVE_FORCE，对应定义中的数值（例如 16）
            poses=poses,
            item=String(data="BOLT")  # 可选，标识操作对象
        )
        # 设置 sim 标志：True 表示仿真模式（这样服务器会走仿真相关的处理逻辑）
        #action.sim.data = True

        # 构造 Command 消息，类型 2 通常表示 EXEC 执行命令
        cmd = Command()
        cmd.type = 2  # EXEC 模式
        cmd.core_action = [action]

        rospy.loginfo("Publishing MOVE_FORCE command:\n%s", cmd)
        pub.publish(cmd)
        rate.sleep()


if __name__ == '__main__':
    rospy.init_node('test_move_force_node', anonymous=True)
    rospy.sleep(3.0)
    test_move_force()
