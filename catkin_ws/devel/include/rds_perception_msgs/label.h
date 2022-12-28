// Generated by gencpp from file rds_perception_msgs/label.msg
// DO NOT EDIT!


#ifndef RDS_PERCEPTION_MSGS_MESSAGE_LABEL_H
#define RDS_PERCEPTION_MSGS_MESSAGE_LABEL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rds_perception_msgs
{
template <class ContainerAllocator>
struct label_
{
  typedef label_<ContainerAllocator> Type;

  label_()
    : label(0)  {
    }
  label_(const ContainerAllocator& _alloc)
    : label(0)  {
  (void)_alloc;
    }



   typedef uint8_t _label_type;
  _label_type label;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(LABEL_INVALID)
  #undef LABEL_INVALID
#endif
#if defined(_WIN32) && defined(LABEL_UNKNOWN)
  #undef LABEL_UNKNOWN
#endif
#if defined(_WIN32) && defined(LABEL_CAR)
  #undef LABEL_CAR
#endif
#if defined(_WIN32) && defined(LABEL_PEDESTRIAN)
  #undef LABEL_PEDESTRIAN
#endif
#if defined(_WIN32) && defined(LABEL_BIKE)
  #undef LABEL_BIKE
#endif

  enum {
    LABEL_INVALID = 0u,
    LABEL_UNKNOWN = 1u,
    LABEL_CAR = 2u,
    LABEL_PEDESTRIAN = 3u,
    LABEL_BIKE = 4u,
  };


  typedef boost::shared_ptr< ::rds_perception_msgs::label_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rds_perception_msgs::label_<ContainerAllocator> const> ConstPtr;

}; // struct label_

typedef ::rds_perception_msgs::label_<std::allocator<void> > label;

typedef boost::shared_ptr< ::rds_perception_msgs::label > labelPtr;
typedef boost::shared_ptr< ::rds_perception_msgs::label const> labelConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rds_perception_msgs::label_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rds_perception_msgs::label_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rds_perception_msgs::label_<ContainerAllocator1> & lhs, const ::rds_perception_msgs::label_<ContainerAllocator2> & rhs)
{
  return lhs.label == rhs.label;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rds_perception_msgs::label_<ContainerAllocator1> & lhs, const ::rds_perception_msgs::label_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rds_perception_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rds_perception_msgs::label_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rds_perception_msgs::label_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rds_perception_msgs::label_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rds_perception_msgs::label_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rds_perception_msgs::label_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rds_perception_msgs::label_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rds_perception_msgs::label_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c06ea1895dbf2fba71ea775848eb312a";
  }

  static const char* value(const ::rds_perception_msgs::label_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc06ea1895dbf2fbaULL;
  static const uint64_t static_value2 = 0x71ea775848eb312aULL;
};

template<class ContainerAllocator>
struct DataType< ::rds_perception_msgs::label_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rds_perception_msgs/label";
  }

  static const char* value(const ::rds_perception_msgs::label_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rds_perception_msgs::label_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Tracking object type\n"
"uint8 LABEL_INVALID = 0\n"
"uint8 LABEL_UNKNOWN = 1\n"
"uint8 LABEL_CAR = 2\n"
"uint8 LABEL_PEDESTRIAN = 3\n"
"uint8 LABEL_BIKE = 4\n"
"\n"
"uint8 label\n"
;
  }

  static const char* value(const ::rds_perception_msgs::label_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rds_perception_msgs::label_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.label);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct label_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rds_perception_msgs::label_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rds_perception_msgs::label_<ContainerAllocator>& v)
  {
    s << indent << "label: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.label);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RDS_PERCEPTION_MSGS_MESSAGE_LABEL_H