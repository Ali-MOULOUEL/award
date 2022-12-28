// Auto-generated. Do not edit!

// (in-package rds_conti_radar_object_list_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Time = require('./Time.js');
let TimeStampSource = require('./TimeStampSource.js');
let TimeStampSyncState = require('./TimeStampSyncState.js');

//-----------------------------------------------------------

class MsgHeader {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Seq = null;
      this.stamp = null;
      this.Timestamp_source = null;
      this.TimeStamp_sync_state = null;
    }
    else {
      if (initObj.hasOwnProperty('Seq')) {
        this.Seq = initObj.Seq
      }
      else {
        this.Seq = 0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = new Time();
      }
      if (initObj.hasOwnProperty('Timestamp_source')) {
        this.Timestamp_source = initObj.Timestamp_source
      }
      else {
        this.Timestamp_source = new TimeStampSource();
      }
      if (initObj.hasOwnProperty('TimeStamp_sync_state')) {
        this.TimeStamp_sync_state = initObj.TimeStamp_sync_state
      }
      else {
        this.TimeStamp_sync_state = new TimeStampSyncState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MsgHeader
    // Serialize message field [Seq]
    bufferOffset = _serializer.uint32(obj.Seq, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = Time.serialize(obj.stamp, buffer, bufferOffset);
    // Serialize message field [Timestamp_source]
    bufferOffset = TimeStampSource.serialize(obj.Timestamp_source, buffer, bufferOffset);
    // Serialize message field [TimeStamp_sync_state]
    bufferOffset = TimeStampSyncState.serialize(obj.TimeStamp_sync_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MsgHeader
    let len;
    let data = new MsgHeader(null);
    // Deserialize message field [Seq]
    data.Seq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = Time.deserialize(buffer, bufferOffset);
    // Deserialize message field [Timestamp_source]
    data.Timestamp_source = TimeStampSource.deserialize(buffer, bufferOffset);
    // Deserialize message field [TimeStamp_sync_state]
    data.TimeStamp_sync_state = TimeStampSyncState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_conti_radar_object_list_msgs/MsgHeader';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f65b5aa4f825d78a4a1dd55ce9d49881';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #MsgHeader fields
    uint32 Seq          #sequence ID: consecutively increasing ID
    Time stamp
    TimeStampSource Timestamp_source
    TimeStampSyncState TimeStamp_sync_state
    
    ================================================================================
    MSG: rds_conti_radar_object_list_msgs/Time
    #Time fields
    uint32 Sec
    uint32 Nsec 
    
    ================================================================================
    MSG: rds_conti_radar_object_list_msgs/TimeStampSource
    #MsgHeader field TimeStampSource
    uint8 TIMESTAMPSOURCE_UNKNOWN_SOURCE = 0    #No information on the source at all
    uint8 TIMESTAMPSOURCE_SENSOR = 1            #Timestamp is set by sensor
    uint8 TIMESTAMPSOURCE_ALGO = 2              #Timestamp is set by algo
    
    uint8 TimeStampSource 
    ================================================================================
    MSG: rds_conti_radar_object_list_msgs/TimeStampSyncState
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
    const resolved = new MsgHeader(null);
    if (msg.Seq !== undefined) {
      resolved.Seq = msg.Seq;
    }
    else {
      resolved.Seq = 0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = Time.Resolve(msg.stamp)
    }
    else {
      resolved.stamp = new Time()
    }

    if (msg.Timestamp_source !== undefined) {
      resolved.Timestamp_source = TimeStampSource.Resolve(msg.Timestamp_source)
    }
    else {
      resolved.Timestamp_source = new TimeStampSource()
    }

    if (msg.TimeStamp_sync_state !== undefined) {
      resolved.TimeStamp_sync_state = TimeStampSyncState.Resolve(msg.TimeStamp_sync_state)
    }
    else {
      resolved.TimeStamp_sync_state = new TimeStampSyncState()
    }

    return resolved;
    }
};

module.exports = MsgHeader;
