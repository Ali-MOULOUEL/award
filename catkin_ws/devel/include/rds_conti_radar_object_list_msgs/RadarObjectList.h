// Generated by gencpp from file rds_conti_radar_object_list_msgs/RadarObjectList.msg
// DO NOT EDIT!


#ifndef RDS_CONTI_RADAR_OBJECT_LIST_MSGS_MESSAGE_RADAROBJECTLIST_H
#define RDS_CONTI_RADAR_OBJECT_LIST_MSGS_MESSAGE_RADAROBJECTLIST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <rds_conti_radar_object_list_msgs/SensorMsgHeader.h>
#include <rds_conti_radar_object_list_msgs/RadarObject.h>
#include <rds_conti_radar_object_list_msgs/ObjProvidedKinematicStates.h>

namespace rds_conti_radar_object_list_msgs
{
template <class ContainerAllocator>
struct RadarObjectList_
{
  typedef RadarObjectList_<ContainerAllocator> Type;

  RadarObjectList_()
    : Header()
    , CurrentYawAngle(0.0)
    , EgoVelocity(0.0)
    , EgoYawRate(0.0)
    , NofUsedObjects(0)
    , RadarObjectArray()
    , ExternalSensorID(0)
    , KinematicState()  {
    }
  RadarObjectList_(const ContainerAllocator& _alloc)
    : Header(_alloc)
    , CurrentYawAngle(0.0)
    , EgoVelocity(0.0)
    , EgoYawRate(0.0)
    , NofUsedObjects(0)
    , RadarObjectArray(_alloc)
    , ExternalSensorID(0)
    , KinematicState(_alloc)  {
  (void)_alloc;
    }



   typedef  ::rds_conti_radar_object_list_msgs::SensorMsgHeader_<ContainerAllocator>  _Header_type;
  _Header_type Header;

   typedef float _CurrentYawAngle_type;
  _CurrentYawAngle_type CurrentYawAngle;

   typedef float _EgoVelocity_type;
  _EgoVelocity_type EgoVelocity;

   typedef float _EgoYawRate_type;
  _EgoYawRate_type EgoYawRate;

   typedef uint32_t _NofUsedObjects_type;
  _NofUsedObjects_type NofUsedObjects;

   typedef std::vector< ::rds_conti_radar_object_list_msgs::RadarObject_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::rds_conti_radar_object_list_msgs::RadarObject_<ContainerAllocator> >> _RadarObjectArray_type;
  _RadarObjectArray_type RadarObjectArray;

   typedef uint32_t _ExternalSensorID_type;
  _ExternalSensorID_type ExternalSensorID;

   typedef  ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator>  _KinematicState_type;
  _KinematicState_type KinematicState;





  typedef boost::shared_ptr< ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator> const> ConstPtr;

}; // struct RadarObjectList_

typedef ::rds_conti_radar_object_list_msgs::RadarObjectList_<std::allocator<void> > RadarObjectList;

typedef boost::shared_ptr< ::rds_conti_radar_object_list_msgs::RadarObjectList > RadarObjectListPtr;
typedef boost::shared_ptr< ::rds_conti_radar_object_list_msgs::RadarObjectList const> RadarObjectListConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator1> & lhs, const ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator2> & rhs)
{
  return lhs.Header == rhs.Header &&
    lhs.CurrentYawAngle == rhs.CurrentYawAngle &&
    lhs.EgoVelocity == rhs.EgoVelocity &&
    lhs.EgoYawRate == rhs.EgoYawRate &&
    lhs.NofUsedObjects == rhs.NofUsedObjects &&
    lhs.RadarObjectArray == rhs.RadarObjectArray &&
    lhs.ExternalSensorID == rhs.ExternalSensorID &&
    lhs.KinematicState == rhs.KinematicState;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator1> & lhs, const ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rds_conti_radar_object_list_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7f981a9cd2dc8a68e05581fae97c445d";
  }

  static const char* value(const ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7f981a9cd2dc8a68ULL;
  static const uint64_t static_value2 = 0xe05581fae97c445dULL;
};

template<class ContainerAllocator>
struct DataType< ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rds_conti_radar_object_list_msgs/RadarObjectList";
  }

  static const char* value(const ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "SensorMsgHeader Header\n"
"\n"
"float32 CurrentYawAngle             #current mounting yaw angle [rad], range -3.14159;3.14159 \n"
"float32 EgoVelocity                 #velocity of ego vehicle, range -150;150 [m/s]\n"
"float32 EgoYawRate                  #yaw rate of ego vehicle [rad/s], range -4;4\n"
"uint32 NofUsedObjects               #number of available objects\n"
"RadarObject[] RadarObjectArray \n"
"uint32 ExternalSensorID             #Reference to the external Sensor ID\n"
"ObjProvidedKinematicStates KinematicState #indication which reference the kinematic states are refering\n"
"\n"
"================================================================================\n"
"MSG: rds_conti_radar_object_list_msgs/SensorMsgHeader\n"
"#SensorMsgHeader fields\n"
"MsgHeader CommonHeader\n"
"uint32 SensorId             #sensor ID\n"
"SignalStatus SignalStatus   #status of the signals in the data packet\n"
"================================================================================\n"
"MSG: rds_conti_radar_object_list_msgs/MsgHeader\n"
"#MsgHeader fields\n"
"uint32 Seq          #sequence ID: consecutively increasing ID\n"
"Time stamp\n"
"TimeStampSource Timestamp_source\n"
"TimeStampSyncState TimeStamp_sync_state\n"
"\n"
"================================================================================\n"
"MSG: rds_conti_radar_object_list_msgs/Time\n"
"#Time fields\n"
"uint32 Sec\n"
"uint32 Nsec \n"
"\n"
"================================================================================\n"
"MSG: rds_conti_radar_object_list_msgs/TimeStampSource\n"
"#MsgHeader field TimeStampSource\n"
"uint8 TIMESTAMPSOURCE_UNKNOWN_SOURCE = 0    #No information on the source at all\n"
"uint8 TIMESTAMPSOURCE_SENSOR = 1            #Timestamp is set by sensor\n"
"uint8 TIMESTAMPSOURCE_ALGO = 2              #Timestamp is set by algo\n"
"\n"
"uint8 TimeStampSource \n"
"================================================================================\n"
"MSG: rds_conti_radar_object_list_msgs/TimeStampSyncState\n"
"#MsgHeader field TimeStampSyncState\n"
"uint8 TIMESTAMPSYNCSTATE_UNKNOWN_SYNC = 0              #No information on the sync state at all\n"
"uint8 TIMESTAMPSYNCSTATE_NOT_SYNCED = 1                #timestamp is not synced at all\n"
"uint8 TIMESTAMPSYNCSTATE_SYNCED_GTC = 2                #timestamp is synced with GTC mechanism\n"
"uint8 TIMESTAMPSYNCSTATE_SYNCED_PTP = 3                #timestamp is synced with PTP mechanism\n"
"uint8 TIMESTAMPSYNCSTATE_SYNCED_REPLAY = 4             #timestamp is synced by replay mechanism\n"
"\n"
"uint8 TimeStampSyncState\n"
"\n"
"================================================================================\n"
"MSG: rds_conti_radar_object_list_msgs/SignalStatus\n"
"#SensorMsgHeader SignalStatus field\n"
"uint8 SIGNALSTATUS_EM_SIGSTATE_INIT = 0\n"
"uint8 SIGNALSTATUS_EM_SIGSTATE_OK = 1\n"
"uint8 SIGNALSTATUS_EM_SIGSTATE_INVALID = 2\n"
"\n"
"uint8 SignalStatus\n"
"================================================================================\n"
"MSG: rds_conti_radar_object_list_msgs/RadarObject\n"
"#RadarObject fields\n"
"uint32 ObjId                #object ID\n"
"uint32 InternalId           #object ID in internal object list\n"
"float32 DistX               #x-position in Carthesian object coordiante [m], range -200;200\n"
"float32 DistY               #y-position in Carthesian object coordiante [m], range -200;200\n"
"float32 VrelX               #relative velocity in x-direction [m/s], range -400;400\n"
"float32 VrelY               #relative velocity in y-direction [m/s], range -400;400\n"
"float32 ArelX               #relative acceleration in x-direction [m/s??], range -50;50\n"
"float32 ArelY               #relative acceleration in y-direction [m/s??], range -50;50\n"
"float32 DistXStd            #standard deviation of x-position [m], range 0;30\n"
"float32 DistYStd            #standard deviation of y-position [m], range 0;30\n"
"float32 VrelXStd            #standard deviation of relative velocity in x-direction [m/s], range 0;30\n"
"float32 VrelYStd            #standard deviation of relative velocity in y-direction [m/s], range 0;30\n"
"float32 ArelXStd            #standard deviation of relative acceleration in x-direction [m/s??], range 0;30\n"
"float32 ArelYStd            #standard deviation of relative acceleration in y-direction [m/s??], range 0;30\n"
"float32 LDeltaX_left        #x-distance between reference point and bounding box (left, mid, right) [m], range -50;50\n"
"float32 LDeltaX_mid\n"
"float32 LDeltaX_right\n"
"float32 LDeltaY_left        #y-distance between reference point and bounding box (left, mid, right) [m], range -50;50\n"
"float32 LDeltaY_mid\n"
"float32 LDeltaY_right\n"
"LDeltaQual LDeltaQual\n"
"float32 RCS                 #object RCS [dBm??], range -100;100 \n"
"float32 ProbOfExistence     #probability of existance, range 0;1\n"
"uint32 LifeCycles           #number of life cycles, range 0;65534\n"
"DynamicProperty DynamicProperty\n"
"ObjState ObjState\n"
"bool[] ObjMeasuredSources     #statement about which sensor has perceived/measured an object in the current cycle (bitfield: first bit corresponds to sensor 1, etc...): is true if object is perceived by the corresponding sensor\n"
"float32 VabsX               #absolute velocity in x-direction [m/s]\n"
"float32 VabsY               #absolute velocity in y-direction [m/s]\n"
"float32 AabsX               #absolute acceleration in x-direction [m/s??], range -50;50\n"
"float32 AabsY               #absolute acceleration in y-direction [m/s??], range -50;50\n"
"float32 VabsXStd            #standard deviation of absolute velocity in x-direction [m/s], range 0;30\n"
"float32 VabsYStd            #standard deviation of absolute velocity in y-direction [m/s], range 0;30\n"
"float32 AabsXStd            #standard deviation of absolute acceleration in x-direction [m/s??], range 0;30\n"
"float32 AabsYStd            #standard deviation of absolute acceleration in y-direction [m/s??], range 0;30\n"
"float32 Orientation         #relative orientation [rad] between target and ego, CCW positive\n"
"float32 OrientationStd      #standard deviation of relative orientation [rad] between target and ego, CCW positive\n"
"\n"
"\n"
"\n"
"\n"
"================================================================================\n"
"MSG: rds_conti_radar_object_list_msgs/LDeltaQual\n"
"#RadarObject LDeltaQual field : Quality of OBB distances\n"
"uint8 LDELTAQUAL_ALL_INVALID = 0\n"
"uint8 LDELTAQUAL_LEFT_VALID =1\n"
"uint8 LDELTAQUAL_MID_VALID = 2\n"
"uint8 LDELTAQUAL_LEFT_MID_VALID = 3\n"
"uint8 LDELTAQUAL_RIGHT_VALID = 4\n"
"uint8 LDELTAQUAL_RIGHT_LEFT_VALID = 5\n"
"uint8 LDELTAQUAL_RIGHT_MID_VALID = 6\n"
"uint8 LDELTAQUAL_ALL_VALID = 7\n"
"\n"
"uint8 LDeltaQual\n"
"================================================================================\n"
"MSG: rds_conti_radar_object_list_msgs/DynamicProperty\n"
"#RadarObject DynamicProperty field\n"
"uint8 DYNAMICPROPERTY_MOVING = 0\n"
"uint8 DYNAMICPROPERTY_STATIONARY = 1\n"
"uint8 DYNAMICPROPERTY_ONCOMING = 2\n"
"uint8 DYNAMICPROPERTY_UNKNOWN = 3\n"
"\n"
"uint8 DynamicProperty\n"
"================================================================================\n"
"MSG: rds_conti_radar_object_list_msgs/ObjState\n"
"#Radarobject ObjState field\n"
"uint8 OBJSTATE_DELETED = 0\n"
"uint8 OBJSTATE_NEW = 1\n"
"uint8 OBJSTATE_MEASURED = 2\n"
"uint8 OBJSTATE_PREDICTED = 3\n"
"\n"
"uint8 ObjState\n"
"================================================================================\n"
"MSG: rds_conti_radar_object_list_msgs/ObjProvidedKinematicStates\n"
"#Object kinematic state\n"
"uint8 KINEMATICSTATE_RELATIVE = 0\n"
"uint8 KINEMATICSTATE_ABSOLUTE = 1\n"
"uint8 KINEMATICSTATE_RELATIVE_AND_ABSOLUTE = 2\n"
"\n"
"uint8 KinematicState\n"
;
  }

  static const char* value(const ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Header);
      stream.next(m.CurrentYawAngle);
      stream.next(m.EgoVelocity);
      stream.next(m.EgoYawRate);
      stream.next(m.NofUsedObjects);
      stream.next(m.RadarObjectArray);
      stream.next(m.ExternalSensorID);
      stream.next(m.KinematicState);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RadarObjectList_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rds_conti_radar_object_list_msgs::RadarObjectList_<ContainerAllocator>& v)
  {
    s << indent << "Header: ";
    s << std::endl;
    Printer< ::rds_conti_radar_object_list_msgs::SensorMsgHeader_<ContainerAllocator> >::stream(s, indent + "  ", v.Header);
    s << indent << "CurrentYawAngle: ";
    Printer<float>::stream(s, indent + "  ", v.CurrentYawAngle);
    s << indent << "EgoVelocity: ";
    Printer<float>::stream(s, indent + "  ", v.EgoVelocity);
    s << indent << "EgoYawRate: ";
    Printer<float>::stream(s, indent + "  ", v.EgoYawRate);
    s << indent << "NofUsedObjects: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.NofUsedObjects);
    s << indent << "RadarObjectArray[]" << std::endl;
    for (size_t i = 0; i < v.RadarObjectArray.size(); ++i)
    {
      s << indent << "  RadarObjectArray[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::rds_conti_radar_object_list_msgs::RadarObject_<ContainerAllocator> >::stream(s, indent + "    ", v.RadarObjectArray[i]);
    }
    s << indent << "ExternalSensorID: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.ExternalSensorID);
    s << indent << "KinematicState: ";
    s << std::endl;
    Printer< ::rds_conti_radar_object_list_msgs::ObjProvidedKinematicStates_<ContainerAllocator> >::stream(s, indent + "  ", v.KinematicState);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RDS_CONTI_RADAR_OBJECT_LIST_MSGS_MESSAGE_RADAROBJECTLIST_H
