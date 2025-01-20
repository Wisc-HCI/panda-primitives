// Auto-generated. Do not edit!

// (in-package authoring_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');
let panda_ros_msgs = _finder('panda_ros_msgs');

//-----------------------------------------------------------

class Action {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.sim = null;
      this.finished = null;
      this.poses = null;
      this.pose = null;
      this.joint_pose = null;
      this.item = null;
      this.velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('sim')) {
        this.sim = initObj.sim
      }
      else {
        this.sim = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('finished')) {
        this.finished = initObj.finished
      }
      else {
        this.finished = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('poses')) {
        this.poses = initObj.poses
      }
      else {
        this.poses = new panda_ros_msgs.msg.HybridPoseArray();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new panda_ros_msgs.msg.HybridPose();
      }
      if (initObj.hasOwnProperty('joint_pose')) {
        this.joint_pose = initObj.joint_pose
      }
      else {
        this.joint_pose = [];
      }
      if (initObj.hasOwnProperty('item')) {
        this.item = initObj.item
      }
      else {
        this.item = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Action
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [sim]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.sim, buffer, bufferOffset);
    // Serialize message field [finished]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.finished, buffer, bufferOffset);
    // Serialize message field [poses]
    bufferOffset = panda_ros_msgs.msg.HybridPoseArray.serialize(obj.poses, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = panda_ros_msgs.msg.HybridPose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [joint_pose]
    bufferOffset = _arraySerializer.float64(obj.joint_pose, buffer, bufferOffset, null);
    // Serialize message field [item]
    bufferOffset = std_msgs.msg.String.serialize(obj.item, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Action
    let len;
    let data = new Action(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sim]
    data.sim = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [finished]
    data.finished = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [poses]
    data.poses = panda_ros_msgs.msg.HybridPoseArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = panda_ros_msgs.msg.HybridPose.deserialize(buffer, bufferOffset);
    // Deserialize message field [joint_pose]
    data.joint_pose = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [item]
    data.item = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += panda_ros_msgs.msg.HybridPoseArray.getMessageSize(object.poses);
    length += panda_ros_msgs.msg.HybridPose.getMessageSize(object.pose);
    length += 8 * object.joint_pose.length;
    length += std_msgs.msg.String.getMessageSize(object.item);
    return length + 55;
  }

  static datatype() {
    // Returns string type for a message object
    return 'authoring_msgs/Action';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '41fc65066a6b05ed16658136c65c754d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Action(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.sim !== undefined) {
      resolved.sim = std_msgs.msg.Bool.Resolve(msg.sim)
    }
    else {
      resolved.sim = new std_msgs.msg.Bool()
    }

    if (msg.finished !== undefined) {
      resolved.finished = std_msgs.msg.Bool.Resolve(msg.finished)
    }
    else {
      resolved.finished = new std_msgs.msg.Bool()
    }

    if (msg.poses !== undefined) {
      resolved.poses = panda_ros_msgs.msg.HybridPoseArray.Resolve(msg.poses)
    }
    else {
      resolved.poses = new panda_ros_msgs.msg.HybridPoseArray()
    }

    if (msg.pose !== undefined) {
      resolved.pose = panda_ros_msgs.msg.HybridPose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new panda_ros_msgs.msg.HybridPose()
    }

    if (msg.joint_pose !== undefined) {
      resolved.joint_pose = msg.joint_pose;
    }
    else {
      resolved.joint_pose = []
    }

    if (msg.item !== undefined) {
      resolved.item = std_msgs.msg.String.Resolve(msg.item)
    }
    else {
      resolved.item = new std_msgs.msg.String()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Twist.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

// Constants for message
Action.Constants = {
  PICK: 0,
  SCREW: 1,
  PLACE: 2,
  WIPE: 3,
  MOVE_OBJECT: 4,
  RESET: 5,
  MOVE: 6,
  MOVE_TO_CONTACT: 7,
  GRASP: 8,
  RELEASE: 9,
  VIEW: 10,
  INSPECT: 11,
  WAIT: 12,
  PUSH: 13,
  STOP: 14,
  INSERT: 15,
  MOVE_FORCE: 16,
  UNSCREW: 17,
  MOVE_ANGLE: 18,
  PULL: 19,
  CAMERA_VELOCITY: 20,
  MOVE_UNKNOWN: 21,
  PULL_DRAWER: 22,
  BIAS_FORCES: 23,
  DROP: 24,
  RELEASE_FORCE: 25,
}

module.exports = Action;
