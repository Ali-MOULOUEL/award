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

class DynamicProperty {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.DynamicProperty = null;
    }
    else {
      if (initObj.hasOwnProperty('DynamicProperty')) {
        this.DynamicProperty = initObj.DynamicProperty
      }
      else {
        this.DynamicProperty = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DynamicProperty
    // Serialize message field [DynamicProperty]
    bufferOffset = _serializer.uint8(obj.DynamicProperty, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DynamicProperty
    let len;
    let data = new DynamicProperty(null);
    // Deserialize message field [DynamicProperty]
    data.DynamicProperty = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_conti_radar_object_list_msgs/DynamicProperty';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '85d5c392a5c41a0edefab8879d7f3fbf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #RadarObject DynamicProperty field
    uint8 DYNAMICPROPERTY_MOVING = 0
    uint8 DYNAMICPROPERTY_STATIONARY = 1
    uint8 DYNAMICPROPERTY_ONCOMING = 2
    uint8 DYNAMICPROPERTY_UNKNOWN = 3
    
    uint8 DynamicProperty
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DynamicProperty(null);
    if (msg.DynamicProperty !== undefined) {
      resolved.DynamicProperty = msg.DynamicProperty;
    }
    else {
      resolved.DynamicProperty = 0
    }

    return resolved;
    }
};

// Constants for message
DynamicProperty.Constants = {
  DYNAMICPROPERTY_MOVING: 0,
  DYNAMICPROPERTY_STATIONARY: 1,
  DYNAMICPROPERTY_ONCOMING: 2,
  DYNAMICPROPERTY_UNKNOWN: 3,
}

module.exports = DynamicProperty;
