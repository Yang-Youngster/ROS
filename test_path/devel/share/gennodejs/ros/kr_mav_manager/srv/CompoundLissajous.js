// Auto-generated. Do not edit!

// (in-package kr_mav_manager.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class CompoundLissajousRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_amp = null;
      this.y_amp = null;
      this.z_amp = null;
      this.yaw_amp = null;
      this.x_num_periods = null;
      this.y_num_periods = null;
      this.z_num_periods = null;
      this.yaw_num_periods = null;
      this.period = null;
      this.num_cycles = null;
      this.ramp_time = null;
    }
    else {
      if (initObj.hasOwnProperty('x_amp')) {
        this.x_amp = initObj.x_amp
      }
      else {
        this.x_amp = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('y_amp')) {
        this.y_amp = initObj.y_amp
      }
      else {
        this.y_amp = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('z_amp')) {
        this.z_amp = initObj.z_amp
      }
      else {
        this.z_amp = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('yaw_amp')) {
        this.yaw_amp = initObj.yaw_amp
      }
      else {
        this.yaw_amp = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('x_num_periods')) {
        this.x_num_periods = initObj.x_num_periods
      }
      else {
        this.x_num_periods = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('y_num_periods')) {
        this.y_num_periods = initObj.y_num_periods
      }
      else {
        this.y_num_periods = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('z_num_periods')) {
        this.z_num_periods = initObj.z_num_periods
      }
      else {
        this.z_num_periods = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('yaw_num_periods')) {
        this.yaw_num_periods = initObj.yaw_num_periods
      }
      else {
        this.yaw_num_periods = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('period')) {
        this.period = initObj.period
      }
      else {
        this.period = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('num_cycles')) {
        this.num_cycles = initObj.num_cycles
      }
      else {
        this.num_cycles = new Array(2).fill(0);
      }
      if (initObj.hasOwnProperty('ramp_time')) {
        this.ramp_time = initObj.ramp_time
      }
      else {
        this.ramp_time = new Array(2).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CompoundLissajousRequest
    // Check that the constant length array field [x_amp] has the right length
    if (obj.x_amp.length !== 2) {
      throw new Error('Unable to serialize array field x_amp - length must be 2')
    }
    // Serialize message field [x_amp]
    bufferOffset = _arraySerializer.float32(obj.x_amp, buffer, bufferOffset, 2);
    // Check that the constant length array field [y_amp] has the right length
    if (obj.y_amp.length !== 2) {
      throw new Error('Unable to serialize array field y_amp - length must be 2')
    }
    // Serialize message field [y_amp]
    bufferOffset = _arraySerializer.float32(obj.y_amp, buffer, bufferOffset, 2);
    // Check that the constant length array field [z_amp] has the right length
    if (obj.z_amp.length !== 2) {
      throw new Error('Unable to serialize array field z_amp - length must be 2')
    }
    // Serialize message field [z_amp]
    bufferOffset = _arraySerializer.float32(obj.z_amp, buffer, bufferOffset, 2);
    // Check that the constant length array field [yaw_amp] has the right length
    if (obj.yaw_amp.length !== 2) {
      throw new Error('Unable to serialize array field yaw_amp - length must be 2')
    }
    // Serialize message field [yaw_amp]
    bufferOffset = _arraySerializer.float32(obj.yaw_amp, buffer, bufferOffset, 2);
    // Check that the constant length array field [x_num_periods] has the right length
    if (obj.x_num_periods.length !== 2) {
      throw new Error('Unable to serialize array field x_num_periods - length must be 2')
    }
    // Serialize message field [x_num_periods]
    bufferOffset = _arraySerializer.float32(obj.x_num_periods, buffer, bufferOffset, 2);
    // Check that the constant length array field [y_num_periods] has the right length
    if (obj.y_num_periods.length !== 2) {
      throw new Error('Unable to serialize array field y_num_periods - length must be 2')
    }
    // Serialize message field [y_num_periods]
    bufferOffset = _arraySerializer.float32(obj.y_num_periods, buffer, bufferOffset, 2);
    // Check that the constant length array field [z_num_periods] has the right length
    if (obj.z_num_periods.length !== 2) {
      throw new Error('Unable to serialize array field z_num_periods - length must be 2')
    }
    // Serialize message field [z_num_periods]
    bufferOffset = _arraySerializer.float32(obj.z_num_periods, buffer, bufferOffset, 2);
    // Check that the constant length array field [yaw_num_periods] has the right length
    if (obj.yaw_num_periods.length !== 2) {
      throw new Error('Unable to serialize array field yaw_num_periods - length must be 2')
    }
    // Serialize message field [yaw_num_periods]
    bufferOffset = _arraySerializer.float32(obj.yaw_num_periods, buffer, bufferOffset, 2);
    // Check that the constant length array field [period] has the right length
    if (obj.period.length !== 2) {
      throw new Error('Unable to serialize array field period - length must be 2')
    }
    // Serialize message field [period]
    bufferOffset = _arraySerializer.float32(obj.period, buffer, bufferOffset, 2);
    // Check that the constant length array field [num_cycles] has the right length
    if (obj.num_cycles.length !== 2) {
      throw new Error('Unable to serialize array field num_cycles - length must be 2')
    }
    // Serialize message field [num_cycles]
    bufferOffset = _arraySerializer.float32(obj.num_cycles, buffer, bufferOffset, 2);
    // Check that the constant length array field [ramp_time] has the right length
    if (obj.ramp_time.length !== 2) {
      throw new Error('Unable to serialize array field ramp_time - length must be 2')
    }
    // Serialize message field [ramp_time]
    bufferOffset = _arraySerializer.float32(obj.ramp_time, buffer, bufferOffset, 2);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CompoundLissajousRequest
    let len;
    let data = new CompoundLissajousRequest(null);
    // Deserialize message field [x_amp]
    data.x_amp = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [y_amp]
    data.y_amp = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [z_amp]
    data.z_amp = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [yaw_amp]
    data.yaw_amp = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [x_num_periods]
    data.x_num_periods = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [y_num_periods]
    data.y_num_periods = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [z_num_periods]
    data.z_num_periods = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [yaw_num_periods]
    data.yaw_num_periods = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [period]
    data.period = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [num_cycles]
    data.num_cycles = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    // Deserialize message field [ramp_time]
    data.ramp_time = _arrayDeserializer.float32(buffer, bufferOffset, 2)
    return data;
  }

  static getMessageSize(object) {
    return 88;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kr_mav_manager/CompoundLissajousRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8fec6f23aca895a5b1636d8d38d20fe5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[2] x_amp
    float32[2] y_amp
    float32[2] z_amp
    float32[2] yaw_amp
    float32[2] x_num_periods
    float32[2] y_num_periods
    float32[2] z_num_periods
    float32[2] yaw_num_periods
    float32[2] period
    float32[2] num_cycles
    float32[2] ramp_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CompoundLissajousRequest(null);
    if (msg.x_amp !== undefined) {
      resolved.x_amp = msg.x_amp;
    }
    else {
      resolved.x_amp = new Array(2).fill(0)
    }

    if (msg.y_amp !== undefined) {
      resolved.y_amp = msg.y_amp;
    }
    else {
      resolved.y_amp = new Array(2).fill(0)
    }

    if (msg.z_amp !== undefined) {
      resolved.z_amp = msg.z_amp;
    }
    else {
      resolved.z_amp = new Array(2).fill(0)
    }

    if (msg.yaw_amp !== undefined) {
      resolved.yaw_amp = msg.yaw_amp;
    }
    else {
      resolved.yaw_amp = new Array(2).fill(0)
    }

    if (msg.x_num_periods !== undefined) {
      resolved.x_num_periods = msg.x_num_periods;
    }
    else {
      resolved.x_num_periods = new Array(2).fill(0)
    }

    if (msg.y_num_periods !== undefined) {
      resolved.y_num_periods = msg.y_num_periods;
    }
    else {
      resolved.y_num_periods = new Array(2).fill(0)
    }

    if (msg.z_num_periods !== undefined) {
      resolved.z_num_periods = msg.z_num_periods;
    }
    else {
      resolved.z_num_periods = new Array(2).fill(0)
    }

    if (msg.yaw_num_periods !== undefined) {
      resolved.yaw_num_periods = msg.yaw_num_periods;
    }
    else {
      resolved.yaw_num_periods = new Array(2).fill(0)
    }

    if (msg.period !== undefined) {
      resolved.period = msg.period;
    }
    else {
      resolved.period = new Array(2).fill(0)
    }

    if (msg.num_cycles !== undefined) {
      resolved.num_cycles = msg.num_cycles;
    }
    else {
      resolved.num_cycles = new Array(2).fill(0)
    }

    if (msg.ramp_time !== undefined) {
      resolved.ramp_time = msg.ramp_time;
    }
    else {
      resolved.ramp_time = new Array(2).fill(0)
    }

    return resolved;
    }
};

class CompoundLissajousResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CompoundLissajousResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CompoundLissajousResponse
    let len;
    let data = new CompoundLissajousResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kr_mav_manager/CompoundLissajousResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CompoundLissajousResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: CompoundLissajousRequest,
  Response: CompoundLissajousResponse,
  md5sum() { return 'd0232855f9641308bb65371eb700f4ef'; },
  datatype() { return 'kr_mav_manager/CompoundLissajous'; }
};
