#!/usr/bin/env python3
import rospy, os
from std_msgs.msg import String

def get_chat_instructions():
    """
    Reads the output from `chat.py` stored in a file.
    
    Returns:
        str: The content of `output.txt` if found, otherwise an error message.
    """
    folder = os.path.dirname(__file__)  # Get the directory of the current script
    file_path = os.path.join(folder, "../../../../output.txt")  # Define the path to the output file
    
    try:
        with open(file_path, "r") as f:
            return f.read().strip()  # Read the file content and remove trailing whitespace
    except FileNotFoundError:
        return "ERROR: output.txt not found. Please run chat.py manually first."

if __name__ == "__main__":
    # Initialize the ROS node
    rospy.init_node("chat_instructions_publisher")
    
    # Create a publisher to the '/llm_commands' topic with message type `String`
    pub = rospy.Publisher("/llm_commands", String, queue_size=10)
    
    rospy.sleep(1.0)  # Small delay to ensure the publisher registers successfully

    # Retrieve instruction text from chat.py output
    raw_text = get_chat_instructions()
    rospy.loginfo(f"Raw LLM output:{raw_text}")

    # Parse the output from chat.py to extract a list of commands
    commands = []
    for line in raw_text.splitlines():
        line = line.strip()  # Remove leading/trailing whitespace
        if not line: 
            continue  # Skip empty lines
        
        # Check if the line starts with a number (indicating an ordered command list)
        if line[0].isdigit():
            parts = line.split(' ', 1)
            command = parts[1] if len(parts) > 1 else parts[0]
            commands.append(command.strip())

    # **New Modification: Combine all commands into a single string before sending**
    combined_commands = "\n".join(commands)  # Join all commands with newline characters
    rospy.loginfo(f"Publishing complete command set:{combined_commands}")
    
    # **Send the full command set in one message**
    pub.publish(combined_commands)

    rospy.loginfo("All commands have been published as a single message. Waiting for subscribers to process...")
    rospy.spin()  # Keep the node running


