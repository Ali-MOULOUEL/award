// Auto-generated. Do not edit!

// (in-package rds_anticollision.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let drive_mode = require('./drive_mode.js');
let motion = require('./motion.js');
let emergency_stop_root_cause = require('./emergency_stop_root_cause.js');
let error = require('./error.js');
let safety_chain_state = require('./safety_chain_state.js');
let ability = require('./ability.js');
let start_mission_state = require('./start_mission_state.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class msg_vehicle_state_common {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.drive_mode = null;
      this.motion = null;
      this.emergency_stop_root_causes = null;
      this.errors = null;
      this.warnings = null;
      this.safety_chain_state = null;
      this.controller_status = null;
      this.engagement_ability = null;
      this.start_mission_state = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('drive_mode')) {
        this.drive_mode = initObj.drive_mode
      }
      else {
        this.drive_mode = new drive_mode();
      }
      if (initObj.hasOwnProperty('motion')) {
        this.motion = initObj.motion
      }
      else {
        this.motion = new motion();
      }
      if (initObj.hasOwnProperty('emergency_stop_root_causes')) {
        this.emergency_stop_root_causes = initObj.emergency_stop_root_causes
      }
      else {
        this.emergency_stop_root_causes = new emergency_stop_root_cause();
      }
      if (initObj.hasOwnProperty('errors')) {
        this.errors = initObj.errors
      }
      else {
        this.errors = [];
      }
      if (initObj.hasOwnProperty('warnings')) {
        this.warnings = initObj.warnings
      }
      else {
        this.warnings = [];
      }
      if (initObj.hasOwnProperty('safety_chain_state')) {
        this.safety_chain_state = initObj.safety_chain_state
      }
      else {
        this.safety_chain_state = new safety_chain_state();
      }
      if (initObj.hasOwnProperty('controller_status')) {
        this.controller_status = initObj.controller_status
      }
      else {
        this.controller_status = new ability();
      }
      if (initObj.hasOwnProperty('engagement_ability')) {
        this.engagement_ability = initObj.engagement_ability
      }
      else {
        this.engagement_ability = new ability();
      }
      if (initObj.hasOwnProperty('start_mission_state')) {
        this.start_mission_state = initObj.start_mission_state
      }
      else {
        this.start_mission_state = new start_mission_state();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msg_vehicle_state_common
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [drive_mode]
    bufferOffset = drive_mode.serialize(obj.drive_mode, buffer, bufferOffset);
    // Serialize message field [motion]
    bufferOffset = motion.serialize(obj.motion, buffer, bufferOffset);
    // Serialize message field [emergency_stop_root_causes]
    bufferOffset = emergency_stop_root_cause.serialize(obj.emergency_stop_root_causes, buffer, bufferOffset);
    // Serialize message field [errors]
    // Serialize the length for message field [errors]
    bufferOffset = _serializer.uint32(obj.errors.length, buffer, bufferOffset);
    obj.errors.forEach((val) => {
      bufferOffset = error.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [warnings]
    // Serialize the length for message field [warnings]
    bufferOffset = _serializer.uint32(obj.warnings.length, buffer, bufferOffset);
    obj.warnings.forEach((val) => {
      bufferOffset = error.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [safety_chain_state]
    bufferOffset = safety_chain_state.serialize(obj.safety_chain_state, buffer, bufferOffset);
    // Serialize message field [controller_status]
    bufferOffset = ability.serialize(obj.controller_status, buffer, bufferOffset);
    // Serialize message field [engagement_ability]
    bufferOffset = ability.serialize(obj.engagement_ability, buffer, bufferOffset);
    // Serialize message field [start_mission_state]
    bufferOffset = start_mission_state.serialize(obj.start_mission_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msg_vehicle_state_common
    let len;
    let data = new msg_vehicle_state_common(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [drive_mode]
    data.drive_mode = drive_mode.deserialize(buffer, bufferOffset);
    // Deserialize message field [motion]
    data.motion = motion.deserialize(buffer, bufferOffset);
    // Deserialize message field [emergency_stop_root_causes]
    data.emergency_stop_root_causes = emergency_stop_root_cause.deserialize(buffer, bufferOffset);
    // Deserialize message field [errors]
    // Deserialize array length for message field [errors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.errors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.errors[i] = error.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [warnings]
    // Deserialize array length for message field [warnings]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.warnings = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.warnings[i] = error.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [safety_chain_state]
    data.safety_chain_state = safety_chain_state.deserialize(buffer, bufferOffset);
    // Deserialize message field [controller_status]
    data.controller_status = ability.deserialize(buffer, bufferOffset);
    // Deserialize message field [engagement_ability]
    data.engagement_ability = ability.deserialize(buffer, bufferOffset);
    // Deserialize message field [start_mission_state]
    data.start_mission_state = start_mission_state.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += emergency_stop_root_cause.getMessageSize(object.emergency_stop_root_causes);
    length += 8 * object.errors.length;
    length += 8 * object.warnings.length;
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_anticollision/msg_vehicle_state_common';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c4e825550da842f8d9590a064f49c07';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    drive_mode drive_mode
    
    motion motion
    emergency_stop_root_cause emergency_stop_root_causes
    error[] errors
    error[] warnings
    
    safety_chain_state safety_chain_state
    ability controller_status
    ability engagement_ability
    start_mission_state start_mission_state
    
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
    
    ================================================================================
    MSG: rds_anticollision/drive_mode
    uint8 DRIVE_MODE_MANUAL = 0 
    uint8 DRIVE_MODE_AUTOMATIC = 1
    uint8 DRIVE_MODE_TELEOPERATION = 2
    
    uint8 drive_mode
    
    ================================================================================
    MSG: rds_anticollision/motion
    # Motion type
    uint8 MOTION_UNKNOWN = 0
    uint8 MOTION_MOVING = 1
    uint8 MOTION_NULL_SPEED = 2
    uint8 MOTION_PARKED = 3
    
    uint8 motion
    
    ================================================================================
    MSG: rds_anticollision/emergency_stop_root_cause
    error[] causes
    
    # Vehicle Context when fired
    float32 speed
    
    ================================================================================
    MSG: rds_anticollision/error
    # Generic error
    # Value field equals 0 means no error (whatever category is set to)
    uint32 category
    int32 value
    
    ================================================================================
    MSG: rds_anticollision/safety_chain_state
    uint8 STATE_ACTIVE = 0
    uint8 STATE_DISABLED = 1
    uint8 STATE_FAILSOFT = 2
    
    uint8 state
    
    ================================================================================
    MSG: rds_anticollision/ability
    int8 ABILITY_NOT_APPLICABLE = -1
    int8 ABILITY_NOT_AVAILABLE = 0 
    int8 ABILITY_TRUE = 1
    int8 ABILITY_FALSE = 2
    
    int8 ability
    
    ================================================================================
    MSG: rds_anticollision/start_mission_state
    uint8 STATE_NOT_SUPPORTED = 0
    uint8 STATE_NOT_TRIGGERABLE = 1
    uint8 STATE_TRIGGERABLE = 2
    uint8 STATE_TRIGGERED = 3
    
    uint8 state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new msg_vehicle_state_common(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.drive_mode !== undefined) {
      resolved.drive_mode = drive_mode.Resolve(msg.drive_mode)
    }
    else {
      resolved.drive_mode = new drive_mode()
    }

    if (msg.motion !== undefined) {
      resolved.motion = motion.Resolve(msg.motion)
    }
    else {
      resolved.motion = new motion()
    }

    if (msg.emergency_stop_root_causes !== undefined) {
      resolved.emergency_stop_root_causes = emergency_stop_root_cause.Resolve(msg.emergency_stop_root_causes)
    }
    else {
      resolved.emergency_stop_root_causes = new emergency_stop_root_cause()
    }

    if (msg.errors !== undefined) {
      resolved.errors = new Array(msg.errors.length);
      for (let i = 0; i < resolved.errors.length; ++i) {
        resolved.errors[i] = error.Resolve(msg.errors[i]);
      }
    }
    else {
      resolved.errors = []
    }

    if (msg.warnings !== undefined) {
      resolved.warnings = new Array(msg.warnings.length);
      for (let i = 0; i < resolved.warnings.length; ++i) {
        resolved.warnings[i] = error.Resolve(msg.warnings[i]);
      }
    }
    else {
      resolved.warnings = []
    }

    if (msg.safety_chain_state !== undefined) {
      resolved.safety_chain_state = safety_chain_state.Resolve(msg.safety_chain_state)
    }
    else {
      resolved.safety_chain_state = new safety_chain_state()
    }

    if (msg.controller_status !== undefined) {
      resolved.controller_status = ability.Resolve(msg.controller_status)
    }
    else {
      resolved.controller_status = new ability()
    }

    if (msg.engagement_ability !== undefined) {
      resolved.engagement_ability = ability.Resolve(msg.engagement_ability)
    }
    else {
      resolved.engagement_ability = new ability()
    }

    if (msg.start_mission_state !== undefined) {
      resolved.start_mission_state = start_mission_state.Resolve(msg.start_mission_state)
    }
    else {
      resolved.start_mission_state = new start_mission_state()
    }

    return resolved;
    }
};

module.exports = msg_vehicle_state_common;
