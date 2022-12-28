// Auto-generated. Do not edit!

// (in-package rds_conti_radar_object_list_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LDeltaQual = require('./LDeltaQual.js');
let DynamicProperty = require('./DynamicProperty.js');
let ObjState = require('./ObjState.js');

//-----------------------------------------------------------

class RadarObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ObjId = null;
      this.InternalId = null;
      this.DistX = null;
      this.DistY = null;
      this.VrelX = null;
      this.VrelY = null;
      this.ArelX = null;
      this.ArelY = null;
      this.DistXStd = null;
      this.DistYStd = null;
      this.VrelXStd = null;
      this.VrelYStd = null;
      this.ArelXStd = null;
      this.ArelYStd = null;
      this.LDeltaX_left = null;
      this.LDeltaX_mid = null;
      this.LDeltaX_right = null;
      this.LDeltaY_left = null;
      this.LDeltaY_mid = null;
      this.LDeltaY_right = null;
      this.LDeltaQual = null;
      this.RCS = null;
      this.ProbOfExistence = null;
      this.LifeCycles = null;
      this.DynamicProperty = null;
      this.ObjState = null;
      this.ObjMeasuredSources = null;
      this.VabsX = null;
      this.VabsY = null;
      this.AabsX = null;
      this.AabsY = null;
      this.VabsXStd = null;
      this.VabsYStd = null;
      this.AabsXStd = null;
      this.AabsYStd = null;
      this.Orientation = null;
      this.OrientationStd = null;
    }
    else {
      if (initObj.hasOwnProperty('ObjId')) {
        this.ObjId = initObj.ObjId
      }
      else {
        this.ObjId = 0;
      }
      if (initObj.hasOwnProperty('InternalId')) {
        this.InternalId = initObj.InternalId
      }
      else {
        this.InternalId = 0;
      }
      if (initObj.hasOwnProperty('DistX')) {
        this.DistX = initObj.DistX
      }
      else {
        this.DistX = 0.0;
      }
      if (initObj.hasOwnProperty('DistY')) {
        this.DistY = initObj.DistY
      }
      else {
        this.DistY = 0.0;
      }
      if (initObj.hasOwnProperty('VrelX')) {
        this.VrelX = initObj.VrelX
      }
      else {
        this.VrelX = 0.0;
      }
      if (initObj.hasOwnProperty('VrelY')) {
        this.VrelY = initObj.VrelY
      }
      else {
        this.VrelY = 0.0;
      }
      if (initObj.hasOwnProperty('ArelX')) {
        this.ArelX = initObj.ArelX
      }
      else {
        this.ArelX = 0.0;
      }
      if (initObj.hasOwnProperty('ArelY')) {
        this.ArelY = initObj.ArelY
      }
      else {
        this.ArelY = 0.0;
      }
      if (initObj.hasOwnProperty('DistXStd')) {
        this.DistXStd = initObj.DistXStd
      }
      else {
        this.DistXStd = 0.0;
      }
      if (initObj.hasOwnProperty('DistYStd')) {
        this.DistYStd = initObj.DistYStd
      }
      else {
        this.DistYStd = 0.0;
      }
      if (initObj.hasOwnProperty('VrelXStd')) {
        this.VrelXStd = initObj.VrelXStd
      }
      else {
        this.VrelXStd = 0.0;
      }
      if (initObj.hasOwnProperty('VrelYStd')) {
        this.VrelYStd = initObj.VrelYStd
      }
      else {
        this.VrelYStd = 0.0;
      }
      if (initObj.hasOwnProperty('ArelXStd')) {
        this.ArelXStd = initObj.ArelXStd
      }
      else {
        this.ArelXStd = 0.0;
      }
      if (initObj.hasOwnProperty('ArelYStd')) {
        this.ArelYStd = initObj.ArelYStd
      }
      else {
        this.ArelYStd = 0.0;
      }
      if (initObj.hasOwnProperty('LDeltaX_left')) {
        this.LDeltaX_left = initObj.LDeltaX_left
      }
      else {
        this.LDeltaX_left = 0.0;
      }
      if (initObj.hasOwnProperty('LDeltaX_mid')) {
        this.LDeltaX_mid = initObj.LDeltaX_mid
      }
      else {
        this.LDeltaX_mid = 0.0;
      }
      if (initObj.hasOwnProperty('LDeltaX_right')) {
        this.LDeltaX_right = initObj.LDeltaX_right
      }
      else {
        this.LDeltaX_right = 0.0;
      }
      if (initObj.hasOwnProperty('LDeltaY_left')) {
        this.LDeltaY_left = initObj.LDeltaY_left
      }
      else {
        this.LDeltaY_left = 0.0;
      }
      if (initObj.hasOwnProperty('LDeltaY_mid')) {
        this.LDeltaY_mid = initObj.LDeltaY_mid
      }
      else {
        this.LDeltaY_mid = 0.0;
      }
      if (initObj.hasOwnProperty('LDeltaY_right')) {
        this.LDeltaY_right = initObj.LDeltaY_right
      }
      else {
        this.LDeltaY_right = 0.0;
      }
      if (initObj.hasOwnProperty('LDeltaQual')) {
        this.LDeltaQual = initObj.LDeltaQual
      }
      else {
        this.LDeltaQual = new LDeltaQual();
      }
      if (initObj.hasOwnProperty('RCS')) {
        this.RCS = initObj.RCS
      }
      else {
        this.RCS = 0.0;
      }
      if (initObj.hasOwnProperty('ProbOfExistence')) {
        this.ProbOfExistence = initObj.ProbOfExistence
      }
      else {
        this.ProbOfExistence = 0.0;
      }
      if (initObj.hasOwnProperty('LifeCycles')) {
        this.LifeCycles = initObj.LifeCycles
      }
      else {
        this.LifeCycles = 0;
      }
      if (initObj.hasOwnProperty('DynamicProperty')) {
        this.DynamicProperty = initObj.DynamicProperty
      }
      else {
        this.DynamicProperty = new DynamicProperty();
      }
      if (initObj.hasOwnProperty('ObjState')) {
        this.ObjState = initObj.ObjState
      }
      else {
        this.ObjState = new ObjState();
      }
      if (initObj.hasOwnProperty('ObjMeasuredSources')) {
        this.ObjMeasuredSources = initObj.ObjMeasuredSources
      }
      else {
        this.ObjMeasuredSources = [];
      }
      if (initObj.hasOwnProperty('VabsX')) {
        this.VabsX = initObj.VabsX
      }
      else {
        this.VabsX = 0.0;
      }
      if (initObj.hasOwnProperty('VabsY')) {
        this.VabsY = initObj.VabsY
      }
      else {
        this.VabsY = 0.0;
      }
      if (initObj.hasOwnProperty('AabsX')) {
        this.AabsX = initObj.AabsX
      }
      else {
        this.AabsX = 0.0;
      }
      if (initObj.hasOwnProperty('AabsY')) {
        this.AabsY = initObj.AabsY
      }
      else {
        this.AabsY = 0.0;
      }
      if (initObj.hasOwnProperty('VabsXStd')) {
        this.VabsXStd = initObj.VabsXStd
      }
      else {
        this.VabsXStd = 0.0;
      }
      if (initObj.hasOwnProperty('VabsYStd')) {
        this.VabsYStd = initObj.VabsYStd
      }
      else {
        this.VabsYStd = 0.0;
      }
      if (initObj.hasOwnProperty('AabsXStd')) {
        this.AabsXStd = initObj.AabsXStd
      }
      else {
        this.AabsXStd = 0.0;
      }
      if (initObj.hasOwnProperty('AabsYStd')) {
        this.AabsYStd = initObj.AabsYStd
      }
      else {
        this.AabsYStd = 0.0;
      }
      if (initObj.hasOwnProperty('Orientation')) {
        this.Orientation = initObj.Orientation
      }
      else {
        this.Orientation = 0.0;
      }
      if (initObj.hasOwnProperty('OrientationStd')) {
        this.OrientationStd = initObj.OrientationStd
      }
      else {
        this.OrientationStd = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarObject
    // Serialize message field [ObjId]
    bufferOffset = _serializer.uint32(obj.ObjId, buffer, bufferOffset);
    // Serialize message field [InternalId]
    bufferOffset = _serializer.uint32(obj.InternalId, buffer, bufferOffset);
    // Serialize message field [DistX]
    bufferOffset = _serializer.float32(obj.DistX, buffer, bufferOffset);
    // Serialize message field [DistY]
    bufferOffset = _serializer.float32(obj.DistY, buffer, bufferOffset);
    // Serialize message field [VrelX]
    bufferOffset = _serializer.float32(obj.VrelX, buffer, bufferOffset);
    // Serialize message field [VrelY]
    bufferOffset = _serializer.float32(obj.VrelY, buffer, bufferOffset);
    // Serialize message field [ArelX]
    bufferOffset = _serializer.float32(obj.ArelX, buffer, bufferOffset);
    // Serialize message field [ArelY]
    bufferOffset = _serializer.float32(obj.ArelY, buffer, bufferOffset);
    // Serialize message field [DistXStd]
    bufferOffset = _serializer.float32(obj.DistXStd, buffer, bufferOffset);
    // Serialize message field [DistYStd]
    bufferOffset = _serializer.float32(obj.DistYStd, buffer, bufferOffset);
    // Serialize message field [VrelXStd]
    bufferOffset = _serializer.float32(obj.VrelXStd, buffer, bufferOffset);
    // Serialize message field [VrelYStd]
    bufferOffset = _serializer.float32(obj.VrelYStd, buffer, bufferOffset);
    // Serialize message field [ArelXStd]
    bufferOffset = _serializer.float32(obj.ArelXStd, buffer, bufferOffset);
    // Serialize message field [ArelYStd]
    bufferOffset = _serializer.float32(obj.ArelYStd, buffer, bufferOffset);
    // Serialize message field [LDeltaX_left]
    bufferOffset = _serializer.float32(obj.LDeltaX_left, buffer, bufferOffset);
    // Serialize message field [LDeltaX_mid]
    bufferOffset = _serializer.float32(obj.LDeltaX_mid, buffer, bufferOffset);
    // Serialize message field [LDeltaX_right]
    bufferOffset = _serializer.float32(obj.LDeltaX_right, buffer, bufferOffset);
    // Serialize message field [LDeltaY_left]
    bufferOffset = _serializer.float32(obj.LDeltaY_left, buffer, bufferOffset);
    // Serialize message field [LDeltaY_mid]
    bufferOffset = _serializer.float32(obj.LDeltaY_mid, buffer, bufferOffset);
    // Serialize message field [LDeltaY_right]
    bufferOffset = _serializer.float32(obj.LDeltaY_right, buffer, bufferOffset);
    // Serialize message field [LDeltaQual]
    bufferOffset = LDeltaQual.serialize(obj.LDeltaQual, buffer, bufferOffset);
    // Serialize message field [RCS]
    bufferOffset = _serializer.float32(obj.RCS, buffer, bufferOffset);
    // Serialize message field [ProbOfExistence]
    bufferOffset = _serializer.float32(obj.ProbOfExistence, buffer, bufferOffset);
    // Serialize message field [LifeCycles]
    bufferOffset = _serializer.uint32(obj.LifeCycles, buffer, bufferOffset);
    // Serialize message field [DynamicProperty]
    bufferOffset = DynamicProperty.serialize(obj.DynamicProperty, buffer, bufferOffset);
    // Serialize message field [ObjState]
    bufferOffset = ObjState.serialize(obj.ObjState, buffer, bufferOffset);
    // Serialize message field [ObjMeasuredSources]
    bufferOffset = _arraySerializer.bool(obj.ObjMeasuredSources, buffer, bufferOffset, null);
    // Serialize message field [VabsX]
    bufferOffset = _serializer.float32(obj.VabsX, buffer, bufferOffset);
    // Serialize message field [VabsY]
    bufferOffset = _serializer.float32(obj.VabsY, buffer, bufferOffset);
    // Serialize message field [AabsX]
    bufferOffset = _serializer.float32(obj.AabsX, buffer, bufferOffset);
    // Serialize message field [AabsY]
    bufferOffset = _serializer.float32(obj.AabsY, buffer, bufferOffset);
    // Serialize message field [VabsXStd]
    bufferOffset = _serializer.float32(obj.VabsXStd, buffer, bufferOffset);
    // Serialize message field [VabsYStd]
    bufferOffset = _serializer.float32(obj.VabsYStd, buffer, bufferOffset);
    // Serialize message field [AabsXStd]
    bufferOffset = _serializer.float32(obj.AabsXStd, buffer, bufferOffset);
    // Serialize message field [AabsYStd]
    bufferOffset = _serializer.float32(obj.AabsYStd, buffer, bufferOffset);
    // Serialize message field [Orientation]
    bufferOffset = _serializer.float32(obj.Orientation, buffer, bufferOffset);
    // Serialize message field [OrientationStd]
    bufferOffset = _serializer.float32(obj.OrientationStd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarObject
    let len;
    let data = new RadarObject(null);
    // Deserialize message field [ObjId]
    data.ObjId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [InternalId]
    data.InternalId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [DistX]
    data.DistX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [DistY]
    data.DistY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [VrelX]
    data.VrelX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [VrelY]
    data.VrelY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ArelX]
    data.ArelX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ArelY]
    data.ArelY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [DistXStd]
    data.DistXStd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [DistYStd]
    data.DistYStd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [VrelXStd]
    data.VrelXStd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [VrelYStd]
    data.VrelYStd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ArelXStd]
    data.ArelXStd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ArelYStd]
    data.ArelYStd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [LDeltaX_left]
    data.LDeltaX_left = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [LDeltaX_mid]
    data.LDeltaX_mid = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [LDeltaX_right]
    data.LDeltaX_right = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [LDeltaY_left]
    data.LDeltaY_left = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [LDeltaY_mid]
    data.LDeltaY_mid = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [LDeltaY_right]
    data.LDeltaY_right = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [LDeltaQual]
    data.LDeltaQual = LDeltaQual.deserialize(buffer, bufferOffset);
    // Deserialize message field [RCS]
    data.RCS = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ProbOfExistence]
    data.ProbOfExistence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [LifeCycles]
    data.LifeCycles = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [DynamicProperty]
    data.DynamicProperty = DynamicProperty.deserialize(buffer, bufferOffset);
    // Deserialize message field [ObjState]
    data.ObjState = ObjState.deserialize(buffer, bufferOffset);
    // Deserialize message field [ObjMeasuredSources]
    data.ObjMeasuredSources = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [VabsX]
    data.VabsX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [VabsY]
    data.VabsY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [AabsX]
    data.AabsX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [AabsY]
    data.AabsY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [VabsXStd]
    data.VabsXStd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [VabsYStd]
    data.VabsYStd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [AabsXStd]
    data.AabsXStd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [AabsYStd]
    data.AabsYStd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Orientation]
    data.Orientation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [OrientationStd]
    data.OrientationStd = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ObjMeasuredSources.length;
    return length + 139;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_conti_radar_object_list_msgs/RadarObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0dc10eaa39f2fdbe9b9bb01a0ae55d98';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarObject(null);
    if (msg.ObjId !== undefined) {
      resolved.ObjId = msg.ObjId;
    }
    else {
      resolved.ObjId = 0
    }

    if (msg.InternalId !== undefined) {
      resolved.InternalId = msg.InternalId;
    }
    else {
      resolved.InternalId = 0
    }

    if (msg.DistX !== undefined) {
      resolved.DistX = msg.DistX;
    }
    else {
      resolved.DistX = 0.0
    }

    if (msg.DistY !== undefined) {
      resolved.DistY = msg.DistY;
    }
    else {
      resolved.DistY = 0.0
    }

    if (msg.VrelX !== undefined) {
      resolved.VrelX = msg.VrelX;
    }
    else {
      resolved.VrelX = 0.0
    }

    if (msg.VrelY !== undefined) {
      resolved.VrelY = msg.VrelY;
    }
    else {
      resolved.VrelY = 0.0
    }

    if (msg.ArelX !== undefined) {
      resolved.ArelX = msg.ArelX;
    }
    else {
      resolved.ArelX = 0.0
    }

    if (msg.ArelY !== undefined) {
      resolved.ArelY = msg.ArelY;
    }
    else {
      resolved.ArelY = 0.0
    }

    if (msg.DistXStd !== undefined) {
      resolved.DistXStd = msg.DistXStd;
    }
    else {
      resolved.DistXStd = 0.0
    }

    if (msg.DistYStd !== undefined) {
      resolved.DistYStd = msg.DistYStd;
    }
    else {
      resolved.DistYStd = 0.0
    }

    if (msg.VrelXStd !== undefined) {
      resolved.VrelXStd = msg.VrelXStd;
    }
    else {
      resolved.VrelXStd = 0.0
    }

    if (msg.VrelYStd !== undefined) {
      resolved.VrelYStd = msg.VrelYStd;
    }
    else {
      resolved.VrelYStd = 0.0
    }

    if (msg.ArelXStd !== undefined) {
      resolved.ArelXStd = msg.ArelXStd;
    }
    else {
      resolved.ArelXStd = 0.0
    }

    if (msg.ArelYStd !== undefined) {
      resolved.ArelYStd = msg.ArelYStd;
    }
    else {
      resolved.ArelYStd = 0.0
    }

    if (msg.LDeltaX_left !== undefined) {
      resolved.LDeltaX_left = msg.LDeltaX_left;
    }
    else {
      resolved.LDeltaX_left = 0.0
    }

    if (msg.LDeltaX_mid !== undefined) {
      resolved.LDeltaX_mid = msg.LDeltaX_mid;
    }
    else {
      resolved.LDeltaX_mid = 0.0
    }

    if (msg.LDeltaX_right !== undefined) {
      resolved.LDeltaX_right = msg.LDeltaX_right;
    }
    else {
      resolved.LDeltaX_right = 0.0
    }

    if (msg.LDeltaY_left !== undefined) {
      resolved.LDeltaY_left = msg.LDeltaY_left;
    }
    else {
      resolved.LDeltaY_left = 0.0
    }

    if (msg.LDeltaY_mid !== undefined) {
      resolved.LDeltaY_mid = msg.LDeltaY_mid;
    }
    else {
      resolved.LDeltaY_mid = 0.0
    }

    if (msg.LDeltaY_right !== undefined) {
      resolved.LDeltaY_right = msg.LDeltaY_right;
    }
    else {
      resolved.LDeltaY_right = 0.0
    }

    if (msg.LDeltaQual !== undefined) {
      resolved.LDeltaQual = LDeltaQual.Resolve(msg.LDeltaQual)
    }
    else {
      resolved.LDeltaQual = new LDeltaQual()
    }

    if (msg.RCS !== undefined) {
      resolved.RCS = msg.RCS;
    }
    else {
      resolved.RCS = 0.0
    }

    if (msg.ProbOfExistence !== undefined) {
      resolved.ProbOfExistence = msg.ProbOfExistence;
    }
    else {
      resolved.ProbOfExistence = 0.0
    }

    if (msg.LifeCycles !== undefined) {
      resolved.LifeCycles = msg.LifeCycles;
    }
    else {
      resolved.LifeCycles = 0
    }

    if (msg.DynamicProperty !== undefined) {
      resolved.DynamicProperty = DynamicProperty.Resolve(msg.DynamicProperty)
    }
    else {
      resolved.DynamicProperty = new DynamicProperty()
    }

    if (msg.ObjState !== undefined) {
      resolved.ObjState = ObjState.Resolve(msg.ObjState)
    }
    else {
      resolved.ObjState = new ObjState()
    }

    if (msg.ObjMeasuredSources !== undefined) {
      resolved.ObjMeasuredSources = msg.ObjMeasuredSources;
    }
    else {
      resolved.ObjMeasuredSources = []
    }

    if (msg.VabsX !== undefined) {
      resolved.VabsX = msg.VabsX;
    }
    else {
      resolved.VabsX = 0.0
    }

    if (msg.VabsY !== undefined) {
      resolved.VabsY = msg.VabsY;
    }
    else {
      resolved.VabsY = 0.0
    }

    if (msg.AabsX !== undefined) {
      resolved.AabsX = msg.AabsX;
    }
    else {
      resolved.AabsX = 0.0
    }

    if (msg.AabsY !== undefined) {
      resolved.AabsY = msg.AabsY;
    }
    else {
      resolved.AabsY = 0.0
    }

    if (msg.VabsXStd !== undefined) {
      resolved.VabsXStd = msg.VabsXStd;
    }
    else {
      resolved.VabsXStd = 0.0
    }

    if (msg.VabsYStd !== undefined) {
      resolved.VabsYStd = msg.VabsYStd;
    }
    else {
      resolved.VabsYStd = 0.0
    }

    if (msg.AabsXStd !== undefined) {
      resolved.AabsXStd = msg.AabsXStd;
    }
    else {
      resolved.AabsXStd = 0.0
    }

    if (msg.AabsYStd !== undefined) {
      resolved.AabsYStd = msg.AabsYStd;
    }
    else {
      resolved.AabsYStd = 0.0
    }

    if (msg.Orientation !== undefined) {
      resolved.Orientation = msg.Orientation;
    }
    else {
      resolved.Orientation = 0.0
    }

    if (msg.OrientationStd !== undefined) {
      resolved.OrientationStd = msg.OrientationStd;
    }
    else {
      resolved.OrientationStd = 0.0
    }

    return resolved;
    }
};

module.exports = RadarObject;
