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

class LDeltaQual {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.LDeltaQual = null;
    }
    else {
      if (initObj.hasOwnProperty('LDeltaQual')) {
        this.LDeltaQual = initObj.LDeltaQual
      }
      else {
        this.LDeltaQual = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LDeltaQual
    // Serialize message field [LDeltaQual]
    bufferOffset = _serializer.uint8(obj.LDeltaQual, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LDeltaQual
    let len;
    let data = new LDeltaQual(null);
    // Deserialize message field [LDeltaQual]
    data.LDeltaQual = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_conti_radar_object_list_msgs/LDeltaQual';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '46a34ed6db73a66ffc285aa58260c6bd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LDeltaQual(null);
    if (msg.LDeltaQual !== undefined) {
      resolved.LDeltaQual = msg.LDeltaQual;
    }
    else {
      resolved.LDeltaQual = 0
    }

    return resolved;
    }
};

// Constants for message
LDeltaQual.Constants = {
  LDELTAQUAL_ALL_INVALID: 0,
  LDELTAQUAL_LEFT_VALID: 1,
  LDELTAQUAL_MID_VALID: 2,
  LDELTAQUAL_LEFT_MID_VALID: 3,
  LDELTAQUAL_RIGHT_VALID: 4,
  LDELTAQUAL_RIGHT_LEFT_VALID: 5,
  LDELTAQUAL_RIGHT_MID_VALID: 6,
  LDELTAQUAL_ALL_VALID: 7,
}

module.exports = LDeltaQual;
