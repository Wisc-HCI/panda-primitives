// Generated by gencpp from file authoring_msgs/AuthoringActionGoal.msg
// DO NOT EDIT!


#ifndef AUTHORING_MSGS_MESSAGE_AUTHORINGACTIONGOAL_H
#define AUTHORING_MSGS_MESSAGE_AUTHORINGACTIONGOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <authoring_msgs/AuthoringGoal.h>

namespace authoring_msgs
{
template <class ContainerAllocator>
struct AuthoringActionGoal_
{
  typedef AuthoringActionGoal_<ContainerAllocator> Type;

  AuthoringActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  AuthoringActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::authoring_msgs::AuthoringGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct AuthoringActionGoal_

typedef ::authoring_msgs::AuthoringActionGoal_<std::allocator<void> > AuthoringActionGoal;

typedef boost::shared_ptr< ::authoring_msgs::AuthoringActionGoal > AuthoringActionGoalPtr;
typedef boost::shared_ptr< ::authoring_msgs::AuthoringActionGoal const> AuthoringActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator1> & lhs, const ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_id == rhs.goal_id &&
    lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator1> & lhs, const ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace authoring_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "de05a9fa4de9d6c20e0eb50635b57b52";
  }

  static const char* value(const ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xde05a9fa4de9d6c2ULL;
  static const uint64_t static_value2 = 0x0e0eb50635b57b52ULL;
};

template<class ContainerAllocator>
struct DataType< ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "authoring_msgs/AuthoringActionGoal";
  }

  static const char* value(const ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"AuthoringGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: authoring_msgs/AuthoringGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal definition\n"
"authoring_msgs/Action goal\n"
"\n"
"================================================================================\n"
"MSG: authoring_msgs/Action\n"
"#Types\n"
"uint8 PICK=0\n"
"uint8 SCREW=1\n"
"uint8 PLACE=2\n"
"uint8 WIPE=3\n"
"uint8 MOVE_OBJECT=4\n"
"uint8 RESET=5\n"
"uint8 MOVE=6\n"
"uint8 MOVE_TO_CONTACT=7\n"
"uint8 GRASP=8\n"
"uint8 RELEASE=9\n"
"uint8 VIEW=10\n"
"uint8 INSPECT=11\n"
"uint8 WAIT=12\n"
"uint8 PUSH=13\n"
"uint8 STOP=14\n"
"uint8 INSERT=15\n"
"uint8 MOVE_FORCE=16\n"
"uint8 UNSCREW=17\n"
"uint8 MOVE_ANGLE=18\n"
"uint8 PULL=19\n"
"uint8 CAMERA_VELOCITY=20\n"
"uint8 MOVE_UNKNOWN=21\n"
"uint8 PULL_DRAWER=22\n"
"uint8 BIAS_FORCES=23\n"
"uint8 DROP=24\n"
"uint8 RELEASE_FORCE=25\n"
"\n"
"# Type\n"
"uint8 type\n"
"\n"
"std_msgs/Bool sim\n"
"\n"
"std_msgs/Bool finished\n"
"\n"
"# HybridPoseArray (for high level planning)\n"
"panda_ros_msgs/HybridPoseArray poses\n"
"\n"
"# HybridPose (for low level planning)\n"
"panda_ros_msgs/HybridPose pose\n"
"\n"
"# JointState (for going to fixed position, example reset)\n"
"float64[] joint_pose\n"
"\n"
"# Item\n"
"std_msgs/String item\n"
"\n"
"# Velocity\n"
"geometry_msgs/Twist velocity\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Bool\n"
"bool data\n"
"================================================================================\n"
"MSG: panda_ros_msgs/HybridPoseArray\n"
"Header header\n"
"panda_ros_msgs/HybridPose[] poses\n"
"\n"
"================================================================================\n"
"MSG: panda_ros_msgs/HybridPose\n"
"# Pose\n"
"geometry_msgs/Pose pose\n"
"\n"
"# Selection vector [6 (drop rotation for now)]\n"
"uint8[] sel_vector\n"
"\n"
"# Desired Wrench\n"
"geometry_msgs/Wrench wrench\n"
"\n"
"# Constraint Frame (might drop)\n"
"geometry_msgs/Quaternion constraint_frame\n"
"\n"
"# Header\n"
"Header header\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Wrench\n"
"# This represents force in free space, separated into\n"
"# its linear and angular parts.\n"
"Vector3  force\n"
"Vector3  torque\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: std_msgs/String\n"
"string data\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
;
  }

  static const char* value(const ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AuthoringActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::authoring_msgs::AuthoringActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::authoring_msgs::AuthoringGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTHORING_MSGS_MESSAGE_AUTHORINGACTIONGOAL_H
