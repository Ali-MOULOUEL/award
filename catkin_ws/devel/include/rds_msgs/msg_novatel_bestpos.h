// Generated by gencpp from file rds_msgs/msg_novatel_bestpos.msg
// DO NOT EDIT!


#ifndef RDS_MSGS_MESSAGE_MSG_NOVATEL_BESTPOS_H
#define RDS_MSGS_MESSAGE_MSG_NOVATEL_BESTPOS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rds_msgs
{
template <class ContainerAllocator>
struct msg_novatel_bestpos_
{
  typedef msg_novatel_bestpos_<ContainerAllocator> Type;

  msg_novatel_bestpos_()
    : message_id(0)
    , port_address(0)
    , sequence(0)
    , idle(0)
    , time_status(0)
    , gps_week(0)
    , gps_millisecs(0)
    , status(0)
    , solution_status(0)
    , position_type(0)
    , latitude(0.0)
    , longitude(0.0)
    , height(0.0)
    , undulation(0.0)
    , datum_id(0)
    , latitude_standard_deviation(0.0)
    , longitude_standard_deviation(0.0)
    , height_standard_deviation(0.0)
    , base_station_id()
    , differential_age(0.0)
    , solution_age(0.0)
    , number_of_satellites(0)
    , number_of_satellites_in_solution(0)
    , num_gps_plus_glonass_l1(0)
    , num_gps_plus_glonass_l2(0)
    , extended_solution_status(0)
    , signals_used_mask(0)
    , crc()  {
    }
  msg_novatel_bestpos_(const ContainerAllocator& _alloc)
    : message_id(0)
    , port_address(0)
    , sequence(0)
    , idle(0)
    , time_status(0)
    , gps_week(0)
    , gps_millisecs(0)
    , status(0)
    , solution_status(0)
    , position_type(0)
    , latitude(0.0)
    , longitude(0.0)
    , height(0.0)
    , undulation(0.0)
    , datum_id(0)
    , latitude_standard_deviation(0.0)
    , longitude_standard_deviation(0.0)
    , height_standard_deviation(0.0)
    , base_station_id(_alloc)
    , differential_age(0.0)
    , solution_age(0.0)
    , number_of_satellites(0)
    , number_of_satellites_in_solution(0)
    , num_gps_plus_glonass_l1(0)
    , num_gps_plus_glonass_l2(0)
    , extended_solution_status(0)
    , signals_used_mask(0)
    , crc(_alloc)  {
  (void)_alloc;
    }



   typedef uint16_t _message_id_type;
  _message_id_type message_id;

   typedef uint8_t _port_address_type;
  _port_address_type port_address;

   typedef uint16_t _sequence_type;
  _sequence_type sequence;

   typedef uint8_t _idle_type;
  _idle_type idle;

   typedef uint8_t _time_status_type;
  _time_status_type time_status;

   typedef uint16_t _gps_week_type;
  _gps_week_type gps_week;

   typedef uint32_t _gps_millisecs_type;
  _gps_millisecs_type gps_millisecs;

   typedef uint32_t _status_type;
  _status_type status;

   typedef int32_t _solution_status_type;
  _solution_status_type solution_status;

   typedef int32_t _position_type_type;
  _position_type_type position_type;

   typedef double _latitude_type;
  _latitude_type latitude;

   typedef double _longitude_type;
  _longitude_type longitude;

   typedef double _height_type;
  _height_type height;

   typedef float _undulation_type;
  _undulation_type undulation;

   typedef int32_t _datum_id_type;
  _datum_id_type datum_id;

   typedef float _latitude_standard_deviation_type;
  _latitude_standard_deviation_type latitude_standard_deviation;

   typedef float _longitude_standard_deviation_type;
  _longitude_standard_deviation_type longitude_standard_deviation;

   typedef float _height_standard_deviation_type;
  _height_standard_deviation_type height_standard_deviation;

   typedef std::vector<int8_t, typename ContainerAllocator::template rebind<int8_t>::other >  _base_station_id_type;
  _base_station_id_type base_station_id;

   typedef float _differential_age_type;
  _differential_age_type differential_age;

   typedef float _solution_age_type;
  _solution_age_type solution_age;

   typedef uint8_t _number_of_satellites_type;
  _number_of_satellites_type number_of_satellites;

   typedef uint8_t _number_of_satellites_in_solution_type;
  _number_of_satellites_in_solution_type number_of_satellites_in_solution;

   typedef uint8_t _num_gps_plus_glonass_l1_type;
  _num_gps_plus_glonass_l1_type num_gps_plus_glonass_l1;

   typedef uint8_t _num_gps_plus_glonass_l2_type;
  _num_gps_plus_glonass_l2_type num_gps_plus_glonass_l2;

   typedef uint8_t _extended_solution_status_type;
  _extended_solution_status_type extended_solution_status;

   typedef uint8_t _signals_used_mask_type;
  _signals_used_mask_type signals_used_mask;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _crc_type;
  _crc_type crc;





  typedef boost::shared_ptr< ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator> const> ConstPtr;

}; // struct msg_novatel_bestpos_

typedef ::rds_msgs::msg_novatel_bestpos_<std::allocator<void> > msg_novatel_bestpos;

typedef boost::shared_ptr< ::rds_msgs::msg_novatel_bestpos > msg_novatel_bestposPtr;
typedef boost::shared_ptr< ::rds_msgs::msg_novatel_bestpos const> msg_novatel_bestposConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator1> & lhs, const ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator2> & rhs)
{
  return lhs.message_id == rhs.message_id &&
    lhs.port_address == rhs.port_address &&
    lhs.sequence == rhs.sequence &&
    lhs.idle == rhs.idle &&
    lhs.time_status == rhs.time_status &&
    lhs.gps_week == rhs.gps_week &&
    lhs.gps_millisecs == rhs.gps_millisecs &&
    lhs.status == rhs.status &&
    lhs.solution_status == rhs.solution_status &&
    lhs.position_type == rhs.position_type &&
    lhs.latitude == rhs.latitude &&
    lhs.longitude == rhs.longitude &&
    lhs.height == rhs.height &&
    lhs.undulation == rhs.undulation &&
    lhs.datum_id == rhs.datum_id &&
    lhs.latitude_standard_deviation == rhs.latitude_standard_deviation &&
    lhs.longitude_standard_deviation == rhs.longitude_standard_deviation &&
    lhs.height_standard_deviation == rhs.height_standard_deviation &&
    lhs.base_station_id == rhs.base_station_id &&
    lhs.differential_age == rhs.differential_age &&
    lhs.solution_age == rhs.solution_age &&
    lhs.number_of_satellites == rhs.number_of_satellites &&
    lhs.number_of_satellites_in_solution == rhs.number_of_satellites_in_solution &&
    lhs.num_gps_plus_glonass_l1 == rhs.num_gps_plus_glonass_l1 &&
    lhs.num_gps_plus_glonass_l2 == rhs.num_gps_plus_glonass_l2 &&
    lhs.extended_solution_status == rhs.extended_solution_status &&
    lhs.signals_used_mask == rhs.signals_used_mask &&
    lhs.crc == rhs.crc;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator1> & lhs, const ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rds_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dbab3b4899e83ce77d1e6c53cf057239";
  }

  static const char* value(const ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdbab3b4899e83ce7ULL;
  static const uint64_t static_value2 = 0x7d1e6c53cf057239ULL;
};

template<class ContainerAllocator>
struct DataType< ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rds_msgs/msg_novatel_bestpos";
  }

  static const char* value(const ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint16 message_id\n"
"uint8 port_address\n"
"uint16 sequence\n"
"uint8 idle\n"
"uint8 time_status\n"
"uint16 gps_week\n"
"uint32 gps_millisecs\n"
"uint32 status\n"
"int32 solution_status\n"
"int32 position_type\n"
"float64 latitude\n"
"float64 longitude\n"
"float64 height\n"
"float32 undulation\n"
"int32 datum_id\n"
"float32 latitude_standard_deviation\n"
"float32 longitude_standard_deviation\n"
"float32 height_standard_deviation\n"
"int8[] base_station_id\n"
"float32 differential_age\n"
"float32 solution_age\n"
"uint8 number_of_satellites\n"
"uint8 number_of_satellites_in_solution\n"
"uint8 num_gps_plus_glonass_l1\n"
"uint8 num_gps_plus_glonass_l2\n"
"uint8 extended_solution_status\n"
"uint8 signals_used_mask\n"
"uint8[] crc\n"
;
  }

  static const char* value(const ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.message_id);
      stream.next(m.port_address);
      stream.next(m.sequence);
      stream.next(m.idle);
      stream.next(m.time_status);
      stream.next(m.gps_week);
      stream.next(m.gps_millisecs);
      stream.next(m.status);
      stream.next(m.solution_status);
      stream.next(m.position_type);
      stream.next(m.latitude);
      stream.next(m.longitude);
      stream.next(m.height);
      stream.next(m.undulation);
      stream.next(m.datum_id);
      stream.next(m.latitude_standard_deviation);
      stream.next(m.longitude_standard_deviation);
      stream.next(m.height_standard_deviation);
      stream.next(m.base_station_id);
      stream.next(m.differential_age);
      stream.next(m.solution_age);
      stream.next(m.number_of_satellites);
      stream.next(m.number_of_satellites_in_solution);
      stream.next(m.num_gps_plus_glonass_l1);
      stream.next(m.num_gps_plus_glonass_l2);
      stream.next(m.extended_solution_status);
      stream.next(m.signals_used_mask);
      stream.next(m.crc);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct msg_novatel_bestpos_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rds_msgs::msg_novatel_bestpos_<ContainerAllocator>& v)
  {
    s << indent << "message_id: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.message_id);
    s << indent << "port_address: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.port_address);
    s << indent << "sequence: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.sequence);
    s << indent << "idle: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.idle);
    s << indent << "time_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.time_status);
    s << indent << "gps_week: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.gps_week);
    s << indent << "gps_millisecs: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.gps_millisecs);
    s << indent << "status: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.status);
    s << indent << "solution_status: ";
    Printer<int32_t>::stream(s, indent + "  ", v.solution_status);
    s << indent << "position_type: ";
    Printer<int32_t>::stream(s, indent + "  ", v.position_type);
    s << indent << "latitude: ";
    Printer<double>::stream(s, indent + "  ", v.latitude);
    s << indent << "longitude: ";
    Printer<double>::stream(s, indent + "  ", v.longitude);
    s << indent << "height: ";
    Printer<double>::stream(s, indent + "  ", v.height);
    s << indent << "undulation: ";
    Printer<float>::stream(s, indent + "  ", v.undulation);
    s << indent << "datum_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.datum_id);
    s << indent << "latitude_standard_deviation: ";
    Printer<float>::stream(s, indent + "  ", v.latitude_standard_deviation);
    s << indent << "longitude_standard_deviation: ";
    Printer<float>::stream(s, indent + "  ", v.longitude_standard_deviation);
    s << indent << "height_standard_deviation: ";
    Printer<float>::stream(s, indent + "  ", v.height_standard_deviation);
    s << indent << "base_station_id[]" << std::endl;
    for (size_t i = 0; i < v.base_station_id.size(); ++i)
    {
      s << indent << "  base_station_id[" << i << "]: ";
      Printer<int8_t>::stream(s, indent + "  ", v.base_station_id[i]);
    }
    s << indent << "differential_age: ";
    Printer<float>::stream(s, indent + "  ", v.differential_age);
    s << indent << "solution_age: ";
    Printer<float>::stream(s, indent + "  ", v.solution_age);
    s << indent << "number_of_satellites: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.number_of_satellites);
    s << indent << "number_of_satellites_in_solution: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.number_of_satellites_in_solution);
    s << indent << "num_gps_plus_glonass_l1: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.num_gps_plus_glonass_l1);
    s << indent << "num_gps_plus_glonass_l2: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.num_gps_plus_glonass_l2);
    s << indent << "extended_solution_status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.extended_solution_status);
    s << indent << "signals_used_mask: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.signals_used_mask);
    s << indent << "crc[]" << std::endl;
    for (size_t i = 0; i < v.crc.size(); ++i)
    {
      s << indent << "  crc[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.crc[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // RDS_MSGS_MESSAGE_MSG_NOVATEL_BESTPOS_H
