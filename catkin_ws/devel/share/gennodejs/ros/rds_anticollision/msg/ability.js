// Auto-generated. Do not edit!

// (in-package rds_anticollision.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ability {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ability = null;
    }
    else {
      if (initObj.hasOwnProperty('ability')) {
        this.ability = initObj.ability
      }
      else {
        this.ability = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ability
    // Serialize message field [ability]
    bufferOffset = _serializer.int8(obj.ability, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ability
    let len;
    let data = new ability(null);
    // Deserialize message field [ability]
    data.ability = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_anticollision/ability';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6a11a918a995a6a669d08889ae70ed8d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 ABILITY_NOT_APPLICABLE = -1
    int8 ABILITY_NOT_AVAILABLE = 0 
    int8 ABILITY_TRUE = 1
    int8 ABILITY_FALSE = 2
    
    int8 ability
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ability(null);
    if (msg.ability !== undefined) {
      resolved.ability = msg.ability;
    }
    else {
      resolved.ability = 0
    }

    return resolved;
    }
};

// Constants for message
ability.Constants = {
  ABILITY_NOT_APPLICABLE: -1,
  ABILITY_NOT_AVAILABLE: 0,
  ABILITY_TRUE: 1,
  ABILITY_FALSE: 2,
}

module.exports = ability;
