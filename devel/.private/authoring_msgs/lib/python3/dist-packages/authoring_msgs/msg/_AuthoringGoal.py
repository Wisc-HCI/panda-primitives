# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from authoring_msgs/AuthoringGoal.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import authoring_msgs.msg
import geometry_msgs.msg
import panda_ros_msgs.msg
import std_msgs.msg

class AuthoringGoal(genpy.Message):
  _md5sum = "4d4364242ac3049cfa13f319126cafd6"
  _type = "authoring_msgs/AuthoringGoal"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
authoring_msgs/Action goal

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
"""
  __slots__ = ['goal']
  _slot_types = ['authoring_msgs/Action']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       goal

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(AuthoringGoal, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.goal is None:
        self.goal = authoring_msgs.msg.Action()
    else:
      self.goal = authoring_msgs.msg.Action()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3B3I().pack(_x.goal.type, _x.goal.sim.data, _x.goal.finished.data, _x.goal.poses.header.seq, _x.goal.poses.header.stamp.secs, _x.goal.poses.header.stamp.nsecs))
      _x = self.goal.poses.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.goal.poses.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.goal.poses.poses:
        _v1 = val1.pose
        _v2 = _v1.position
        _x = _v2
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v3 = _v1.orientation
        _x = _v3
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _x = val1.sel_vector
        length = len(_x)
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
        else:
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _v4 = val1.wrench
        _v5 = _v4.force
        _x = _v5
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v6 = _v4.torque
        _x = _v6
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v7 = val1.constraint_frame
        _x = _v7
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v8 = val1.header
        _x = _v8.seq
        buff.write(_get_struct_I().pack(_x))
        _v9 = _v8.stamp
        _x = _v9
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v8.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.goal.pose.pose.position.x, _x.goal.pose.pose.position.y, _x.goal.pose.pose.position.z, _x.goal.pose.pose.orientation.x, _x.goal.pose.pose.orientation.y, _x.goal.pose.pose.orientation.z, _x.goal.pose.pose.orientation.w))
      _x = self.goal.pose.sel_vector
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_10d3I().pack(_x.goal.pose.wrench.force.x, _x.goal.pose.wrench.force.y, _x.goal.pose.wrench.force.z, _x.goal.pose.wrench.torque.x, _x.goal.pose.wrench.torque.y, _x.goal.pose.wrench.torque.z, _x.goal.pose.constraint_frame.x, _x.goal.pose.constraint_frame.y, _x.goal.pose.constraint_frame.z, _x.goal.pose.constraint_frame.w, _x.goal.pose.header.seq, _x.goal.pose.header.stamp.secs, _x.goal.pose.header.stamp.nsecs))
      _x = self.goal.pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.goal.joint_pose)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.goal.joint_pose))
      _x = self.goal.item.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_6d().pack(_x.goal.velocity.linear.x, _x.goal.velocity.linear.y, _x.goal.velocity.linear.z, _x.goal.velocity.angular.x, _x.goal.velocity.angular.y, _x.goal.velocity.angular.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.goal is None:
        self.goal = authoring_msgs.msg.Action()
      end = 0
      _x = self
      start = end
      end += 15
      (_x.goal.type, _x.goal.sim.data, _x.goal.finished.data, _x.goal.poses.header.seq, _x.goal.poses.header.stamp.secs, _x.goal.poses.header.stamp.nsecs,) = _get_struct_3B3I().unpack(str[start:end])
      self.goal.sim.data = bool(self.goal.sim.data)
      self.goal.finished.data = bool(self.goal.finished.data)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.goal.poses.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.goal.poses.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.goal.poses.poses = []
      for i in range(0, length):
        val1 = panda_ros_msgs.msg.HybridPose()
        _v10 = val1.pose
        _v11 = _v10.position
        _x = _v11
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v12 = _v10.orientation
        _x = _v12
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        val1.sel_vector = str[start:end]
        _v13 = val1.wrench
        _v14 = _v13.force
        _x = _v14
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v15 = _v13.torque
        _x = _v15
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v16 = val1.constraint_frame
        _x = _v16
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v17 = val1.header
        start = end
        end += 4
        (_v17.seq,) = _get_struct_I().unpack(str[start:end])
        _v18 = _v17.stamp
        _x = _v18
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v17.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v17.frame_id = str[start:end]
        self.goal.poses.poses.append(val1)
      _x = self
      start = end
      end += 56
      (_x.goal.pose.pose.position.x, _x.goal.pose.pose.position.y, _x.goal.pose.pose.position.z, _x.goal.pose.pose.orientation.x, _x.goal.pose.pose.orientation.y, _x.goal.pose.pose.orientation.z, _x.goal.pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.goal.pose.sel_vector = str[start:end]
      _x = self
      start = end
      end += 92
      (_x.goal.pose.wrench.force.x, _x.goal.pose.wrench.force.y, _x.goal.pose.wrench.force.z, _x.goal.pose.wrench.torque.x, _x.goal.pose.wrench.torque.y, _x.goal.pose.wrench.torque.z, _x.goal.pose.constraint_frame.x, _x.goal.pose.constraint_frame.y, _x.goal.pose.constraint_frame.z, _x.goal.pose.constraint_frame.w, _x.goal.pose.header.seq, _x.goal.pose.header.stamp.secs, _x.goal.pose.header.stamp.nsecs,) = _get_struct_10d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.goal.pose.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.goal.pose.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.goal.joint_pose = s.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.goal.item.data = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.goal.item.data = str[start:end]
      _x = self
      start = end
      end += 48
      (_x.goal.velocity.linear.x, _x.goal.velocity.linear.y, _x.goal.velocity.linear.z, _x.goal.velocity.angular.x, _x.goal.velocity.angular.y, _x.goal.velocity.angular.z,) = _get_struct_6d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3B3I().pack(_x.goal.type, _x.goal.sim.data, _x.goal.finished.data, _x.goal.poses.header.seq, _x.goal.poses.header.stamp.secs, _x.goal.poses.header.stamp.nsecs))
      _x = self.goal.poses.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.goal.poses.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.goal.poses.poses:
        _v19 = val1.pose
        _v20 = _v19.position
        _x = _v20
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v21 = _v19.orientation
        _x = _v21
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _x = val1.sel_vector
        length = len(_x)
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
        else:
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _v22 = val1.wrench
        _v23 = _v22.force
        _x = _v23
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v24 = _v22.torque
        _x = _v24
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v25 = val1.constraint_frame
        _x = _v25
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
        _v26 = val1.header
        _x = _v26.seq
        buff.write(_get_struct_I().pack(_x))
        _v27 = _v26.stamp
        _x = _v27
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v26.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.goal.pose.pose.position.x, _x.goal.pose.pose.position.y, _x.goal.pose.pose.position.z, _x.goal.pose.pose.orientation.x, _x.goal.pose.pose.orientation.y, _x.goal.pose.pose.orientation.z, _x.goal.pose.pose.orientation.w))
      _x = self.goal.pose.sel_vector
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
      else:
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_10d3I().pack(_x.goal.pose.wrench.force.x, _x.goal.pose.wrench.force.y, _x.goal.pose.wrench.force.z, _x.goal.pose.wrench.torque.x, _x.goal.pose.wrench.torque.y, _x.goal.pose.wrench.torque.z, _x.goal.pose.constraint_frame.x, _x.goal.pose.constraint_frame.y, _x.goal.pose.constraint_frame.z, _x.goal.pose.constraint_frame.w, _x.goal.pose.header.seq, _x.goal.pose.header.stamp.secs, _x.goal.pose.header.stamp.nsecs))
      _x = self.goal.pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.goal.joint_pose)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.goal.joint_pose.tostring())
      _x = self.goal.item.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_6d().pack(_x.goal.velocity.linear.x, _x.goal.velocity.linear.y, _x.goal.velocity.linear.z, _x.goal.velocity.angular.x, _x.goal.velocity.angular.y, _x.goal.velocity.angular.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.goal is None:
        self.goal = authoring_msgs.msg.Action()
      end = 0
      _x = self
      start = end
      end += 15
      (_x.goal.type, _x.goal.sim.data, _x.goal.finished.data, _x.goal.poses.header.seq, _x.goal.poses.header.stamp.secs, _x.goal.poses.header.stamp.nsecs,) = _get_struct_3B3I().unpack(str[start:end])
      self.goal.sim.data = bool(self.goal.sim.data)
      self.goal.finished.data = bool(self.goal.finished.data)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.goal.poses.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.goal.poses.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.goal.poses.poses = []
      for i in range(0, length):
        val1 = panda_ros_msgs.msg.HybridPose()
        _v28 = val1.pose
        _v29 = _v28.position
        _x = _v29
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v30 = _v28.orientation
        _x = _v30
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        val1.sel_vector = str[start:end]
        _v31 = val1.wrench
        _v32 = _v31.force
        _x = _v32
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v33 = _v31.torque
        _x = _v33
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v34 = val1.constraint_frame
        _x = _v34
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        _v35 = val1.header
        start = end
        end += 4
        (_v35.seq,) = _get_struct_I().unpack(str[start:end])
        _v36 = _v35.stamp
        _x = _v36
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v35.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v35.frame_id = str[start:end]
        self.goal.poses.poses.append(val1)
      _x = self
      start = end
      end += 56
      (_x.goal.pose.pose.position.x, _x.goal.pose.pose.position.y, _x.goal.pose.pose.position.z, _x.goal.pose.pose.orientation.x, _x.goal.pose.pose.orientation.y, _x.goal.pose.pose.orientation.z, _x.goal.pose.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.goal.pose.sel_vector = str[start:end]
      _x = self
      start = end
      end += 92
      (_x.goal.pose.wrench.force.x, _x.goal.pose.wrench.force.y, _x.goal.pose.wrench.force.z, _x.goal.pose.wrench.torque.x, _x.goal.pose.wrench.torque.y, _x.goal.pose.wrench.torque.z, _x.goal.pose.constraint_frame.x, _x.goal.pose.constraint_frame.y, _x.goal.pose.constraint_frame.z, _x.goal.pose.constraint_frame.w, _x.goal.pose.header.seq, _x.goal.pose.header.stamp.secs, _x.goal.pose.header.stamp.nsecs,) = _get_struct_10d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.goal.pose.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.goal.pose.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.goal.joint_pose = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.goal.item.data = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.goal.item.data = str[start:end]
      _x = self
      start = end
      end += 48
      (_x.goal.velocity.linear.x, _x.goal.velocity.linear.y, _x.goal.velocity.linear.z, _x.goal.velocity.angular.x, _x.goal.velocity.angular.y, _x.goal.velocity.angular.z,) = _get_struct_6d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_10d3I = None
def _get_struct_10d3I():
    global _struct_10d3I
    if _struct_10d3I is None:
        _struct_10d3I = struct.Struct("<10d3I")
    return _struct_10d3I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3B3I = None
def _get_struct_3B3I():
    global _struct_3B3I
    if _struct_3B3I is None:
        _struct_3B3I = struct.Struct("<3B3I")
    return _struct_3B3I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_6d = None
def _get_struct_6d():
    global _struct_6d
    if _struct_6d is None:
        _struct_6d = struct.Struct("<6d")
    return _struct_6d
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
