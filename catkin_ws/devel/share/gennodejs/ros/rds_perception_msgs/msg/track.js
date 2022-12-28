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
let extent = require('./extent.js');

//-----------------------------------------------------------

class track {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.state = null;
      this.covariance = null;
      this.label = null;
      this.extent = null;
      this.uptime = null;
      this.misstime = null;
      this.box_center_x = null;
      this.box_center_y = null;
      this.axis_1x = null;
      this.axis_1y = null;
      this.axis_2x = null;
      this.axis_2y = null;
      this.dim1 = null;
      this.dim2 = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = [];
      }
      if (initObj.hasOwnProperty('covariance')) {
        this.covariance = initObj.covariance
      }
      else {
        this.covariance = [];
      }
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = new label();
      }
      if (initObj.hasOwnProperty('extent')) {
        this.extent = initObj.extent
      }
      else {
        this.extent = new extent();
      }
      if (initObj.hasOwnProperty('uptime')) {
        this.uptime = initObj.uptime
      }
      else {
        this.uptime = 0.0;
      }
      if (initObj.hasOwnProperty('misstime')) {
        this.misstime = initObj.misstime
      }
      else {
        this.misstime = 0.0;
      }
      if (initObj.hasOwnProperty('box_center_x')) {
        this.box_center_x = initObj.box_center_x
      }
      else {
        this.box_center_x = 0.0;
      }
      if (initObj.hasOwnProperty('box_center_y')) {
        this.box_center_y = initObj.box_center_y
      }
      else {
        this.box_center_y = 0.0;
      }
      if (initObj.hasOwnProperty('axis_1x')) {
        this.axis_1x = initObj.axis_1x
      }
      else {
        this.axis_1x = 0.0;
      }
      if (initObj.hasOwnProperty('axis_1y')) {
        this.axis_1y = initObj.axis_1y
      }
      else {
        this.axis_1y = 0.0;
      }
      if (initObj.hasOwnProperty('axis_2x')) {
        this.axis_2x = initObj.axis_2x
      }
      else {
        this.axis_2x = 0.0;
      }
      if (initObj.hasOwnProperty('axis_2y')) {
        this.axis_2y = initObj.axis_2y
      }
      else {
        this.axis_2y = 0.0;
      }
      if (initObj.hasOwnProperty('dim1')) {
        this.dim1 = initObj.dim1
      }
      else {
        this.dim1 = 0.0;
      }
      if (initObj.hasOwnProperty('dim2')) {
        this.dim2 = initObj.dim2
      }
      else {
        this.dim2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type track
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _arraySerializer.float32(obj.state, buffer, bufferOffset, null);
    // Serialize message field [covariance]
    bufferOffset = _arraySerializer.float32(obj.covariance, buffer, bufferOffset, null);
    // Serialize message field [label]
    bufferOffset = label.serialize(obj.label, buffer, bufferOffset);
    // Serialize message field [extent]
    bufferOffset = extent.serialize(obj.extent, buffer, bufferOffset);
    // Serialize message field [uptime]
    bufferOffset = _serializer.float64(obj.uptime, buffer, bufferOffset);
    // Serialize message field [misstime]
    bufferOffset = _serializer.float64(obj.misstime, buffer, bufferOffset);
    // Serialize message field [box_center_x]
    bufferOffset = _serializer.float32(obj.box_center_x, buffer, bufferOffset);
    // Serialize message field [box_center_y]
    bufferOffset = _serializer.float32(obj.box_center_y, buffer, bufferOffset);
    // Serialize message field [axis_1x]
    bufferOffset = _serializer.float32(obj.axis_1x, buffer, bufferOffset);
    // Serialize message field [axis_1y]
    bufferOffset = _serializer.float32(obj.axis_1y, buffer, bufferOffset);
    // Serialize message field [axis_2x]
    bufferOffset = _serializer.float32(obj.axis_2x, buffer, bufferOffset);
    // Serialize message field [axis_2y]
    bufferOffset = _serializer.float32(obj.axis_2y, buffer, bufferOffset);
    // Serialize message field [dim1]
    bufferOffset = _serializer.float32(obj.dim1, buffer, bufferOffset);
    // Serialize message field [dim2]
    bufferOffset = _serializer.float32(obj.dim2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type track
    let len;
    let data = new track(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [covariance]
    data.covariance = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [label]
    data.label = label.deserialize(buffer, bufferOffset);
    // Deserialize message field [extent]
    data.extent = extent.deserialize(buffer, bufferOffset);
    // Deserialize message field [uptime]
    data.uptime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [misstime]
    data.misstime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [box_center_x]
    data.box_center_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [box_center_y]
    data.box_center_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [axis_1x]
    data.axis_1x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [axis_1y]
    data.axis_1y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [axis_2x]
    data.axis_2x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [axis_2y]
    data.axis_2y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dim1]
    data.dim1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dim2]
    data.dim2 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.state.length;
    length += 4 * object.covariance.length;
    return length + 62;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_perception_msgs/track';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f8e1e3a8013bff6348f166fe006c2c91';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new track(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = []
    }

    if (msg.covariance !== undefined) {
      resolved.covariance = msg.covariance;
    }
    else {
      resolved.covariance = []
    }

    if (msg.label !== undefined) {
      resolved.label = label.Resolve(msg.label)
    }
    else {
      resolved.label = new label()
    }

    if (msg.extent !== undefined) {
      resolved.extent = extent.Resolve(msg.extent)
    }
    else {
      resolved.extent = new extent()
    }

    if (msg.uptime !== undefined) {
      resolved.uptime = msg.uptime;
    }
    else {
      resolved.uptime = 0.0
    }

    if (msg.misstime !== undefined) {
      resolved.misstime = msg.misstime;
    }
    else {
      resolved.misstime = 0.0
    }

    if (msg.box_center_x !== undefined) {
      resolved.box_center_x = msg.box_center_x;
    }
    else {
      resolved.box_center_x = 0.0
    }

    if (msg.box_center_y !== undefined) {
      resolved.box_center_y = msg.box_center_y;
    }
    else {
      resolved.box_center_y = 0.0
    }

    if (msg.axis_1x !== undefined) {
      resolved.axis_1x = msg.axis_1x;
    }
    else {
      resolved.axis_1x = 0.0
    }

    if (msg.axis_1y !== undefined) {
      resolved.axis_1y = msg.axis_1y;
    }
    else {
      resolved.axis_1y = 0.0
    }

    if (msg.axis_2x !== undefined) {
      resolved.axis_2x = msg.axis_2x;
    }
    else {
      resolved.axis_2x = 0.0
    }

    if (msg.axis_2y !== undefined) {
      resolved.axis_2y = msg.axis_2y;
    }
    else {
      resolved.axis_2y = 0.0
    }

    if (msg.dim1 !== undefined) {
      resolved.dim1 = msg.dim1;
    }
    else {
      resolved.dim1 = 0.0
    }

    if (msg.dim2 !== undefined) {
      resolved.dim2 = msg.dim2;
    }
    else {
      resolved.dim2 = 0.0
    }

    return resolved;
    }
};

module.exports = track;
