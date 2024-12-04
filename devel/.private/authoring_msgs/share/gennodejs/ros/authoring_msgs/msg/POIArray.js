// Auto-generated. Do not edit!

// (in-package authoring_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let POI = require('./POI.js');

//-----------------------------------------------------------

class POIArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.poi_array = null;
    }
    else {
      if (initObj.hasOwnProperty('poi_array')) {
        this.poi_array = initObj.poi_array
      }
      else {
        this.poi_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type POIArray
    // Serialize message field [poi_array]
    // Serialize the length for message field [poi_array]
    bufferOffset = _serializer.uint32(obj.poi_array.length, buffer, bufferOffset);
    obj.poi_array.forEach((val) => {
      bufferOffset = POI.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type POIArray
    let len;
    let data = new POIArray(null);
    // Deserialize message field [poi_array]
    // Deserialize array length for message field [poi_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.poi_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.poi_array[i] = POI.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.poi_array.forEach((val) => {
      length += POI.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'authoring_msgs/POIArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '705692ced92474947d1df89af3eb8c54';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # POIs
    authoring_msgs/POI[] poi_array
    
    ================================================================================
    MSG: authoring_msgs/POI
    # Type
    std_msgs/String type
    
    # ID
    uint8 id
    
    # State
    std_msgs/String state
    
    # Age
    uint8 age
    
    # PoseStamped
    geometry_msgs/PoseStamped pose
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new POIArray(null);
    if (msg.poi_array !== undefined) {
      resolved.poi_array = new Array(msg.poi_array.length);
      for (let i = 0; i < resolved.poi_array.length; ++i) {
        resolved.poi_array[i] = POI.Resolve(msg.poi_array[i]);
      }
    }
    else {
      resolved.poi_array = []
    }

    return resolved;
    }
};

module.exports = POIArray;
