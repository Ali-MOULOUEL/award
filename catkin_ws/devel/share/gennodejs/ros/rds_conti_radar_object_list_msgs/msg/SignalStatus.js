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

class SignalStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.SignalStatus = null;
    }
    else {
      if (initObj.hasOwnProperty('SignalStatus')) {
        this.SignalStatus = initObj.SignalStatus
      }
      else {
        this.SignalStatus = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SignalStatus
    // Serialize message field [SignalStatus]
    bufferOffset = _serializer.uint8(obj.SignalStatus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SignalStatus
    let len;
    let data = new SignalStatus(null);
    // Deserialize message field [SignalStatus]
    data.SignalStatus = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_conti_radar_object_list_msgs/SignalStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '896b07484a13b3414e94543ebb8cffac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #SensorMsgHeader SignalStatus field
    uint8 SIGNALSTATUS_EM_SIGSTATE_INIT = 0
    uint8 SIGNALSTATUS_EM_SIGSTATE_OK = 1
    uint8 SIGNALSTATUS_EM_SIGSTATE_INVALID = 2
    
    uint8 SignalStatus
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SignalStatus(null);
    if (msg.SignalStatus !== undefined) {
      resolved.SignalStatus = msg.SignalStatus;
    }
    else {
      resolved.SignalStatus = 0
    }

    return resolved;
    }
};

// Constants for message
SignalStatus.Constants = {
  SIGNALSTATUS_EM_SIGSTATE_INIT: 0,
  SIGNALSTATUS_EM_SIGSTATE_OK: 1,
  SIGNALSTATUS_EM_SIGSTATE_INVALID: 2,
}

module.exports = SignalStatus;
