// Auto-generated. Do not edit!

// (in-package panda_ros_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class HybridPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.sel_vector = null;
      this.wrench = null;
      this.constraint_frame = null;
      this.header = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('sel_vector')) {
        this.sel_vector = initObj.sel_vector
      }
      else {
        this.sel_vector = [];
      }
      if (initObj.hasOwnProperty('wrench')) {
        this.wrench = initObj.wrench
      }
      else {
        this.wrench = new geometry_msgs.msg.Wrench();
      }
      if (initObj.hasOwnProperty('constraint_frame')) {
        this.constraint_frame = initObj.constraint_frame
      }
      else {
        this.constraint_frame = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HybridPose
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [sel_vector]
    bufferOffset = _arraySerializer.uint8(obj.sel_vector, buffer, bufferOffset, null);
    // Serialize message field [wrench]
    bufferOffset = geometry_msgs.msg.Wrench.serialize(obj.wrench, buffer, bufferOffset);
    // Serialize message field [constraint_frame]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.constraint_frame, buffer, bufferOffset);
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HybridPose
    let len;
    let data = new HybridPose(null);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [sel_vector]
    data.sel_vector = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [wrench]
    data.wrench = geometry_msgs.msg.Wrench.deserialize(buffer, bufferOffset);
    // Deserialize message field [constraint_frame]
    data.constraint_frame = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.sel_vector.length;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 140;
  }

  static datatype() {
    // Returns string type for a message object
    return 'panda_ros_msgs/HybridPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '477fbc04dffb4d202ea3c5e892368617';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HybridPose(null);
    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.sel_vector !== undefined) {
      resolved.sel_vector = msg.sel_vector;
    }
    else {
      resolved.sel_vector = []
    }

    if (msg.wrench !== undefined) {
      resolved.wrench = geometry_msgs.msg.Wrench.Resolve(msg.wrench)
    }
    else {
      resolved.wrench = new geometry_msgs.msg.Wrench()
    }

    if (msg.constraint_frame !== undefined) {
      resolved.constraint_frame = geometry_msgs.msg.Quaternion.Resolve(msg.constraint_frame)
    }
    else {
      resolved.constraint_frame = new geometry_msgs.msg.Quaternion()
    }

    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    return resolved;
    }
};

module.exports = HybridPose;
