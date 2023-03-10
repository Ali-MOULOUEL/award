// Generated by gencpp from file rds_conti_radar_object_list_msgs/ObjProvidedKinematicStates.msg
// DO NOT EDIT!


#ifndef RDS_CONTI_RADAR_OBJECT_LIST_MSGS_MESSAGE_OBJPROVIDEDKINEMATICSTATES_H
#define RDS_CONTI_RADAR_OBJECT_LIST_MSGS_MESSAGE_OBJPROVIDEDKINEMATICSTATES_H


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
struct ObjProvidedKinematicStates_
{
  typedef ObjProvidedKinematicStates_<ContainerAllocator> Type;

  ObjProvidedKinematicStates_()
    : KinematicState(0)  {
    }
  ObjProvidedKinematicStates_(const ContainerAllocator& _alloc)
    : KinematicState(0)  {
  (void)_alloc;
    }



   typedef uint8_t _KinematicState_type;
  _KinematicState_type KinematicState;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(KINEMATICSTATE_RELATIVE)
  #undef KINEMATICSTATE_RELATIVE
#endif
#if defined(_WIN32) && defined(KINEMATICSTATE_ABSOLUTE)
  #undef KINEMATICSTATE_ABSOLUTE
#endif
#if defined(_WIN32) && defined(KINEMATICSTATE_RELATIVE_AND_ABSOLUTE)
  #undef KINEMATICSTATE_RELATIVE_AND_ABSOLUTE
#endif

  enum {
    KINEMATICSTATE_RELATIVE = 0u,
    KINEMATICSTATE_ABSOLUTE = 1u,
    KINEMATICSTATE_RELATIVE_AND_ABSOLUTE = 2u,
  };


  typedef boost::shared_ptr< ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator> const> ConstPtr;

}; // struct ObjProvidedKinematicStates_

typedef ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<std::allocator<void> > ObjProvidedKinematicStates;

typedef boost::shared_ptr< ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates > ObjProvidedKinematicStatesPtr;
typedef boost::shared_ptr< ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates const> ObjProvidedKinematicStatesConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator1> & lhs, const ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator2> & rhs)
{
  return lhs.KinematicState == rhs.KinematicState;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator1> & lhs, const ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rds_conti_radar_object_list_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2f825bc1f0caabbfa32e1215fd872b81";
  }

  static const char* value(const ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2f825bc1f0caabbfULL;
  static const uint64_t static_value2 = 0xa32e1215fd872b81ULL;
};

template<class ContainerAllocator>
struct DataType< ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rds_conti_radar_object_list_msgs/ObjProvidedKinematicStates";
  }

  static const char* value(const ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#Object kinematic state\n"
"uint8 KINEMATICSTATE_RELATIVE = 0\n"
"uint8 KINEMATICSTATE_ABSOLUTE = 1\n"
"uint8 KINEMATICSTATE_RELATIVE_AND_ABSOLUTE = 2\n"
"\n"
"uint8 KinematicState\n"
;
  }

  static const char* value(const ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.KinematicState);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObjProvidedKinematicStates_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator>& v)
  {
    s << indent << "KinematicState: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.KinematicState);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RDS_CONTI_RADAR_OBJECT_LIST_MSGS_MESSAGE_OBJPROVIDEDKINEMATICSTATES_H
