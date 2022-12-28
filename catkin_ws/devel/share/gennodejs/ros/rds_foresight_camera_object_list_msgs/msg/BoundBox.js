// Auto-generated. Do not edit!

// (in-package rds_foresight_camera_object_list_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BoundBox {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.BottomRightX = null;
      this.BottomRightY = null;
      this.TopLeftX = null;
      this.TopLeftY = null;
    }
    else {
      if (initObj.hasOwnProperty('BottomRightX')) {
        this.BottomRightX = initObj.BottomRightX
      }
      else {
        this.BottomRightX = 0.0;
      }
      if (initObj.hasOwnProperty('BottomRightY')) {
        this.BottomRightY = initObj.BottomRightY
      }
      else {
        this.BottomRightY = 0.0;
      }
      if (initObj.hasOwnProperty('TopLeftX')) {
        this.TopLeftX = initObj.TopLeftX
      }
      else {
        this.TopLeftX = 0.0;
      }
      if (initObj.hasOwnProperty('TopLeftY')) {
        this.TopLeftY = initObj.TopLeftY
      }
      else {
        this.TopLeftY = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BoundBox
    // Serialize message field [BottomRightX]
    bufferOffset = _serializer.float32(obj.BottomRightX, buffer, bufferOffset);
    // Serialize message field [BottomRightY]
    bufferOffset = _serializer.float32(obj.BottomRightY, buffer, bufferOffset);
    // Serialize message field [TopLeftX]
    bufferOffset = _serializer.float32(obj.TopLeftX, buffer, bufferOffset);
    // Serialize message field [TopLeftY]
    bufferOffset = _serializer.float32(obj.TopLeftY, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BoundBox
    let len;
    let data = new BoundBox(null);
    // Deserialize message field [BottomRightX]
    data.BottomRightX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [BottomRightY]
    data.BottomRightY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [TopLeftX]
    data.TopLeftX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [TopLeftY]
    data.TopLeftY = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_foresight_camera_object_list_msgs/BoundBox';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd17ab06cbfb1e620b89068c14f0e9d84';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #BoundBox field
    float32 BottomRightX
    float32 BottomRightY
    float32 TopLeftX
    float32 TopLeftY
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BoundBox(null);
    if (msg.BottomRightX !== undefined) {
      resolved.BottomRightX = msg.BottomRightX;
    }
    else {
      resolved.BottomRightX = 0.0
    }

    if (msg.BottomRightY !== undefined) {
      resolved.BottomRightY = msg.BottomRightY;
    }
    else {
      resolved.BottomRightY = 0.0
    }

    if (msg.TopLeftX !== undefined) {
      resolved.TopLeftX = msg.TopLeftX;
    }
    else {
      resolved.TopLeftX = 0.0
    }

    if (msg.TopLeftY !== undefined) {
      resolved.TopLeftY = msg.TopLeftY;
    }
    else {
      resolved.TopLeftY = 0.0
    }

    return resolved;
    }
};

module.exports = BoundBox;
