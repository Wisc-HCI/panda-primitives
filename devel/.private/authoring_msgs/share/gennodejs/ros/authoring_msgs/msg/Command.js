// Auto-generated. Do not edit!

// (in-package authoring_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Action = require('./Action.js');

//-----------------------------------------------------------

class Command {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.core_action = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('core_action')) {
        this.core_action = initObj.core_action
      }
      else {
        this.core_action = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Command
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [core_action]
    // Serialize the length for message field [core_action]
    bufferOffset = _serializer.uint32(obj.core_action.length, buffer, bufferOffset);
    obj.core_action.forEach((val) => {
      bufferOffset = Action.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Command
    let len;
    let data = new Command(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [core_action]
    // Deserialize array length for message field [core_action]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.core_action = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.core_action[i] = Action.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.core_action.forEach((val) => {
      length += Action.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'authoring_msgs/Command';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a8baf140351835cbf3fe6136ce58b889';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Types
    uint8 VIZ=0
    uint8 SIM=1
    uint8 EXEC=2
    uint8 EDIT=3
    
    uint8 type
    
    # Actions
    authoring_msgs/Action[] core_action
    
    ================================================================================
    MSG: authoring_msgs/Action
    #Types
    uint8 PICK=0
    uint8 SCREW=1
    uint8 PLACE=2
    uint8 WIPE=3
    uint8 MOVE_OBJECT=4
    uint8 RESET=5
    uint8 MOVE=6
    uint8 MOVE_TO_CONTACT=7
    uint8 GRASP=8
    uint8 RELEASE=9
    uint8 VIEW=10
    uint8 INSPECT=11
    uint8 WAIT=12
    uint8 PUSH=13
    uint8 STOP=14
    uint8 INSERT=15
    uint8 MOVE_FORCE=16
    uint8 UNSCREW=17
    uint8 MOVE_ANGLE=18
    uint8 PULL=19
    uint8 CAMERA_VELOCITY=20
    uint8 MOVE_UNKNOWN=21
    uint8 PULL_DRAWER=22
    uint8 BIAS_FORCES=23
    uint8 DROP=24
    uint8 RELEASE_FORCE=25
    
    # Type
    uint8 type
    
    std_msgs/Bool sim
    
    std_msgs/Bool finished
    
    # HybridPoseArray (for high level planning)
    panda_ros_msgs/HybridPoseArray poses
    
    # HybridPose (for low level planning)
    panda_ros_msgs/HybridPose pose
    
    # JointState (for going to fixed position, example reset)
    float64[] joint_pose
    
    # Item
    std_msgs/String item
    
    # Velocity
    geometry_msgs/Twist velocity
    
    ================================================================================
    MSG: std_msgs/Bool
    bool data
    ================================================================================
    MSG: panda_ros_msgs/HybridPoseArray
    Header header
    panda_ros_msgs/HybridPose[] poses
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: panda_ros_msgs/HybridPose
    # Pose
    geometry_msgs/Pose pose
    
    # Selection vector [6 (drop rotation for now)]
    uint8[] sel_vector
    
    # Desired Wrench
    geometry_msgs/Wrench wrench
    
    # Constraint Frame (might drop)
    geometry_msgs/Quaternion constraint_frame
    
    # Header
    Header header
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Wrench
    # This represents force in free space, separated into
    # its linear and angular parts.
    Vector3  force
    Vector3  torque
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Command(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.core_action !== undefined) {
      resolved.core_action = new Array(msg.core_action.length);
      for (let i = 0; i < resolved.core_action.length; ++i) {
        resolved.core_action[i] = Action.Resolve(msg.core_action[i]);
      }
    }
    else {
      resolved.core_action = []
    }

    return resolved;
    }
};

// Constants for message
Command.Constants = {
  VIZ: 0,
  SIM: 1,
  EXEC: 2,
  EDIT: 3,
}

module.exports = Command;
