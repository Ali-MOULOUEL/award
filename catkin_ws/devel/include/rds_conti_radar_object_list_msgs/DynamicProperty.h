// Generated by gencpp from file rds_conti_radar_object_list_msgs/DynamicProperty.msg
// DO NOT EDIT!


#ifndef RDS_CONTI_RADAR_OBJECT_LIST_MSGS_MESSAGE_DYNAMICPROPERTY_H
#define RDS_CONTI_RADAR_OBJECT_LIST_MSGS_MESSAGE_DYNAMICPROPERTY_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rds_conti_radar_object_list_msgs
{
template <class ContainerAllocator>
struct DynamicProperty_
{
  typedef DynamicProperty_<ContainerAllocator> Type;

  DynamicProperty_()
    : DynamicProperty(0)  {
    }
  DynamicProperty_(const ContainerAllocator& _alloc)
    : DynamicProperty(0)  {
  (void)_alloc;
    }



   typedef uint8_t _DynamicProperty_type;
  _DynamicProperty_type DynamicProperty;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(DYNAMICPROPERTY_MOVING)
  #undef DYNAMICPROPERTY_MOVING
#endif
#if defined(_WIN32) && defined(DYNAMICPROPERTY_STATIONARY)
  #undef DYNAMICPROPERTY_STATIONARY
#endif
#if defined(_WIN32) && defined(DYNAMICPROPERTY_ONCOMING)
  #undef DYNAMICPROPERTY_ONCOMING
#endif
#if defined(_WIN32) && defined(DYNAMICPROPERTY_UNKNOWN)
  #undef DYNAMICPROPERTY_UNKNOWN
#endif

  enum {
    DYNAMICPROPERTY_MOVING = 0u,
    DYNAMICPROPERTY_STATIONARY = 1u,
    DYNAMICPROPERTY_ONCOMING = 2u,
    DYNAMICPROPERTY_UNKNOWN = 3u,
  };


  typedef boost::shared_ptr< ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator> const> ConstPtr;

}; // struct DynamicProperty_

typedef ::rds_conti_radar_object_list_msgs::DynamicProperty_<std::allocator<void> > DynamicProperty;

typedef boost::shared_ptr< ::rds_conti_radar_object_list_msgs::DynamicProperty > DynamicPropertyPtr;
typedef boost::shared_ptr< ::rds_conti_radar_object_list_msgs::DynamicProperty const> DynamicPropertyConstPtr;

// constants requiring out of line definition

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator1> & lhs, const ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator2> & rhs)
{
  return lhs.DynamicProperty == rhs.DynamicProperty;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator1> & lhs, const ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rds_conti_radar_object_list_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator> >
{
  static const char* value()
  {
    return "85d5c392a5c41a0edefab8879d7f3fbf";
  }

  static const char* value(const ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x85d5c392a5c41a0eULL;
  static const uint64_t static_value2 = 0xdefab8879d7f3fbfULL;
};

template<class ContainerAllocator>
struct DataType< ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rds_conti_radar_object_list_msgs/DynamicProperty";
  }

  static const char* value(const ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#RadarObject DynamicProperty field\n"
"uint8 DYNAMICPROPERTY_MOVING = 0\n"
"uint8 DYNAMICPROPERTY_STATIONARY = 1\n"
"uint8 DYNAMICPROPERTY_ONCOMING = 2\n"
"uint8 DYNAMICPROPERTY_UNKNOWN = 3\n"
"\n"
"uint8 DynamicProperty\n"
;
  }

  static const char* value(const ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.DynamicProperty);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DynamicProperty_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rds_conti_radar_object_list_msgs::DynamicProperty_<ContainerAllocator>& v)
  {
    s << indent << "DynamicProperty: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.DynamicProperty);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RDS_CONTI_RADAR_OBJECT_LIST_MSGS_MESSAGE_DYNAMICPROPERTY_H
