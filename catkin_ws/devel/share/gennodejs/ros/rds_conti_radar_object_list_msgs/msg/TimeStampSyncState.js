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

class TimeStampSyncState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.TimeStampSyncState = null;
    }
    else {
      if (initObj.hasOwnProperty('TimeStampSyncState')) {
        this.TimeStampSyncState = initObj.TimeStampSyncState
      }
      else {
        this.TimeStampSyncState = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TimeStampSyncState
    // Serialize message field [TimeStampSyncState]
    bufferOffset = _serializer.uint8(obj.TimeStampSyncState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TimeStampSyncState
    let len;
    let data = new TimeStampSyncState(null);
    // Deserialize message field [TimeStampSyncState]
    data.TimeStampSyncState = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_conti_radar_object_list_msgs/TimeStampSyncState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '951c6e7c01586103049a126c68595609';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #MsgHeader field TimeStampSyncState
    uint8 TIMESTAMPSYNCSTATE_UNKNOWN_SYNC = 0              #No information on the sync state at all
    uint8 TIMESTAMPSYNCSTATE_NOT_SYNCED = 1                #timestamp is not synced at all
    uint8 TIMESTAMPSYNCSTATE_SYNCED_GTC = 2                #timestamp is synced with GTC mechanism
    uint8 TIMESTAMPSYNCSTATE_SYNCED_PTP = 3                #timestamp is synced with PTP mechanism
    uint8 TIMESTAMPSYNCSTATE_SYNCED_REPLAY = 4             #timestamp is synced by replay mechanism
    
    uint8 TimeStampSyncState
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TimeStampSyncState(null);
    if (msg.TimeStampSyncState !== undefined) {
      resolved.TimeStampSyncState = msg.TimeStampSyncState;
    }
    else {
      resolved.TimeStampSyncState = 0
    }

    return resolved;
    }
};

// Constants for message
TimeStampSyncState.Constants = {
  TIMESTAMPSYNCSTATE_UNKNOWN_SYNC: 0,
  TIMESTAMPSYNCSTATE_NOT_SYNCED: 1,
  TIMESTAMPSYNCSTATE_SYNCED_GTC: 2,
  TIMESTAMPSYNCSTATE_SYNCED_PTP: 3,
  TIMESTAMPSYNCSTATE_SYNCED_REPLAY: 4,
}

module.exports = TimeStampSyncState;
