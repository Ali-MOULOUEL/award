// Generated by gencpp from file rds_anticollision/msg_vehicle_state_common.msg
// DO NOT EDIT!


#ifndef RDS_ANTICOLLISION_MESSAGE_MSG_VEHICLE_STATE_COMMON_H
#define RDS_ANTICOLLISION_MESSAGE_MSG_VEHICLE_STATE_COMMON_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <rds_anticollision/drive_mode.h>
#include <rds_anticollision/motion.h>
#include <rds_anticollision/emergency_stop_root_cause.h>
#include <rds_anticollision/error.h>
#include <rds_anticollision/error.h>
#include <rds_anticollision/safety_chain_state.h>
#include <rds_anticollision/ability.h>
#include <rds_anticollision/ability.h>
#include <rds_anticollision/start_mission_state.h>

namespace rds_anticollision
{
template <class ContainerAllocator>
struct msg_vehicle_state_common_
{
  typedef msg_vehicle_state_common_<ContainerAllocator> Type;

  msg_vehicle_state_common_()
    : header()
    , drive_mode()
    , motion()
    , emergency_stop_root_causes()
    , errors()
    , warnings()
    , safety_chain_state()
    , controller_status()
    , engagement_ability()
    , start_mission_state()  {
    }
  msg_vehicle_state_common_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , drive_mode(_alloc)
    , motion(_alloc)
    , emergency_stop_root_causes(_alloc)
    , errors(_alloc)
    , warnings(_alloc)
    , safety_chain_state(_alloc)
    , controller_status(_alloc)
    , engagement_ability(_alloc)
    , start_mission_state(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::rds_anticollision::drive_mode_<ContainerAllocator>  _drive_mode_type;
  _drive_mode_type drive_mode;

   typedef  ::rds_anticollision::motion_<ContainerAllocator>  _motion_type;
  _motion_type motion;

   typedef  ::rds_anticollision::emergency_stop_root_cause_<ContainerAllocator>  _emergency_stop_root_causes_type;
  _emergency_stop_root_causes_type emergency_stop_root_causes;

   typedef std::vector< ::rds_anticollision::error_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::rds_anticollision::error_<ContainerAllocator> >::other >  _errors_type;
  _errors_type errors;

   typedef std::vector< ::rds_anticollision::error_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::rds_anticollision::error_<ContainerAllocator> >::other >  _warnings_type;
  _warnings_type warnings;

   typedef  ::rds_anticollision::safety_chain_state_<ContainerAllocator>  _safety_chain_state_type;
  _safety_chain_state_type safety_chain_state;

   typedef  ::rds_anticollision::ability_<ContainerAllocator>  _controller_status_type;
  _controller_status_type controller_status;

   typedef  ::rds_anticollision::ability_<ContainerAllocator>  _engagement_ability_type;
  _engagement_ability_type engagement_ability;

   typedef  ::rds_anticollision::start_mission_state_<ContainerAllocator>  _start_mission_state_type;
  _start_mission_state_type start_mission_state;





  typedef boost::shared_ptr< ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator> const> ConstPtr;

}; // struct msg_vehicle_state_common_

typedef ::rds_anticollision::msg_vehicle_state_common_<std::allocator<void> > msg_vehicle_state_common;

typedef boost::shared_ptr< ::rds_anticollision::msg_vehicle_state_common > msg_vehicle_state_commonPtr;
typedef boost::shared_ptr< ::rds_anticollision::msg_vehicle_state_common const> msg_vehicle_state_commonConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator1> & lhs, const ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.drive_mode == rhs.drive_mode &&
    lhs.motion == rhs.motion &&
    lhs.emergency_stop_root_causes == rhs.emergency_stop_root_causes &&
    lhs.errors == rhs.errors &&
    lhs.warnings == rhs.warnings &&
    lhs.safety_chain_state == rhs.safety_chain_state &&
    lhs.controller_status == rhs.controller_status &&
    lhs.engagement_ability == rhs.engagement_ability &&
    lhs.start_mission_state == rhs.start_mission_state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator1> & lhs, const ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rds_anticollision

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5c4e825550da842f8d9590a064f49c07";
  }

  static const char* value(const ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5c4e825550da842fULL;
  static const uint64_t static_value2 = 0x8d9590a064f49c07ULL;
};

template<class ContainerAllocator>
struct DataType< ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rds_anticollision/msg_vehicle_state_common";
  }

  static const char* value(const ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"drive_mode drive_mode\n"
"\n"
"motion motion\n"
"emergency_stop_root_cause emergency_stop_root_causes\n"
"error[] errors\n"
"error[] warnings\n"
"\n"
"safety_chain_state safety_chain_state\n"
"ability controller_status\n"
"ability engagement_ability\n"
"start_mission_state start_mission_state\n"
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
"MSG: rds_anticollision/drive_mode\n"
"uint8 DRIVE_MODE_MANUAL = 0 \n"
"uint8 DRIVE_MODE_AUTOMATIC = 1\n"
"uint8 DRIVE_MODE_TELEOPERATION = 2\n"
"\n"
"uint8 drive_mode\n"
"\n"
"================================================================================\n"
"MSG: rds_anticollision/motion\n"
"# Motion type\n"
"uint8 MOTION_UNKNOWN = 0\n"
"uint8 MOTION_MOVING = 1\n"
"uint8 MOTION_NULL_SPEED = 2\n"
"uint8 MOTION_PARKED = 3\n"
"\n"
"uint8 motion\n"
"\n"
"================================================================================\n"
"MSG: rds_anticollision/emergency_stop_root_cause\n"
"error[] causes\n"
"\n"
"# Vehicle Context when fired\n"
"float32 speed\n"
"\n"
"================================================================================\n"
"MSG: rds_anticollision/error\n"
"# Generic error\n"
"# Value field equals 0 means no error (whatever category is set to)\n"
"uint32 category\n"
"int32 value\n"
"\n"
"================================================================================\n"
"MSG: rds_anticollision/safety_chain_state\n"
"uint8 STATE_ACTIVE = 0\n"
"uint8 STATE_DISABLED = 1\n"
"uint8 STATE_FAILSOFT = 2\n"
"\n"
"uint8 state\n"
"\n"
"================================================================================\n"
"MSG: rds_anticollision/ability\n"
"int8 ABILITY_NOT_APPLICABLE = -1\n"
"int8 ABILITY_NOT_AVAILABLE = 0 \n"
"int8 ABILITY_TRUE = 1\n"
"int8 ABILITY_FALSE = 2\n"
"\n"
"int8 ability\n"
"\n"
"================================================================================\n"
"MSG: rds_anticollision/start_mission_state\n"
"uint8 STATE_NOT_SUPPORTED = 0\n"
"uint8 STATE_NOT_TRIGGERABLE = 1\n"
"uint8 STATE_TRIGGERABLE = 2\n"
"uint8 STATE_TRIGGERED = 3\n"
"\n"
"uint8 state\n"
;
  }

  static const char* value(const ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.drive_mode);
      stream.next(m.motion);
      stream.next(m.emergency_stop_root_causes);
      stream.next(m.errors);
      stream.next(m.warnings);
      stream.next(m.safety_chain_state);
      stream.next(m.controller_status);
      stream.next(m.engagement_ability);
      stream.next(m.start_mission_state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct msg_vehicle_state_common_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rds_anticollision::msg_vehicle_state_common_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "drive_mode: ";
    s << std::endl;
    Printer< ::rds_anticollision::drive_mode_<ContainerAllocator> >::stream(s, indent + "  ", v.drive_mode);
    s << indent << "motion: ";
    s << std::endl;
    Printer< ::rds_anticollision::motion_<ContainerAllocator> >::stream(s, indent + "  ", v.motion);
    s << indent << "emergency_stop_root_causes: ";
    s << std::endl;
    Printer< ::rds_anticollision::emergency_stop_root_cause_<ContainerAllocator> >::stream(s, indent + "  ", v.emergency_stop_root_causes);
    s << indent << "errors[]" << std::endl;
    for (size_t i = 0; i < v.errors.size(); ++i)
    {
      s << indent << "  errors[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::rds_anticollision::error_<ContainerAllocator> >::stream(s, indent + "    ", v.errors[i]);
    }
    s << indent << "warnings[]" << std::endl;
    for (size_t i = 0; i < v.warnings.size(); ++i)
    {
      s << indent << "  warnings[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::rds_anticollision::error_<ContainerAllocator> >::stream(s, indent + "    ", v.warnings[i]);
    }
    s << indent << "safety_chain_state: ";
    s << std::endl;
    Printer< ::rds_anticollision::safety_chain_state_<ContainerAllocator> >::stream(s, indent + "  ", v.safety_chain_state);
    s << indent << "controller_status: ";
    s << std::endl;
    Printer< ::rds_anticollision::ability_<ContainerAllocator> >::stream(s, indent + "  ", v.controller_status);
    s << indent << "engagement_ability: ";
    s << std::endl;
    Printer< ::rds_anticollision::ability_<ContainerAllocator> >::stream(s, indent + "  ", v.engagement_ability);
    s << indent << "start_mission_state: ";
    s << std::endl;
    Printer< ::rds_anticollision::start_mission_state_<ContainerAllocator> >::stream(s, indent + "  ", v.start_mission_state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RDS_ANTICOLLISION_MESSAGE_MSG_VEHICLE_STATE_COMMON_H
