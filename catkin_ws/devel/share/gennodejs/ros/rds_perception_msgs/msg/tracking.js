// Auto-generated. Do not edit!

// (in-package rds_perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let track = require('./track.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class tracking {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tracks = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tracks')) {
        this.tracks = initObj.tracks
      }
      else {
        this.tracks = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type tracking
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tracks]
    // Serialize the length for message field [tracks]
    bufferOffset = _serializer.uint32(obj.tracks.length, buffer, bufferOffset);
    obj.tracks.forEach((val) => {
      bufferOffset = track.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type tracking
    let len;
    let data = new tracking(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tracks]
    // Deserialize array length for message field [tracks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tracks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tracks[i] = track.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.tracks.forEach((val) => {
      length += track.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_perception_msgs/tracking';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a03ed08238f2e628af885c6ceb7c7f9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    track[] tracks
    
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
    MSG: rds_perception_msgs/track
    uint32 id            # unique identifier of the track
    float32[] state      # state
    float32[] covariance # covariance
    label label            # type of the track
    extent extent        # extent model for the track shape representation
    float64 uptime
    float64 misstime
    float32 box_center_x # box center
    float32 box_center_y # box center
    float32 axis_1x      # main axis of the box
    float32 axis_1y      # main axis of the box
    float32 axis_2x      # secondary axis of the box
    float32 axis_2y       # secondary axis of the box
    float32 dim1         # dimension of box along main axis or radius of the circle
    float32 dim2         # dimension of box along secondary axis (or radius of the circle)
    
    ================================================================================
    MSG: rds_perception_msgs/label
    # Tracking object type
    uint8 LABEL_INVALID = 0
    uint8 LABEL_UNKNOWN = 1
    uint8 LABEL_CAR = 2
    uint8 LABEL_PEDESTRIAN = 3
    uint8 LABEL_BIKE = 4
    
    uint8 label
    
    ================================================================================
    MSG: rds_perception_msgs/extent
    # Tracking extent type
    uint8 EXTENT_ELLIPSE = 0
    uint8 EXTENT_OBB = 1
    
    uint8 extent
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new tracking(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tracks !== undefined) {
      resolved.tracks = new Array(msg.tracks.length);
      for (let i = 0; i < resolved.tracks.length; ++i) {
        resolved.tracks[i] = track.Resolve(msg.tracks[i]);
      }
    }
    else {
      resolved.tracks = []
    }

    return resolved;
    }
};

module.exports = tracking;
