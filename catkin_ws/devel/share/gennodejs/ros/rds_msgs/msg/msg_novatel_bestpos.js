// Auto-generated. Do not edit!

// (in-package rds_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class msg_novatel_bestpos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message_id = null;
      this.port_address = null;
      this.sequence = null;
      this.idle = null;
      this.time_status = null;
      this.gps_week = null;
      this.gps_millisecs = null;
      this.status = null;
      this.solution_status = null;
      this.position_type = null;
      this.latitude = null;
      this.longitude = null;
      this.height = null;
      this.undulation = null;
      this.datum_id = null;
      this.latitude_standard_deviation = null;
      this.longitude_standard_deviation = null;
      this.height_standard_deviation = null;
      this.base_station_id = null;
      this.differential_age = null;
      this.solution_age = null;
      this.number_of_satellites = null;
      this.number_of_satellites_in_solution = null;
      this.num_gps_plus_glonass_l1 = null;
      this.num_gps_plus_glonass_l2 = null;
      this.extended_solution_status = null;
      this.signals_used_mask = null;
      this.crc = null;
    }
    else {
      if (initObj.hasOwnProperty('message_id')) {
        this.message_id = initObj.message_id
      }
      else {
        this.message_id = 0;
      }
      if (initObj.hasOwnProperty('port_address')) {
        this.port_address = initObj.port_address
      }
      else {
        this.port_address = 0;
      }
      if (initObj.hasOwnProperty('sequence')) {
        this.sequence = initObj.sequence
      }
      else {
        this.sequence = 0;
      }
      if (initObj.hasOwnProperty('idle')) {
        this.idle = initObj.idle
      }
      else {
        this.idle = 0;
      }
      if (initObj.hasOwnProperty('time_status')) {
        this.time_status = initObj.time_status
      }
      else {
        this.time_status = 0;
      }
      if (initObj.hasOwnProperty('gps_week')) {
        this.gps_week = initObj.gps_week
      }
      else {
        this.gps_week = 0;
      }
      if (initObj.hasOwnProperty('gps_millisecs')) {
        this.gps_millisecs = initObj.gps_millisecs
      }
      else {
        this.gps_millisecs = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('solution_status')) {
        this.solution_status = initObj.solution_status
      }
      else {
        this.solution_status = 0;
      }
      if (initObj.hasOwnProperty('position_type')) {
        this.position_type = initObj.position_type
      }
      else {
        this.position_type = 0;
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('undulation')) {
        this.undulation = initObj.undulation
      }
      else {
        this.undulation = 0.0;
      }
      if (initObj.hasOwnProperty('datum_id')) {
        this.datum_id = initObj.datum_id
      }
      else {
        this.datum_id = 0;
      }
      if (initObj.hasOwnProperty('latitude_standard_deviation')) {
        this.latitude_standard_deviation = initObj.latitude_standard_deviation
      }
      else {
        this.latitude_standard_deviation = 0.0;
      }
      if (initObj.hasOwnProperty('longitude_standard_deviation')) {
        this.longitude_standard_deviation = initObj.longitude_standard_deviation
      }
      else {
        this.longitude_standard_deviation = 0.0;
      }
      if (initObj.hasOwnProperty('height_standard_deviation')) {
        this.height_standard_deviation = initObj.height_standard_deviation
      }
      else {
        this.height_standard_deviation = 0.0;
      }
      if (initObj.hasOwnProperty('base_station_id')) {
        this.base_station_id = initObj.base_station_id
      }
      else {
        this.base_station_id = [];
      }
      if (initObj.hasOwnProperty('differential_age')) {
        this.differential_age = initObj.differential_age
      }
      else {
        this.differential_age = 0.0;
      }
      if (initObj.hasOwnProperty('solution_age')) {
        this.solution_age = initObj.solution_age
      }
      else {
        this.solution_age = 0.0;
      }
      if (initObj.hasOwnProperty('number_of_satellites')) {
        this.number_of_satellites = initObj.number_of_satellites
      }
      else {
        this.number_of_satellites = 0;
      }
      if (initObj.hasOwnProperty('number_of_satellites_in_solution')) {
        this.number_of_satellites_in_solution = initObj.number_of_satellites_in_solution
      }
      else {
        this.number_of_satellites_in_solution = 0;
      }
      if (initObj.hasOwnProperty('num_gps_plus_glonass_l1')) {
        this.num_gps_plus_glonass_l1 = initObj.num_gps_plus_glonass_l1
      }
      else {
        this.num_gps_plus_glonass_l1 = 0;
      }
      if (initObj.hasOwnProperty('num_gps_plus_glonass_l2')) {
        this.num_gps_plus_glonass_l2 = initObj.num_gps_plus_glonass_l2
      }
      else {
        this.num_gps_plus_glonass_l2 = 0;
      }
      if (initObj.hasOwnProperty('extended_solution_status')) {
        this.extended_solution_status = initObj.extended_solution_status
      }
      else {
        this.extended_solution_status = 0;
      }
      if (initObj.hasOwnProperty('signals_used_mask')) {
        this.signals_used_mask = initObj.signals_used_mask
      }
      else {
        this.signals_used_mask = 0;
      }
      if (initObj.hasOwnProperty('crc')) {
        this.crc = initObj.crc
      }
      else {
        this.crc = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msg_novatel_bestpos
    // Serialize message field [message_id]
    bufferOffset = _serializer.uint16(obj.message_id, buffer, bufferOffset);
    // Serialize message field [port_address]
    bufferOffset = _serializer.uint8(obj.port_address, buffer, bufferOffset);
    // Serialize message field [sequence]
    bufferOffset = _serializer.uint16(obj.sequence, buffer, bufferOffset);
    // Serialize message field [idle]
    bufferOffset = _serializer.uint8(obj.idle, buffer, bufferOffset);
    // Serialize message field [time_status]
    bufferOffset = _serializer.uint8(obj.time_status, buffer, bufferOffset);
    // Serialize message field [gps_week]
    bufferOffset = _serializer.uint16(obj.gps_week, buffer, bufferOffset);
    // Serialize message field [gps_millisecs]
    bufferOffset = _serializer.uint32(obj.gps_millisecs, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint32(obj.status, buffer, bufferOffset);
    // Serialize message field [solution_status]
    bufferOffset = _serializer.int32(obj.solution_status, buffer, bufferOffset);
    // Serialize message field [position_type]
    bufferOffset = _serializer.int32(obj.position_type, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [undulation]
    bufferOffset = _serializer.float32(obj.undulation, buffer, bufferOffset);
    // Serialize message field [datum_id]
    bufferOffset = _serializer.int32(obj.datum_id, buffer, bufferOffset);
    // Serialize message field [latitude_standard_deviation]
    bufferOffset = _serializer.float32(obj.latitude_standard_deviation, buffer, bufferOffset);
    // Serialize message field [longitude_standard_deviation]
    bufferOffset = _serializer.float32(obj.longitude_standard_deviation, buffer, bufferOffset);
    // Serialize message field [height_standard_deviation]
    bufferOffset = _serializer.float32(obj.height_standard_deviation, buffer, bufferOffset);
    // Serialize message field [base_station_id]
    bufferOffset = _arraySerializer.int8(obj.base_station_id, buffer, bufferOffset, null);
    // Serialize message field [differential_age]
    bufferOffset = _serializer.float32(obj.differential_age, buffer, bufferOffset);
    // Serialize message field [solution_age]
    bufferOffset = _serializer.float32(obj.solution_age, buffer, bufferOffset);
    // Serialize message field [number_of_satellites]
    bufferOffset = _serializer.uint8(obj.number_of_satellites, buffer, bufferOffset);
    // Serialize message field [number_of_satellites_in_solution]
    bufferOffset = _serializer.uint8(obj.number_of_satellites_in_solution, buffer, bufferOffset);
    // Serialize message field [num_gps_plus_glonass_l1]
    bufferOffset = _serializer.uint8(obj.num_gps_plus_glonass_l1, buffer, bufferOffset);
    // Serialize message field [num_gps_plus_glonass_l2]
    bufferOffset = _serializer.uint8(obj.num_gps_plus_glonass_l2, buffer, bufferOffset);
    // Serialize message field [extended_solution_status]
    bufferOffset = _serializer.uint8(obj.extended_solution_status, buffer, bufferOffset);
    // Serialize message field [signals_used_mask]
    bufferOffset = _serializer.uint8(obj.signals_used_mask, buffer, bufferOffset);
    // Serialize message field [crc]
    bufferOffset = _arraySerializer.uint8(obj.crc, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msg_novatel_bestpos
    let len;
    let data = new msg_novatel_bestpos(null);
    // Deserialize message field [message_id]
    data.message_id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [port_address]
    data.port_address = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sequence]
    data.sequence = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [idle]
    data.idle = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [time_status]
    data.time_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gps_week]
    data.gps_week = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [gps_millisecs]
    data.gps_millisecs = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [solution_status]
    data.solution_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position_type]
    data.position_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [undulation]
    data.undulation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [datum_id]
    data.datum_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [latitude_standard_deviation]
    data.latitude_standard_deviation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [longitude_standard_deviation]
    data.longitude_standard_deviation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [height_standard_deviation]
    data.height_standard_deviation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [base_station_id]
    data.base_station_id = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [differential_age]
    data.differential_age = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [solution_age]
    data.solution_age = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [number_of_satellites]
    data.number_of_satellites = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [number_of_satellites_in_solution]
    data.number_of_satellites_in_solution = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [num_gps_plus_glonass_l1]
    data.num_gps_plus_glonass_l1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [num_gps_plus_glonass_l2]
    data.num_gps_plus_glonass_l2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [extended_solution_status]
    data.extended_solution_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [signals_used_mask]
    data.signals_used_mask = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [crc]
    data.crc = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.base_station_id.length;
    length += object.crc.length;
    return length + 91;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rds_msgs/msg_novatel_bestpos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dbab3b4899e83ce77d1e6c53cf057239';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 message_id
    uint8 port_address
    uint16 sequence
    uint8 idle
    uint8 time_status
    uint16 gps_week
    uint32 gps_millisecs
    uint32 status
    int32 solution_status
    int32 position_type
    float64 latitude
    float64 longitude
    float64 height
    float32 undulation
    int32 datum_id
    float32 latitude_standard_deviation
    float32 longitude_standard_deviation
    float32 height_standard_deviation
    int8[] base_station_id
    float32 differential_age
    float32 solution_age
    uint8 number_of_satellites
    uint8 number_of_satellites_in_solution
    uint8 num_gps_plus_glonass_l1
    uint8 num_gps_plus_glonass_l2
    uint8 extended_solution_status
    uint8 signals_used_mask
    uint8[] crc
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new msg_novatel_bestpos(null);
    if (msg.message_id !== undefined) {
      resolved.message_id = msg.message_id;
    }
    else {
      resolved.message_id = 0
    }

    if (msg.port_address !== undefined) {
      resolved.port_address = msg.port_address;
    }
    else {
      resolved.port_address = 0
    }

    if (msg.sequence !== undefined) {
      resolved.sequence = msg.sequence;
    }
    else {
      resolved.sequence = 0
    }

    if (msg.idle !== undefined) {
      resolved.idle = msg.idle;
    }
    else {
      resolved.idle = 0
    }

    if (msg.time_status !== undefined) {
      resolved.time_status = msg.time_status;
    }
    else {
      resolved.time_status = 0
    }

    if (msg.gps_week !== undefined) {
      resolved.gps_week = msg.gps_week;
    }
    else {
      resolved.gps_week = 0
    }

    if (msg.gps_millisecs !== undefined) {
      resolved.gps_millisecs = msg.gps_millisecs;
    }
    else {
      resolved.gps_millisecs = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.solution_status !== undefined) {
      resolved.solution_status = msg.solution_status;
    }
    else {
      resolved.solution_status = 0
    }

    if (msg.position_type !== undefined) {
      resolved.position_type = msg.position_type;
    }
    else {
      resolved.position_type = 0
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.undulation !== undefined) {
      resolved.undulation = msg.undulation;
    }
    else {
      resolved.undulation = 0.0
    }

    if (msg.datum_id !== undefined) {
      resolved.datum_id = msg.datum_id;
    }
    else {
      resolved.datum_id = 0
    }

    if (msg.latitude_standard_deviation !== undefined) {
      resolved.latitude_standard_deviation = msg.latitude_standard_deviation;
    }
    else {
      resolved.latitude_standard_deviation = 0.0
    }

    if (msg.longitude_standard_deviation !== undefined) {
      resolved.longitude_standard_deviation = msg.longitude_standard_deviation;
    }
    else {
      resolved.longitude_standard_deviation = 0.0
    }

    if (msg.height_standard_deviation !== undefined) {
      resolved.height_standard_deviation = msg.height_standard_deviation;
    }
    else {
      resolved.height_standard_deviation = 0.0
    }

    if (msg.base_station_id !== undefined) {
      resolved.base_station_id = msg.base_station_id;
    }
    else {
      resolved.base_station_id = []
    }

    if (msg.differential_age !== undefined) {
      resolved.differential_age = msg.differential_age;
    }
    else {
      resolved.differential_age = 0.0
    }

    if (msg.solution_age !== undefined) {
      resolved.solution_age = msg.solution_age;
    }
    else {
      resolved.solution_age = 0.0
    }

    if (msg.number_of_satellites !== undefined) {
      resolved.number_of_satellites = msg.number_of_satellites;
    }
    else {
      resolved.number_of_satellites = 0
    }

    if (msg.number_of_satellites_in_solution !== undefined) {
      resolved.number_of_satellites_in_solution = msg.number_of_satellites_in_solution;
    }
    else {
      resolved.number_of_satellites_in_solution = 0
    }

    if (msg.num_gps_plus_glonass_l1 !== undefined) {
      resolved.num_gps_plus_glonass_l1 = msg.num_gps_plus_glonass_l1;
    }
    else {
      resolved.num_gps_plus_glonass_l1 = 0
    }

    if (msg.num_gps_plus_glonass_l2 !== undefined) {
      resolved.num_gps_plus_glonass_l2 = msg.num_gps_plus_glonass_l2;
    }
    else {
      resolved.num_gps_plus_glonass_l2 = 0
    }

    if (msg.extended_solution_status !== undefined) {
      resolved.extended_solution_status = msg.extended_solution_status;
    }
    else {
      resolved.extended_solution_status = 0
    }

    if (msg.signals_used_mask !== undefined) {
      resolved.signals_used_mask = msg.signals_used_mask;
    }
    else {
      resolved.signals_used_mask = 0
    }

    if (msg.crc !== undefined) {
      resolved.crc = msg.crc;
    }
    else {
      resolved.crc = []
    }

    return resolved;
    }
};

module.exports = msg_novatel_bestpos;
