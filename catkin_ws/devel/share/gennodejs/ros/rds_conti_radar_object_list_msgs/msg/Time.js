// Auto-generated. Do not edit!

// (in-package rds_conti_radar_object_list_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Time {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Sec = null;
      this.Nsec = null;
    }
    else {
      if (initObj.hasOwnProperty('Sec')) {
        this.Sec = initObj.Sec
      }
      else {
        this.Sec = 0;
      }
      if (initObj.hasOwnProperty('Nsec')) {
        this.Nsec = initObj.Nsec
      }
      else {
        this.Nsec = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Time
    // Serialize message field [Sec]
    bufferOffset = _serializer.uint32(obj.Sec, buffer, bufferOffset);
    // Serialize message field [Nsec]
    bufferOffset = _serializer.uint32(obj.Nsec, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Time
    let len;
    let data = new Time(null);
    // Deserialize message field [Sec]
    data.Sec = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [Nsec]
    data.Nsec = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_conti_radar_object_list_msgs/Time';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd25eef3a4dddf6c83752b23dcacfd7aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Time fields
    uint32 Sec
    uint32 Nsec 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Time(null);
    if (msg.Sec !== undefined) {
      resolved.Sec = msg.Sec;
    }
    else {
      resolved.Sec = 0
    }

    if (msg.Nsec !== undefined) {
      resolved.Nsec = msg.Nsec;
    }
    else {
      resolved.Nsec = 0
    }

    return resolved;
    }
};

module.exports = Time;
