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

class TimeStampSource {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.TimeStampSource = null;
    }
    else {
      if (initObj.hasOwnProperty('TimeStampSource')) {
        this.TimeStampSource = initObj.TimeStampSource
      }
      else {
        this.TimeStampSource = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimeStampSource
    // Serialize message field [TimeStampSource]
    bufferOffset = _serializer.uint8(obj.TimeStampSource, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimeStampSource
    let len;
    let data = new TimeStampSource(null);
    // Deserialize message field [TimeStampSource]
    data.TimeStampSource = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_conti_radar_object_list_msgs/TimeStampSource';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2fb2d134001df6f67e0a8dc8c7ddc7e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #MsgHeader field TimeStampSource
    uint8 TIMESTAMPSOURCE_UNKNOWN_SOURCE = 0    #No information on the source at all
    uint8 TIMESTAMPSOURCE_SENSOR = 1            #Timestamp is set by sensor
    uint8 TIMESTAMPSOURCE_ALGO = 2              #Timestamp is set by algo
    
    uint8 TimeStampSource 
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimeStampSource(null);
    if (msg.TimeStampSource !== undefined) {
      resolved.TimeStampSource = msg.TimeStampSource;
    }
    else {
      resolved.TimeStampSource = 0
    }

    return resolved;
    }
};

// Constants for message
TimeStampSource.Constants = {
  TIMESTAMPSOURCE_UNKNOWN_SOURCE: 0,
  TIMESTAMPSOURCE_SENSOR: 1,
  TIMESTAMPSOURCE_ALGO: 2,
}

module.exports = TimeStampSource;
