// Auto-generated. Do not edit!

// (in-package rds_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class command_car {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.speed = null;
      this.front_steering = null;
      this.rear_steering = null;
      this.acceleration = null;
      this.deceleration = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('front_steering')) {
        this.front_steering = initObj.front_steering
      }
      else {
        this.front_steering = 0.0;
      }
      if (initObj.hasOwnProperty('rear_steering')) {
        this.rear_steering = initObj.rear_steering
      }
      else {
        this.rear_steering = 0.0;
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = 0.0;
      }
      if (initObj.hasOwnProperty('deceleration')) {
        this.deceleration = initObj.deceleration
      }
      else {
        this.deceleration = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type command_car
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [front_steering]
    bufferOffset = _serializer.float32(obj.front_steering, buffer, bufferOffset);
    // Serialize message field [rear_steering]
    bufferOffset = _serializer.float32(obj.rear_steering, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = _serializer.float32(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [deceleration]
    bufferOffset = _serializer.float32(obj.deceleration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type command_car
    let len;
    let data = new command_car(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [front_steering]
    data.front_steering = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rear_steering]
    data.rear_steering = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [deceleration]
    data.deceleration = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_msgs/command_car';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'acc368c3bdfdfc6be58c8f9da8ae46ae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float32 speed
    float32 front_steering
    float32 rear_steering
    float32 acceleration
    float32 deceleration
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new command_car(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.front_steering !== undefined) {
      resolved.front_steering = msg.front_steering;
    }
    else {
      resolved.front_steering = 0.0
    }

    if (msg.rear_steering !== undefined) {
      resolved.rear_steering = msg.rear_steering;
    }
    else {
      resolved.rear_steering = 0.0
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = msg.acceleration;
    }
    else {
      resolved.acceleration = 0.0
    }

    if (msg.deceleration !== undefined) {
      resolved.deceleration = msg.deceleration;
    }
    else {
      resolved.deceleration = 0.0
    }

    return resolved;
    }
};

module.exports = command_car;
