// Auto-generated. Do not edit!

// (in-package foresight_outputs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Obstacle = require('./Obstacle.js');

//-----------------------------------------------------------

class Frames {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.FrameIndex = null;
      this.FrameTime = null;
      this.obstacles_array = null;
    }
    else {
      if (initObj.hasOwnProperty('FrameIndex')) {
        this.FrameIndex = initObj.FrameIndex
      }
      else {
        this.FrameIndex = 0;
      }
      if (initObj.hasOwnProperty('FrameTime')) {
        this.FrameTime = initObj.FrameTime
      }
      else {
        this.FrameTime = 0.0;
      }
      if (initObj.hasOwnProperty('obstacles_array')) {
        this.obstacles_array = initObj.obstacles_array
      }
      else {
        this.obstacles_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Frames
    // Serialize message field [FrameIndex]
    bufferOffset = _serializer.uint32(obj.FrameIndex, buffer, bufferOffset);
    // Serialize message field [FrameTime]
    bufferOffset = _serializer.float64(obj.FrameTime, buffer, bufferOffset);
    // Serialize message field [obstacles_array]
    // Serialize the length for message field [obstacles_array]
    bufferOffset = _serializer.uint32(obj.obstacles_array.length, buffer, bufferOffset);
    obj.obstacles_array.forEach((val) => {
      bufferOffset = Obstacle.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Frames
    let len;
    let data = new Frames(null);
    // Deserialize message field [FrameIndex]
    data.FrameIndex = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [FrameTime]
    data.FrameTime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [obstacles_array]
    // Deserialize array length for message field [obstacles_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacles_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacles_array[i] = Obstacle.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.obstacles_array.forEach((val) => {
      length += Obstacle.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'foresight_outputs/Frames';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6dd6fdfb9993038c0bfc63e5d2095638';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Frames field 
    uint32 FrameIndex
    float64 FrameTime
    Obstacle[] obstacles_array
    
    ================================================================================
    MSG: foresight_outputs/Obstacle
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
    const resolved = new Frames(null);
    if (msg.FrameIndex !== undefined) {
      resolved.FrameIndex = msg.FrameIndex;
    }
    else {
      resolved.FrameIndex = 0
    }

    if (msg.FrameTime !== undefined) {
      resolved.FrameTime = msg.FrameTime;
    }
    else {
      resolved.FrameTime = 0.0
    }

    if (msg.obstacles_array !== undefined) {
      resolved.obstacles_array = new Array(msg.obstacles_array.length);
      for (let i = 0; i < resolved.obstacles_array.length; ++i) {
        resolved.obstacles_array[i] = Obstacle.Resolve(msg.obstacles_array[i]);
      }
    }
    else {
      resolved.obstacles_array = []
    }

    return resolved;
    }
};

module.exports = Frames;
