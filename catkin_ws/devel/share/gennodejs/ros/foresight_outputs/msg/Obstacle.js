// Auto-generated. Do not edit!

// (in-package foresight_outputs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BoundBox = require('./BoundBox.js');

//-----------------------------------------------------------

class Obstacle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.boundBox = null;
      this.CenterX = null;
      this.CenterY = null;
      this.Class = null;
      this.DangerLevel = null;
      this.Distance = null;
      this.ID = null;
      this.OnPath = null;
      this.OnRoad = null;
      this.PositionX = null;
      this.PositionY = null;
      this.PositionZ = null;
      this.RealHeight = null;
      this.RealWidth = null;
      this.RelativeSpeed = null;
      this.TTC = null;
    }
    else {
      if (initObj.hasOwnProperty('boundBox')) {
        this.boundBox = initObj.boundBox
      }
      else {
        this.boundBox = new BoundBox();
      }
      if (initObj.hasOwnProperty('CenterX')) {
        this.CenterX = initObj.CenterX
      }
      else {
        this.CenterX = 0.0;
      }
      if (initObj.hasOwnProperty('CenterY')) {
        this.CenterY = initObj.CenterY
      }
      else {
        this.CenterY = 0.0;
      }
      if (initObj.hasOwnProperty('Class')) {
        this.Class = initObj.Class
      }
      else {
        this.Class = '';
      }
      if (initObj.hasOwnProperty('DangerLevel')) {
        this.DangerLevel = initObj.DangerLevel
      }
      else {
        this.DangerLevel = 0.0;
      }
      if (initObj.hasOwnProperty('Distance')) {
        this.Distance = initObj.Distance
      }
      else {
        this.Distance = 0.0;
      }
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0.0;
      }
      if (initObj.hasOwnProperty('OnPath')) {
        this.OnPath = initObj.OnPath
      }
      else {
        this.OnPath = false;
      }
      if (initObj.hasOwnProperty('OnRoad')) {
        this.OnRoad = initObj.OnRoad
      }
      else {
        this.OnRoad = false;
      }
      if (initObj.hasOwnProperty('PositionX')) {
        this.PositionX = initObj.PositionX
      }
      else {
        this.PositionX = 0.0;
      }
      if (initObj.hasOwnProperty('PositionY')) {
        this.PositionY = initObj.PositionY
      }
      else {
        this.PositionY = 0.0;
      }
      if (initObj.hasOwnProperty('PositionZ')) {
        this.PositionZ = initObj.PositionZ
      }
      else {
        this.PositionZ = 0.0;
      }
      if (initObj.hasOwnProperty('RealHeight')) {
        this.RealHeight = initObj.RealHeight
      }
      else {
        this.RealHeight = 0.0;
      }
      if (initObj.hasOwnProperty('RealWidth')) {
        this.RealWidth = initObj.RealWidth
      }
      else {
        this.RealWidth = 0.0;
      }
      if (initObj.hasOwnProperty('RelativeSpeed')) {
        this.RelativeSpeed = initObj.RelativeSpeed
      }
      else {
        this.RelativeSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('TTC')) {
        this.TTC = initObj.TTC
      }
      else {
        this.TTC = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Obstacle
    // Serialize message field [boundBox]
    bufferOffset = BoundBox.serialize(obj.boundBox, buffer, bufferOffset);
    // Serialize message field [CenterX]
    bufferOffset = _serializer.float32(obj.CenterX, buffer, bufferOffset);
    // Serialize message field [CenterY]
    bufferOffset = _serializer.float32(obj.CenterY, buffer, bufferOffset);
    // Serialize message field [Class]
    bufferOffset = _serializer.string(obj.Class, buffer, bufferOffset);
    // Serialize message field [DangerLevel]
    bufferOffset = _serializer.float32(obj.DangerLevel, buffer, bufferOffset);
    // Serialize message field [Distance]
    bufferOffset = _serializer.float32(obj.Distance, buffer, bufferOffset);
    // Serialize message field [ID]
    bufferOffset = _serializer.float32(obj.ID, buffer, bufferOffset);
    // Serialize message field [OnPath]
    bufferOffset = _serializer.bool(obj.OnPath, buffer, bufferOffset);
    // Serialize message field [OnRoad]
    bufferOffset = _serializer.bool(obj.OnRoad, buffer, bufferOffset);
    // Serialize message field [PositionX]
    bufferOffset = _serializer.float32(obj.PositionX, buffer, bufferOffset);
    // Serialize message field [PositionY]
    bufferOffset = _serializer.float32(obj.PositionY, buffer, bufferOffset);
    // Serialize message field [PositionZ]
    bufferOffset = _serializer.float32(obj.PositionZ, buffer, bufferOffset);
    // Serialize message field [RealHeight]
    bufferOffset = _serializer.float32(obj.RealHeight, buffer, bufferOffset);
    // Serialize message field [RealWidth]
    bufferOffset = _serializer.float32(obj.RealWidth, buffer, bufferOffset);
    // Serialize message field [RelativeSpeed]
    bufferOffset = _serializer.float32(obj.RelativeSpeed, buffer, bufferOffset);
    // Serialize message field [TTC]
    bufferOffset = _serializer.float32(obj.TTC, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Obstacle
    let len;
    let data = new Obstacle(null);
    // Deserialize message field [boundBox]
    data.boundBox = BoundBox.deserialize(buffer, bufferOffset);
    // Deserialize message field [CenterX]
    data.CenterX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [CenterY]
    data.CenterY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Class]
    data.Class = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [DangerLevel]
    data.DangerLevel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Distance]
    data.Distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ID]
    data.ID = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [OnPath]
    data.OnPath = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [OnRoad]
    data.OnRoad = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [PositionX]
    data.PositionX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [PositionY]
    data.PositionY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [PositionZ]
    data.PositionZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RealHeight]
    data.RealHeight = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RealWidth]
    data.RealWidth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RelativeSpeed]
    data.RelativeSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [TTC]
    data.TTC = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.Class);
    return length + 70;
  }

  static datatype() {
    // Returns string type for a message object
    return 'foresight_outputs/Obstacle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd899dae8fd4048bf4873b1549287ed9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Obstacles field
    BoundBox boundBox
    float32 CenterX
    float32 CenterY
    string Class
    float32 DangerLevel
    float32 Distance
    float32 ID
    bool OnPath
    bool OnRoad
    float32 PositionX
    float32 PositionY
    float32 PositionZ
    float32 RealHeight
    float32 RealWidth 
    float32 RelativeSpeed
    float32 TTC
    
    
    
    
     
    ================================================================================
    MSG: foresight_outputs/BoundBox
    #BoundBox field
    float32 BottomRightX
    float32 BottomRightY
    float32 TopLeftX
    float32 TopLeftY
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Obstacle(null);
    if (msg.boundBox !== undefined) {
      resolved.boundBox = BoundBox.Resolve(msg.boundBox)
    }
    else {
      resolved.boundBox = new BoundBox()
    }

    if (msg.CenterX !== undefined) {
      resolved.CenterX = msg.CenterX;
    }
    else {
      resolved.CenterX = 0.0
    }

    if (msg.CenterY !== undefined) {
      resolved.CenterY = msg.CenterY;
    }
    else {
      resolved.CenterY = 0.0
    }

    if (msg.Class !== undefined) {
      resolved.Class = msg.Class;
    }
    else {
      resolved.Class = ''
    }

    if (msg.DangerLevel !== undefined) {
      resolved.DangerLevel = msg.DangerLevel;
    }
    else {
      resolved.DangerLevel = 0.0
    }

    if (msg.Distance !== undefined) {
      resolved.Distance = msg.Distance;
    }
    else {
      resolved.Distance = 0.0
    }

    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0.0
    }

    if (msg.OnPath !== undefined) {
      resolved.OnPath = msg.OnPath;
    }
    else {
      resolved.OnPath = false
    }

    if (msg.OnRoad !== undefined) {
      resolved.OnRoad = msg.OnRoad;
    }
    else {
      resolved.OnRoad = false
    }

    if (msg.PositionX !== undefined) {
      resolved.PositionX = msg.PositionX;
    }
    else {
      resolved.PositionX = 0.0
    }

    if (msg.PositionY !== undefined) {
      resolved.PositionY = msg.PositionY;
    }
    else {
      resolved.PositionY = 0.0
    }

    if (msg.PositionZ !== undefined) {
      resolved.PositionZ = msg.PositionZ;
    }
    else {
      resolved.PositionZ = 0.0
    }

    if (msg.RealHeight !== undefined) {
      resolved.RealHeight = msg.RealHeight;
    }
    else {
      resolved.RealHeight = 0.0
    }

    if (msg.RealWidth !== undefined) {
      resolved.RealWidth = msg.RealWidth;
    }
    else {
      resolved.RealWidth = 0.0
    }

    if (msg.RelativeSpeed !== undefined) {
      resolved.RelativeSpeed = msg.RelativeSpeed;
    }
    else {
      resolved.RelativeSpeed = 0.0
    }

    if (msg.TTC !== undefined) {
      resolved.TTC = msg.TTC;
    }
    else {
      resolved.TTC = 0.0
    }

    return resolved;
    }
};

module.exports = Obstacle;
