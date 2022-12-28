// Auto-generated. Do not edit!

// (in-package rds_conti_radar_object_list_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MsgHeader = require('./MsgHeader.js');
let SignalStatus = require('./SignalStatus.js');

//-----------------------------------------------------------

class SensorMsgHeader {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.CommonHeader = null;
      this.SensorId = null;
      this.SignalStatus = null;
    }
    else {
      if (initObj.hasOwnProperty('CommonHeader')) {
        this.CommonHeader = initObj.CommonHeader
      }
      else {
        this.CommonHeader = new MsgHeader();
      }
      if (initObj.hasOwnProperty('SensorId')) {
        this.SensorId = initObj.SensorId
      }
      else {
        this.SensorId = 0;
      }
      if (initObj.hasOwnProperty('SignalStatus')) {
        this.SignalStatus = initObj.SignalStatus
      }
      else {
        this.SignalStatus = new SignalStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorMsgHeader
    // Serialize message field [CommonHeader]
    bufferOffset = MsgHeader.serialize(obj.CommonHeader, buffer, bufferOffset);
    // Serialize message field [SensorId]
    bufferOffset = _serializer.uint32(obj.SensorId, buffer, bufferOffset);
    // Serialize message field [SignalStatus]
    bufferOffset = SignalStatus.serialize(obj.SignalStatus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorMsgHeader
    let len;
    let data = new SensorMsgHeader(null);
    // Deserialize message field [CommonHeader]
    data.CommonHeader = MsgHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [SensorId]
    data.SensorId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [SignalStatus]
    data.SignalStatus = SignalStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_conti_radar_object_list_msgs/SensorMsgHeader';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c61f492b9657164b862e05bce5436fda';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #SensorMsgHeader fields
    MsgHeader CommonHeader
    uint32 SensorId             #sensor ID
    SignalStatus SignalStatus   #status of the signals in the data packet
    ================================================================================
    MSG: rds_conti_radar_object_list_msgs/MsgHeader
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
    
    ================================================================================
    MSG: rds_conti_radar_object_list_msgs/SignalStatus
    #SensorMsgHeader SignalStatus field
    uint8 SIGNALSTATUS_EM_SIGSTATE_INIT = 0
    uint8 SIGNALSTATUS_EM_SIGSTATE_OK = 1
    uint8 SIGNALSTATUS_EM_SIGSTATE_INVALID = 2
    
    uint8 SignalStatus
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorMsgHeader(null);
    if (msg.CommonHeader !== undefined) {
      resolved.CommonHeader = MsgHeader.Resolve(msg.CommonHeader)
    }
    else {
      resolved.CommonHeader = new MsgHeader()
    }

    if (msg.SensorId !== undefined) {
      resolved.SensorId = msg.SensorId;
    }
    else {
      resolved.SensorId = 0
    }

    if (msg.SignalStatus !== undefined) {
      resolved.SignalStatus = SignalStatus.Resolve(msg.SignalStatus)
    }
    else {
      resolved.SignalStatus = new SignalStatus()
    }

    return resolved;
    }
};

module.exports = SensorMsgHeader;
