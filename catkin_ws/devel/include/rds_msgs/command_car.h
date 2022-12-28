// Generated by gencpp from file rds_msgs/command_car.msg
// DO NOT EDIT!


#ifndef RDS_MSGS_MESSAGE_COMMAND_CAR_H
#define RDS_MSGS_MESSAGE_COMMAND_CAR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace rds_msgs
{
template <class ContainerAllocator>
struct command_car_
{
  typedef command_car_<ContainerAllocator> Type;

  command_car_()
    : header()
    , speed(0.0)
    , front_steering(0.0)
    , rear_steering(0.0)
    , acceleration(0.0)
    , deceleration(0.0)  {
    }
  command_car_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , speed(0.0)
    , front_steering(0.0)
    , rear_steering(0.0)
    , acceleration(0.0)
    , deceleration(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _speed_type;
  _speed_type speed;

   typedef float _front_steering_type;
  _front_steering_type front_steering;

   typedef float _rear_steering_type;
  _rear_steering_type rear_steering;

   typedef float _acceleration_type;
  _acceleration_type acceleration;

   typedef float _deceleration_type;
  _deceleration_type deceleration;





  typedef boost::shared_ptr< ::rds_msgs::command_car_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rds_msgs::command_car_<ContainerAllocator> const> ConstPtr;

}; // struct command_car_

typedef ::rds_msgs::command_car_<std::allocator<void> > command_car;

typedef boost::shared_ptr< ::rds_msgs::command_car > command_carPtr;
typedef boost::shared_ptr< ::rds_msgs::command_car const> command_carConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rds_msgs::command_car_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rds_msgs::command_car_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rds_msgs::command_car_<ContainerAllocator1> & lhs, const ::rds_msgs::command_car_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.speed == rhs.speed &&
    lhs.front_steering == rhs.front_steering &&
    lhs.rear_steering == rhs.rear_steering &&
    lhs.acceleration == rhs.acceleration &&
    lhs.deceleration == rhs.deceleration;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rds_msgs::command_car_<ContainerAllocator1> & lhs, const ::rds_msgs::command_car_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rds_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rds_msgs::command_car_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rds_msgs::command_car_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rds_msgs::command_car_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rds_msgs::command_car_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rds_msgs::command_car_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rds_msgs::command_car_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rds_msgs::command_car_<ContainerAllocator> >
{
  static const char* value()
  {
    return "acc368c3bdfdfc6be58c8f9da8ae46ae";
  }

  static const char* value(const ::rds_msgs::command_car_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xacc368c3bdfdfc6bULL;
  static const uint64_t static_value2 = 0xe58c8f9da8ae46aeULL;
};

template<class ContainerAllocator>
struct DataType< ::rds_msgs::command_car_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rds_msgs/command_car";
  }

  static const char* value(const ::rds_msgs::command_car_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rds_msgs::command_car_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"float32 speed\n"
"float32 front_steering\n"
"float32 rear_steering\n"
"float32 acceleration\n"
"float32 deceleration\n"
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
;
  }

  static const char* value(const ::rds_msgs::command_car_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rds_msgs::command_car_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.speed);
      stream.next(m.front_steering);
      stream.next(m.rear_steering);
      stream.next(m.acceleration);
      stream.next(m.deceleration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct command_car_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rds_msgs::command_car_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rds_msgs::command_car_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "speed: ";
    Printer<float>::stream(s, indent + "  ", v.speed);
    s << indent << "front_steering: ";
    Printer<float>::stream(s, indent + "  ", v.front_steering);
    s << indent << "rear_steering: ";
    Printer<float>::stream(s, indent + "  ", v.rear_steering);
    s << indent << "acceleration: ";
    Printer<float>::stream(s, indent + "  ", v.acceleration);
    s << indent << "deceleration: ";
    Printer<float>::stream(s, indent + "  ", v.deceleration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RDS_MSGS_MESSAGE_COMMAND_CAR_H