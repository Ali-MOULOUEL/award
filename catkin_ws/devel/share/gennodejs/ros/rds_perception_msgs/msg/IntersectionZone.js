// Auto-generated. Do not edit!

// (in-package rds_perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let label = require('./label.js');

//-----------------------------------------------------------

class IntersectionZone {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.provider = null;
      this.ignored_blind_obstacles = null;
    }
    else {
      if (initObj.hasOwnProperty('provider')) {
        this.provider = initObj.provider
      }
      else {
        this.provider = 0;
      }
      if (initObj.hasOwnProperty('ignored_blind_obstacles')) {
        this.ignored_blind_obstacles = initObj.ignored_blind_obstacles
      }
      else {
        this.ignored_blind_obstacles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IntersectionZone
    // Serialize message field [provider]
    bufferOffset = _serializer.uint8(obj.provider, buffer, bufferOffset);
    // Serialize message field [ignored_blind_obstacles]
    // Serialize the length for message field [ignored_blind_obstacles]
    bufferOffset = _serializer.uint32(obj.ignored_blind_obstacles.length, buffer, bufferOffset);
    obj.ignored_blind_obstacles.forEach((val) => {
      bufferOffset = label.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IntersectionZone
    let len;
    let data = new IntersectionZone(null);
    // Deserialize message field [provider]
    data.provider = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ignored_blind_obstacles]
    // Deserialize array length for message field [ignored_blind_obstacles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ignored_blind_obstacles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ignored_blind_obstacles[i] = label.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ignored_blind_obstacles.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_perception_msgs/IntersectionZone';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '42dde0da16a1fa71a8c22e5108233e9c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 PROVIDER_PERCEPTION = 1
    uint8 PROVIDER_ADS_B = 2
    uint8 provider
    
    #geometry_msgs/Polygon area
    
    # Filled only when provider is perception based
    rds_perception_msgs/label[] ignored_blind_obstacles
    
    ================================================================================
    MSG: rds_perception_msgs/label
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
    const resolved = new IntersectionZone(null);
    if (msg.provider !== undefined) {
      resolved.provider = msg.provider;
    }
    else {
      resolved.provider = 0
    }

    if (msg.ignored_blind_obstacles !== undefined) {
      resolved.ignored_blind_obstacles = new Array(msg.ignored_blind_obstacles.length);
      for (let i = 0; i < resolved.ignored_blind_obstacles.length; ++i) {
        resolved.ignored_blind_obstacles[i] = label.Resolve(msg.ignored_blind_obstacles[i]);
      }
    }
    else {
      resolved.ignored_blind_obstacles = []
    }

    return resolved;
    }
};

// Constants for message
IntersectionZone.Constants = {
  PROVIDER_PERCEPTION: 1,
  PROVIDER_ADS_B: 2,
}

module.exports = IntersectionZone;
