// Auto-generated. Do not edit!

// (in-package nav_ross.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class nav_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.range_resolution = null;
      this.AzimuthSamples = null;
      this.EncoderSize = null;
      this.BinSize = null;
      this.RangeInBins = null;
      this.ExpectedRotationRate = null;
    }
    else {
      if (initObj.hasOwnProperty('range_resolution')) {
        this.range_resolution = initObj.range_resolution
      }
      else {
        this.range_resolution = 0.0;
      }
      if (initObj.hasOwnProperty('AzimuthSamples')) {
        this.AzimuthSamples = initObj.AzimuthSamples
      }
      else {
        this.AzimuthSamples = 0;
      }
      if (initObj.hasOwnProperty('EncoderSize')) {
        this.EncoderSize = initObj.EncoderSize
      }
      else {
        this.EncoderSize = 0;
      }
      if (initObj.hasOwnProperty('BinSize')) {
        this.BinSize = initObj.BinSize
      }
      else {
        this.BinSize = 0;
      }
      if (initObj.hasOwnProperty('RangeInBins')) {
        this.RangeInBins = initObj.RangeInBins
      }
      else {
        this.RangeInBins = 0;
      }
      if (initObj.hasOwnProperty('ExpectedRotationRate')) {
        this.ExpectedRotationRate = initObj.ExpectedRotationRate
      }
      else {
        this.ExpectedRotationRate = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type nav_msg
    // Serialize message field [range_resolution]
    bufferOffset = _serializer.float64(obj.range_resolution, buffer, bufferOffset);
    // Serialize message field [AzimuthSamples]
    bufferOffset = _serializer.uint16(obj.AzimuthSamples, buffer, bufferOffset);
    // Serialize message field [EncoderSize]
    bufferOffset = _serializer.uint16(obj.EncoderSize, buffer, bufferOffset);
    // Serialize message field [BinSize]
    bufferOffset = _serializer.uint16(obj.BinSize, buffer, bufferOffset);
    // Serialize message field [RangeInBins]
    bufferOffset = _serializer.uint16(obj.RangeInBins, buffer, bufferOffset);
    // Serialize message field [ExpectedRotationRate]
    bufferOffset = _serializer.uint16(obj.ExpectedRotationRate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type nav_msg
    let len;
    let data = new nav_msg(null);
    // Deserialize message field [range_resolution]
    data.range_resolution = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [AzimuthSamples]
    data.AzimuthSamples = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [EncoderSize]
    data.EncoderSize = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [BinSize]
    data.BinSize = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [RangeInBins]
    data.RangeInBins = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ExpectedRotationRate]
    data.ExpectedRotationRate = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nav_ross/nav_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18581dec57d2b4d9e4f4a5bc2f5e3e17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 range_resolution
    uint16 AzimuthSamples
    uint16 EncoderSize
    uint16 BinSize
    uint16 RangeInBins
    uint16 ExpectedRotationRate
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new nav_msg(null);
    if (msg.range_resolution !== undefined) {
      resolved.range_resolution = msg.range_resolution;
    }
    else {
      resolved.range_resolution = 0.0
    }

    if (msg.AzimuthSamples !== undefined) {
      resolved.AzimuthSamples = msg.AzimuthSamples;
    }
    else {
      resolved.AzimuthSamples = 0
    }

    if (msg.EncoderSize !== undefined) {
      resolved.EncoderSize = msg.EncoderSize;
    }
    else {
      resolved.EncoderSize = 0
    }

    if (msg.BinSize !== undefined) {
      resolved.BinSize = msg.BinSize;
    }
    else {
      resolved.BinSize = 0
    }

    if (msg.RangeInBins !== undefined) {
      resolved.RangeInBins = msg.RangeInBins;
    }
    else {
      resolved.RangeInBins = 0
    }

    if (msg.ExpectedRotationRate !== undefined) {
      resolved.ExpectedRotationRate = msg.ExpectedRotationRate;
    }
    else {
      resolved.ExpectedRotationRate = 0
    }

    return resolved;
    }
};

module.exports = nav_msg;
