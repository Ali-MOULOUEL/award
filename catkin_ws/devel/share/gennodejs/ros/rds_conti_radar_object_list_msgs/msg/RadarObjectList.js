// Auto-generated. Do not edit!

// (in-package rds_conti_radar_object_list_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SensorMsgHeader = require('./SensorMsgHeader.js');
let RadarObject = require('./RadarObject.js');
let ObjProvidedKinematicStates = require('./ObjProvidedKinematicStates.js');

//-----------------------------------------------------------

class RadarObjectList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Header = null;
      this.CurrentYawAngle = null;
      this.EgoVelocity = null;
      this.EgoYawRate = null;
      this.NofUsedObjects = null;
      this.RadarObjectArray = null;
      this.ExternalSensorID = null;
      this.KinematicState = null;
    }
    else {
      if (initObj.hasOwnProperty('Header')) {
        this.Header = initObj.Header
      }
      else {
        this.Header = new SensorMsgHeader();
      }
      if (initObj.hasOwnProperty('CurrentYawAngle')) {
        this.CurrentYawAngle = initObj.CurrentYawAngle
      }
      else {
        this.CurrentYawAngle = 0.0;
      }
      if (initObj.hasOwnProperty('EgoVelocity')) {
        this.EgoVelocity = initObj.EgoVelocity
      }
      else {
        this.EgoVelocity = 0.0;
      }
      if (initObj.hasOwnProperty('EgoYawRate')) {
        this.EgoYawRate = initObj.EgoYawRate
      }
      else {
        this.EgoYawRate = 0.0;
      }
      if (initObj.hasOwnProperty('NofUsedObjects')) {
        this.NofUsedObjects = initObj.NofUsedObjects
      }
      else {
        this.NofUsedObjects = 0;
      }
      if (initObj.hasOwnProperty('RadarObjectArray')) {
        this.RadarObjectArray = initObj.RadarObjectArray
      }
      else {
        this.RadarObjectArray = [];
      }
      if (initObj.hasOwnProperty('ExternalSensorID')) {
        this.ExternalSensorID = initObj.ExternalSensorID
      }
      else {
        this.ExternalSensorID = 0;
      }
      if (initObj.hasOwnProperty('KinematicState')) {
        this.KinematicState = initObj.KinematicState
      }
      else {
        this.KinematicState = new ObjProvidedKinematicStates();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarObjectList
    // Serialize message field [Header]
    bufferOffset = SensorMsgHeader.serialize(obj.Header, buffer, bufferOffset);
    // Serialize message field [CurrentYawAngle]
    bufferOffset = _serializer.float32(obj.CurrentYawAngle, buffer, bufferOffset);
    // Serialize message field [EgoVelocity]
    bufferOffset = _serializer.float32(obj.EgoVelocity, buffer, bufferOffset);
    // Serialize message field [EgoYawRate]
    bufferOffset = _serializer.float32(obj.EgoYawRate, buffer, bufferOffset);
    // Serialize message field [NofUsedObjects]
    bufferOffset = _serializer.uint32(obj.NofUsedObjects, buffer, bufferOffset);
    // Serialize message field [RadarObjectArray]
    // Serialize the length for message field [RadarObjectArray]
    bufferOffset = _serializer.uint32(obj.RadarObjectArray.length, buffer, bufferOffset);
    obj.RadarObjectArray.forEach((val) => {
      bufferOffset = RadarObject.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [ExternalSensorID]
    bufferOffset = _serializer.uint32(obj.ExternalSensorID, buffer, bufferOffset);
    // Serialize message field [KinematicState]
    bufferOffset = ObjProvidedKinematicStates.serialize(obj.KinematicState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarObjectList
    let len;
    let data = new RadarObjectList(null);
    // Deserialize message field [Header]
    data.Header = SensorMsgHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [CurrentYawAngle]
    data.CurrentYawAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [EgoVelocity]
    data.EgoVelocity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [EgoYawRate]
    data.EgoYawRate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [NofUsedObjects]
    data.NofUsedObjects = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [RadarObjectArray]
    // Deserialize array length for message field [RadarObjectArray]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.RadarObjectArray = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.RadarObjectArray[i] = RadarObject.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [ExternalSensorID]
    data.ExternalSensorID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [KinematicState]
    data.KinematicState = ObjProvidedKinematicStates.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.RadarObjectArray.forEach((val) => {
      length += RadarObject.getMessageSize(val);
    });
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_conti_radar_object_list_msgs/RadarObjectList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7f981a9cd2dc8a68e05581fae97c445d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SensorMsgHeader Header
    
    float32 CurrentYawAngle             #current mounting yaw angle [rad], range -3.14159;3.14159 
    float32 EgoVelocity                 #velocity of ego vehicle, range -150;150 [m/s]
    float32 EgoYawRate                  #yaw rate of ego vehicle [rad/s], range -4;4
    uint32 NofUsedObjects               #number of available objects
    RadarObject[] RadarObjectArray 
    uint32 ExternalSensorID             #Reference to the external Sensor ID
    ObjProvidedKinematicStates KinematicState #indication which reference the kinematic states are refering
    
    ================================================================================
    MSG: rds_conti_radar_object_list_msgs/SensorMsgHeader
    #SensorMsgHeader fields
    MsgHeader CommonHeader
    uint32 SensorId             #sensor ID
    SignalStatus SignalStatus   #status of the signals in the data packet
    ================================================================================
    MSG: rds_conti_radar_object_list_msgs/MsgHeader
    #MsgHeader fields
    uint32 Seq          #sequence ID: consecutively increasing ID
    Time stamp
    TimeStampSource Timestamp_source
    TimeStampSyncState TimeStamp_sync_state
    
    ================================================================================
    MSG: rds_conti_radar_object_list_msgs/Time
    #Time fields
    uint32 Sec
    uint32 Nsec 
    
    ================================================================================
    MSG: rds_conti_radar_object_list_msgs/TimeStampSource
    #MsgHeader field TimeStampSource
    uint8 TIMESTAMPSOURCE_UNKNOWN_SOURCE = 0    #No information on the source at all
    uint8 TIMESTAMPSOURCE_SENSOR = 1            #Timestamp is set by sensor
    uint8 TIMESTAMPSOURCE_ALGO = 2              #Timestamp is set by algo
    
    uint8 TimeStampSource 
    ================================================================================
    MSG: rds_conti_radar_object_list_msgs/TimeStampSyncState
    #MsgHeader field TimeStampSyncState
    uint8 TIMESTAMPSYNCSTATE_UNKNOWN_SYNC = 0              #No information on the sync state at all
    uint8 TIMESTAMPSYNCSTATE_NOT_SYNCED = 1                #timestamp is not synced at all
    uint8 TIMESTAMPSYNCSTATE_SYNCED_GTC = 2                #timestamp is synced with GTC mechanism
    uint8 TIMESTAMPSYNCSTATE_SYNCED_PTP = 3                #timestamp is synced with PTP mechanism
    uint8 TIMESTAMPSYNCSTATE_SYNCED_REPLAY = 4             #timestamp is synced by replay mechanism
    
    uint8 TimeStampSyncState
    
    ================================================================================
    MSG: rds_conti_radar_object_list_msgs/SignalStatus
    #SensorMsgHeader SignalStatus field
    uint8 SIGNALSTATUS_EM_SIGSTATE_INIT = 0
    uint8 SIGNALSTATUS_EM_SIGSTATE_OK = 1
    uint8 SIGNALSTATUS_EM_SIGSTATE_INVALID = 2
    
    uint8 SignalStatus
    ================================================================================
    MSG: rds_conti_radar_object_list_msgs/RadarObject
    #RadarObject fields
    uint32 ObjId                #object ID
    uint32 InternalId           #object ID in internal object list
    float32 DistX               #x-position in Carthesian object coordiante [m], range -200;200
    float32 DistY               #y-position in Carthesian object coordiante [m], range -200;200
    float32 VrelX               #relative velocity in x-direction [m/s], range -400;400
    float32 VrelY               #relative velocity in y-direction [m/s], range -400;400
    float32 ArelX               #relative acceleration in x-direction [m/s²], range -50;50
    float32 ArelY               #relative acceleration in y-direction [m/s²], range -50;50
    float32 DistXStd            #standard deviation of x-position [m], range 0;30
    float32 DistYStd            #standard deviation of y-position [m], range 0;30
    float32 VrelXStd            #standard deviation of relative velocity in x-direction [m/s], range 0;30
    float32 VrelYStd            #standard deviation of relative velocity in y-direction [m/s], range 0;30
    float32 ArelXStd            #standard deviation of relative acceleration in x-direction [m/s²], range 0;30
    float32 ArelYStd            #standard deviation of relative acceleration in y-direction [m/s²], range 0;30
    float32 LDeltaX_left        #x-distance between reference point and bounding box (left, mid, right) [m], range -50;50
    float32 LDeltaX_mid
    float32 LDeltaX_right
    float32 LDeltaY_left        #y-distance between reference point and bounding box (left, mid, right) [m], range -50;50
    float32 LDeltaY_mid
    float32 LDeltaY_right
    LDeltaQual LDeltaQual
    float32 RCS                 #object RCS [dBm²], range -100;100 
    float32 ProbOfExistence     #probability of existance, range 0;1
    uint32 LifeCycles           #number of life cycles, range 0;65534
    DynamicProperty DynamicProperty
    ObjState ObjState
    bool[] ObjMeasuredSources     #statement about which sensor has perceived/measured an object in the current cycle (bitfield: first bit corresponds to sensor 1, etc...): is true if object is perceived by the corresponding sensor
    float32 VabsX               #absolute velocity in x-direction [m/s]
    float32 VabsY               #absolute velocity in y-direction [m/s]
    float32 AabsX               #absolute acceleration in x-direction [m/s²], range -50;50
    float32 AabsY               #absolute acceleration in y-direction [m/s²], range -50;50
    float32 VabsXStd            #standard deviation of absolute velocity in x-direction [m/s], range 0;30
    float32 VabsYStd            #standard deviation of absolute velocity in y-direction [m/s], range 0;30
    float32 AabsXStd            #standard deviation of absolute acceleration in x-direction [m/s²], range 0;30
    float32 AabsYStd            #standard deviation of absolute acceleration in y-direction [m/s²], range 0;30
    float32 Orientation         #relative orientation [rad] between target and ego, CCW positive
    float32 OrientationStd      #standard deviation of relative orientation [rad] between target and ego, CCW positive
    
    
    
    
    ================================================================================
    MSG: rds_conti_radar_object_list_msgs/LDeltaQual
    #RadarObject LDeltaQual field : Quality of OBB distances
    uint8 LDELTAQUAL_ALL_INVALID = 0
    uint8 LDELTAQUAL_LEFT_VALID =1
    uint8 LDELTAQUAL_MID_VALID = 2
    uint8 LDELTAQUAL_LEFT_MID_VALID = 3
    uint8 LDELTAQUAL_RIGHT_VALID = 4
    uint8 LDELTAQUAL_RIGHT_LEFT_VALID = 5
    uint8 LDELTAQUAL_RIGHT_MID_VALID = 6
    uint8 LDELTAQUAL_ALL_VALID = 7
    
    uint8 LDeltaQual
    ================================================================================
    MSG: rds_conti_radar_object_list_msgs/DynamicProperty
    #RadarObject DynamicProperty field
    uint8 DYNAMICPROPERTY_MOVING = 0
    uint8 DYNAMICPROPERTY_STATIONARY = 1
    uint8 DYNAMICPROPERTY_ONCOMING = 2
    uint8 DYNAMICPROPERTY_UNKNOWN = 3
    
    uint8 DynamicProperty
    ================================================================================
    MSG: rds_conti_radar_object_list_msgs/ObjState
    #Radarobject ObjState field
    uint8 OBJSTATE_DELETED = 0
    uint8 OBJSTATE_NEW = 1
    uint8 OBJSTATE_MEASURED = 2
    uint8 OBJSTATE_PREDICTED = 3
    
    uint8 ObjState
    ================================================================================
    MSG: rds_conti_radar_object_list_msgs/ObjProvidedKinematicStates
    #Object kinematic state
    uint8 KINEMATICSTATE_RELATIVE = 0
    uint8 KINEMATICSTATE_ABSOLUTE = 1
    uint8 KINEMATICSTATE_RELATIVE_AND_ABSOLUTE = 2
    
    uint8 KinematicState
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarObjectList(null);
    if (msg.Header !== undefined) {
      resolved.Header = SensorMsgHeader.Resolve(msg.Header)
    }
    else {
      resolved.Header = new SensorMsgHeader()
    }

    if (msg.CurrentYawAngle !== undefined) {
      resolved.CurrentYawAngle = msg.CurrentYawAngle;
    }
    else {
      resolved.CurrentYawAngle = 0.0
    }

    if (msg.EgoVelocity !== undefined) {
      resolved.EgoVelocity = msg.EgoVelocity;
    }
    else {
      resolved.EgoVelocity = 0.0
    }

    if (msg.EgoYawRate !== undefined) {
      resolved.EgoYawRate = msg.EgoYawRate;
    }
    else {
      resolved.EgoYawRate = 0.0
    }

    if (msg.NofUsedObjects !== undefined) {
      resolved.NofUsedObjects = msg.NofUsedObjects;
    }
    else {
      resolved.NofUsedObjects = 0
    }

    if (msg.RadarObjectArray !== undefined) {
      resolved.RadarObjectArray = new Array(msg.RadarObjectArray.length);
      for (let i = 0; i < resolved.RadarObjectArray.length; ++i) {
        resolved.RadarObjectArray[i] = RadarObject.Resolve(msg.RadarObjectArray[i]);
      }
    }
    else {
      resolved.RadarObjectArray = []
    }

    if (msg.ExternalSensorID !== undefined) {
      resolved.ExternalSensorID = msg.ExternalSensorID;
    }
    else {
      resolved.ExternalSensorID = 0
    }

    if (msg.KinematicState !== undefined) {
      resolved.KinematicState = ObjProvidedKinematicStates.Resolve(msg.KinematicState)
    }
    else {
      resolved.KinematicState = new ObjProvidedKinematicStates()
    }

    return resolved;
    }
};

module.exports = RadarObjectList;
