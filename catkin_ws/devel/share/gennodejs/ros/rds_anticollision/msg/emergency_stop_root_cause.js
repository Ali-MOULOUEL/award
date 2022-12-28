// Auto-generated. Do not edit!

// (in-package rds_anticollision.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let error = require('./error.js');

//-----------------------------------------------------------

class emergency_stop_root_cause {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.causes = null;
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('causes')) {
        this.causes = initObj.causes
      }
      else {
        this.causes = [];
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type emergency_stop_root_cause
    // Serialize message field [causes]
    // Serialize the length for message field [causes]
    bufferOffset = _serializer.uint32(obj.causes.length, buffer, bufferOffset);
    obj.causes.forEach((val) => {
      bufferOffset = error.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type emergency_stop_root_cause
    let len;
    let data = new emergency_stop_root_cause(null);
    // Deserialize message field [causes]
    // Deserialize array length for message field [causes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.causes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.causes[i] = error.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.causes.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_anticollision/emergency_stop_root_cause';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd411f9af8dac62ba702700d1fd92b8e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    error[] causes
    
    # Vehicle Context when fired
    float32 speed
    
    ================================================================================
    MSG: rds_anticollision/error
    # Generic error
    # Value field equals 0 means no error (whatever category is set to)
    uint32 category
    int32 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new emergency_stop_root_cause(null);
    if (msg.causes !== undefined) {
      resolved.causes = new Array(msg.causes.length);
      for (let i = 0; i < resolved.causes.length; ++i) {
        resolved.causes[i] = error.Resolve(msg.causes[i]);
      }
    }
    else {
      resolved.causes = []
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    return resolved;
    }
};

module.exports = emergency_stop_root_cause;
