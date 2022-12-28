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

class ObjProvidedKinematicStates {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.KinematicState = null;
    }
    else {
      if (initObj.hasOwnProperty('KinematicState')) {
        this.KinematicState = initObj.KinematicState
      }
      else {
        this.KinematicState = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjProvidedKinematicStates
    // Serialize message field [KinematicState]
    bufferOffset = _serializer.uint8(obj.KinematicState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjProvidedKinematicStates
    let len;
    let data = new ObjProvidedKinematicStates(null);
    // Deserialize message field [KinematicState]
    data.KinematicState = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_conti_radar_object_list_msgs/ObjProvidedKinematicStates';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f825bc1f0caabbfa32e1215fd872b81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #Object kinematic state
    uint8 KINEMATICSTATE_RELATIVE = 0
    uint8 KINEMATICSTATE_ABSOLUTE = 1
    uint8 KINEMATICSTATE_RELATIVE_AND_ABSOLUTE = 2
    
    uint8 KinematicState
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjProvidedKinematicStates(null);
    if (msg.KinematicState !== undefined) {
      resolved.KinematicState = msg.KinematicState;
    }
    else {
      resolved.KinematicState = 0
    }

    return resolved;
    }
};

// Constants for message
ObjProvidedKinematicStates.Constants = {
  KINEMATICSTATE_RELATIVE: 0,
  KINEMATICSTATE_ABSOLUTE: 1,
  KINEMATICSTATE_RELATIVE_AND_ABSOLUTE: 2,
}

module.exports = ObjProvidedKinematicStates;
