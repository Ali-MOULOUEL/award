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

class drive_mode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.drive_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('drive_mode')) {
        this.drive_mode = initObj.drive_mode
      }
      else {
        this.drive_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type drive_mode
    // Serialize message field [drive_mode]
    bufferOffset = _serializer.uint8(obj.drive_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type drive_mode
    let len;
    let data = new drive_mode(null);
    // Deserialize message field [drive_mode]
    data.drive_mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_msgs/drive_mode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44ef9e5eb7a21f58b8d93028b36ad4e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 DRIVE_MODE_MANUAL = 0 
    uint8 DRIVE_MODE_AUTOMATIC = 1
    uint8 DRIVE_MODE_TELEOPERATION = 2
    
    uint8 drive_mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new drive_mode(null);
    if (msg.drive_mode !== undefined) {
      resolved.drive_mode = msg.drive_mode;
    }
    else {
      resolved.drive_mode = 0
    }

    return resolved;
    }
};

// Constants for message
drive_mode.Constants = {
  DRIVE_MODE_MANUAL: 0,
  DRIVE_MODE_AUTOMATIC: 1,
  DRIVE_MODE_TELEOPERATION: 2,
}

module.exports = drive_mode;
