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

class ObjState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ObjState = null;
    }
    else {
      if (initObj.hasOwnProperty('ObjState')) {
        this.ObjState = initObj.ObjState
      }
      else {
        this.ObjState = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjState
    // Serialize message field [ObjState]
    bufferOffset = _serializer.uint8(obj.ObjState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjState
    let len;
    let data = new ObjState(null);
    // Deserialize message field [ObjState]
    data.ObjState = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_conti_radar_object_list_msgs/ObjState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81b9ceedc1cd61a2e377a5bb984f61bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Radarobject ObjState field
    uint8 OBJSTATE_DELETED = 0
    uint8 OBJSTATE_NEW = 1
    uint8 OBJSTATE_MEASURED = 2
    uint8 OBJSTATE_PREDICTED = 3
    
    uint8 ObjState
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjState(null);
    if (msg.ObjState !== undefined) {
      resolved.ObjState = msg.ObjState;
    }
    else {
      resolved.ObjState = 0
    }

    return resolved;
    }
};

// Constants for message
ObjState.Constants = {
  OBJSTATE_DELETED: 0,
  OBJSTATE_NEW: 1,
  OBJSTATE_MEASURED: 2,
  OBJSTATE_PREDICTED: 3,
}

module.exports = ObjState;
