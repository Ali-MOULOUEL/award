// Generated by gencpp from file rds_foresight_camera_object_list_msgs/Frames.msg
// DO NOT EDIT!


#ifndef RDS_FORESIGHT_CAMERA_OBJECT_LIST_MSGS_MESSAGE_FRAMES_H
#define RDS_FORESIGHT_CAMERA_OBJECT_LIST_MSGS_MESSAGE_FRAMES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <rds_foresight_camera_object_list_msgs/Obstacle.h>

namespace rds_foresight_camera_object_list_msgs
{
template <class ContainerAllocator>
struct Frames_
{
  typedef Frames_<ContainerAllocator> Type;

  Frames_()
    : FrameIndex(0)
    , FrameTime(0.0)
    , Sensor()
    , obstacles_array()  {
    }
  Frames_(const ContainerAllocator& _alloc)
    : FrameIndex(0)
    , FrameTime(0.0)
    , Sensor(_alloc)
    , obstacles_array(_alloc)  {
  (void)_alloc;
    }



   typedef uint32_t _FrameIndex_type;
  _FrameIndex_type FrameIndex;

   typedef double _FrameTime_type;
  _FrameTime_type FrameTime;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _Sensor_type;
  _Sensor_type Sensor;

   typedef std::vector< ::rds_foresight_camera_object_list_msgs::Obstacle_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::rds_foresight_camera_object_list_msgs::Obstacle_<ContainerAllocator> >::other >  _obstacles_array_type;
  _obstacles_array_type obstacles_array;





  typedef boost::shared_ptr< ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator> const> ConstPtr;

}; // struct Frames_

typedef ::rds_foresight_camera_object_list_msgs::Frames_<std::allocator<void> > Frames;

typedef boost::shared_ptr< ::rds_foresight_camera_object_list_msgs::Frames > FramesPtr;
typedef boost::shared_ptr< ::rds_foresight_camera_object_list_msgs::Frames const> FramesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator1> & lhs, const ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator2> & rhs)
{
  return lhs.FrameIndex == rhs.FrameIndex &&
    lhs.FrameTime == rhs.FrameTime &&
    lhs.Sensor == rhs.Sensor &&
    lhs.obstacles_array == rhs.obstacles_array;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator1> & lhs, const ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rds_foresight_camera_object_list_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator> >
{
  static const char* value()
  {
    return "78983151239f6dca98568f526b0d43f7";
  }

  static const char* value(const ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x78983151239f6dcaULL;
  static const uint64_t static_value2 = 0x98568f526b0d43f7ULL;
};

template<class ContainerAllocator>
struct DataType< ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rds_foresight_camera_object_list_msgs/Frames";
  }

  static const char* value(const ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#Frames field \n"
"uint32 FrameIndex\n"
"float64 FrameTime\n"
"string Sensor\n"
"Obstacle[] obstacles_array\n"
"\n"
"================================================================================\n"
"MSG: rds_foresight_camera_object_list_msgs/Obstacle\n"
"#Obstacles field\n"
"BoundBox boundBox\n"
"float32 CenterX\n"
"float32 CenterY\n"
"string Class\n"
"float32 DangerLevel\n"
"float32 Distance\n"
"float32 ID\n"
"bool OnPath\n"
"bool OnRoad\n"
"float32 PositionX\n"
"float32 PositionY\n"
"float32 PositionZ\n"
"float32 RealHeight\n"
"float32 RealWidth \n"
"float32 RelativeSpeed\n"
"float32 TTC\n"
"\n"
"\n"
"\n"
"\n"
" \n"
"================================================================================\n"
"MSG: rds_foresight_camera_object_list_msgs/BoundBox\n"
"#BoundBox field\n"
"float32 BottomRightX\n"
"float32 BottomRightY\n"
"float32 TopLeftX\n"
"float32 TopLeftY\n"
;
  }

  static const char* value(const ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.FrameIndex);
      stream.next(m.FrameTime);
      stream.next(m.Sensor);
      stream.next(m.obstacles_array);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Frames_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rds_foresight_camera_object_list_msgs::Frames_<ContainerAllocator>& v)
  {
    s << indent << "FrameIndex: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.FrameIndex);
    s << indent << "FrameTime: ";
    Printer<double>::stream(s, indent + "  ", v.FrameTime);
    s << indent << "Sensor: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.Sensor);
    s << indent << "obstacles_array[]" << std::endl;
    for (size_t i = 0; i < v.obstacles_array.size(); ++i)
    {
      s << indent << "  obstacles_array[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::rds_foresight_camera_object_list_msgs::Obstacle_<ContainerAllocator> >::stream(s, indent + "    ", v.obstacles_array[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // RDS_FORESIGHT_CAMERA_OBJECT_LIST_MSGS_MESSAGE_FRAMES_H