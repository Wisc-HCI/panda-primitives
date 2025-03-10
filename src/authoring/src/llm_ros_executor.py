#!/usr/bin/env python3

import rospy
from std_msgs.msg import String, Header
from authoring_msgs.msg import Command, Action 
from panda_ros_msgs.msg import HybridPose, HybridPoseArray

# Declare a global list to store accumulated commands
commands = []

def pick():
    """
    Creates an action message for the PICK operation.
    
    Returns:
        Action: A configured action message for picking an item.
    """
    hybrid_pose = HybridPose()
    hybrid_pose.sel_vector = [1,1,1,0,0,0]
    hybrid_pose.pose.position.x = 0.52
    hybrid_pose.pose.position.y = 0.0
    hybrid_pose.pose.position.z = 0.0
    hybrid_pose.pose.orientation.w = 1
    hybrid_pose.constraint_frame.w = 1

    poses = HybridPoseArray()
    poses.poses = [hybrid_pose]

    action = Action(
        type=0,  # PICK operation
        poses=poses, 
        item=String(data="BOLT")
    )
    return action

def place():
    """
    Creates an action message for the PLACE operation.
    
    Returns:
        Action: A configured action message for placing an item.
    """
    hybrid_pose = HybridPose()
    hybrid_pose.sel_vector = [1,1,1,0,0,0]
    hybrid_pose.pose.position.x = 0.52
    hybrid_pose.pose.position.y = -0.1
    hybrid_pose.pose.position.z = 0.0
    hybrid_pose.pose.orientation.w = 1
    hybrid_pose.constraint_frame.w = 1

    # Assign a timestamp (necessary to avoid potential errors)
    header = Header()
    header.stamp = rospy.Time.now()
    hybrid_pose.header = header

    poses = HybridPoseArray()
    poses.poses = [hybrid_pose]

    action = Action(
        type=2,  # PLACE operation
        poses=poses, 
        item=String(data="BOLT")
    )
    return action

def stop():
    """
    Creates an action message for the STOP operation.
    
    Returns:
        Action: A configured action message for stopping operations.
    """
    hybrid_pose = HybridPose()
    hybrid_pose.sel_vector = [1,1,1,0,0,0]
    hybrid_pose.pose.position.x = 0.2
    hybrid_pose.pose.position.y = 0.0
    hybrid_pose.pose.position.z = 0.2
    hybrid_pose.pose.orientation.w = 1
    hybrid_pose.constraint_frame.w = 1

    poses = HybridPoseArray()
    poses.poses = [hybrid_pose]

    action = Action(
        type=14,  # STOP operation
        poses=poses, 
        item=String(data="BOLT")
    )
    return action

def command_callback(msg):
    """
    Callback function that processes received commands from the '/llm_commands' topic.
    Accumulates commands and publishes them when a STOP command is encountered.
    
    Args:
        msg (String): The received message containing commands.
    """
    global commands  # Declare the global commands list
    text = msg.data.strip()
    rospy.loginfo(f"Received raw command: {text}")

    # Split input into lines in case multiple commands are received at once
    lines = text.split("\n")
    for line in lines:
        cmd_str = line.strip().upper()
        rospy.loginfo(f"Processing command: {cmd_str}")

        if cmd_str == "PICK":
            commands.append(pick())
            rospy.loginfo("Added a PICK action to the queue")
        elif cmd_str == "PLACE":
            commands.append(place())
            rospy.loginfo("Added a PLACE action to the queue")
        elif cmd_str == "STOP":
            commands.append(stop())
            rospy.loginfo("Added a STOP action to the queue")

            # Upon receiving STOP, publish all accumulated commands at once
            cmd_msg = Command()
            cmd_msg.type = 2  # Typically, 2 represents EXEC
            cmd_msg.core_action = commands  # Assign the list of actions
            rospy.loginfo(f"Publishing full command list with {len(commands)} actions")
            pub.publish(cmd_msg)

            # Clear the command list after publishing
            commands = []
            rospy.loginfo("All actions have been published and cleared.")

if __name__ == "__main__":
    # Initialize the ROS node
    rospy.init_node("panda_command_executor")

    # Subscribe to the '/llm_commands' topic
    rospy.Subscriber("/llm_commands", String, command_callback)
    
    # Create a publisher for the parsed command messages
    pub = rospy.Publisher('/parser/command', Command, queue_size=1, latch=True)

    rospy.loginfo("Command executor started, waiting for LLM instructions...")
    rospy.spin()  # Keep the node running
