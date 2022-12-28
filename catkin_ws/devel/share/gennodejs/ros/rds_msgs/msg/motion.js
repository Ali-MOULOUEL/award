// Auto-generated. Do not edit!

// (in-package rds_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class motion {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motion = null;
    }
    else {
      if (initObj.hasOwnProperty('motion')) {
        this.motion = initObj.motion
      }
      else {
        this.motion = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motion
    // Serialize message field [motion]
    bufferOffset = _serializer.uint8(obj.motion, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motion
    let len;
    let data = new motion(null);
    // Deserialize message field [motion]
    data.motion = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_msgs/motion';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b51040594c3742731f9d75a1c817e1f9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Motion type
    uint8 MOTION_UNKNOWN = 0
    uint8 MOTION_MOVING = 1
    uint8 MOTION_NULL_SPEED = 2
    uint8 MOTION_PARKED = 3
    
    uint8 motion
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motion(null);
    if (msg.motion !== undefined) {
      resolved.motion = msg.motion;
    }
    else {
      resolved.motion = 0
    }

    return resolved;
    }
};

// Constants for message
motion.Constants = {
  MOTION_UNKNOWN: 0,
  MOTION_MOVING: 1,
  MOTION_NULL_SPEED: 2,
  MOTION_PARKED: 3,
}

module.exports = motion;
