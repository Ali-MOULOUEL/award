// Auto-generated. Do not edit!

// (in-package rds_perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class extent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.extent = null;
    }
    else {
      if (initObj.hasOwnProperty('extent')) {
        this.extent = initObj.extent
      }
      else {
        this.extent = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type extent
    // Serialize message field [extent]
    bufferOffset = _serializer.uint8(obj.extent, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type extent
    let len;
    let data = new extent(null);
    // Deserialize message field [extent]
    data.extent = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_perception_msgs/extent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '54d45419b8a9fa808fd73d0379c42304';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Tracking extent type
    uint8 EXTENT_ELLIPSE = 0
    uint8 EXTENT_OBB = 1
    
    uint8 extent
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new extent(null);
    if (msg.extent !== undefined) {
      resolved.extent = msg.extent;
    }
    else {
      resolved.extent = 0
    }

    return resolved;
    }
};

// Constants for message
extent.Constants = {
  EXTENT_ELLIPSE: 0,
  EXTENT_OBB: 1,
}

module.exports = extent;
