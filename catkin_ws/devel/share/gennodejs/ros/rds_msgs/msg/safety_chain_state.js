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

class safety_chain_state {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type safety_chain_state
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type safety_chain_state
    let len;
    let data = new safety_chain_state(null);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_msgs/safety_chain_state';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c854c67ecd4d86925912568f00ec3d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 STATE_ACTIVE = 0
    uint8 STATE_DISABLED = 1
    uint8 STATE_FAILSOFT = 2
    
    uint8 state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new safety_chain_state(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

// Constants for message
safety_chain_state.Constants = {
  STATE_ACTIVE: 0,
  STATE_DISABLED: 1,
  STATE_FAILSOFT: 2,
}

module.exports = safety_chain_state;
