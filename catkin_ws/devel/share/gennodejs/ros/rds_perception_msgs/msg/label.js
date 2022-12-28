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

class label {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.label = null;
    }
    else {
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type label
    // Serialize message field [label]
    bufferOffset = _serializer.uint8(obj.label, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type label
    let len;
    let data = new label(null);
    // Deserialize message field [label]
    data.label = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_perception_msgs/label';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c06ea1895dbf2fba71ea775848eb312a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Tracking object type
    uint8 LABEL_INVALID = 0
    uint8 LABEL_UNKNOWN = 1
    uint8 LABEL_CAR = 2
    uint8 LABEL_PEDESTRIAN = 3
    uint8 LABEL_BIKE = 4
    
    uint8 label
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new label(null);
    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = 0
    }

    return resolved;
    }
};

// Constants for message
label.Constants = {
  LABEL_INVALID: 0,
  LABEL_UNKNOWN: 1,
  LABEL_CAR: 2,
  LABEL_PEDESTRIAN: 3,
  LABEL_BIKE: 4,
}

module.exports = label;
