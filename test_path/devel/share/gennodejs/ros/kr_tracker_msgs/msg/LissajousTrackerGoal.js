// Auto-generated. Do not edit!

// (in-package kr_tracker_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LissajousTrackerGoal {
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
        this.x_amp = 0.0;
      }
      if (initObj.hasOwnProperty('y_amp')) {
        this.y_amp = initObj.y_amp
      }
      else {
        this.y_amp = 0.0;
      }
      if (initObj.hasOwnProperty('z_amp')) {
        this.z_amp = initObj.z_amp
      }
      else {
        this.z_amp = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_amp')) {
        this.yaw_amp = initObj.yaw_amp
      }
      else {
        this.yaw_amp = 0.0;
      }
      if (initObj.hasOwnProperty('x_num_periods')) {
        this.x_num_periods = initObj.x_num_periods
      }
      else {
        this.x_num_periods = 0.0;
      }
      if (initObj.hasOwnProperty('y_num_periods')) {
        this.y_num_periods = initObj.y_num_periods
      }
      else {
        this.y_num_periods = 0.0;
      }
      if (initObj.hasOwnProperty('z_num_periods')) {
        this.z_num_periods = initObj.z_num_periods
      }
      else {
        this.z_num_periods = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_num_periods')) {
        this.yaw_num_periods = initObj.yaw_num_periods
      }
      else {
        this.yaw_num_periods = 0.0;
      }
      if (initObj.hasOwnProperty('period')) {
        this.period = initObj.period
      }
      else {
        this.period = 0.0;
      }
      if (initObj.hasOwnProperty('num_cycles')) {
        this.num_cycles = initObj.num_cycles
      }
      else {
        this.num_cycles = 0.0;
      }
      if (initObj.hasOwnProperty('ramp_time')) {
        this.ramp_time = initObj.ramp_time
      }
      else {
        this.ramp_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LissajousTrackerGoal
    // Serialize message field [x_amp]
    bufferOffset = _serializer.float64(obj.x_amp, buffer, bufferOffset);
    // Serialize message field [y_amp]
    bufferOffset = _serializer.float64(obj.y_amp, buffer, bufferOffset);
    // Serialize message field [z_amp]
    bufferOffset = _serializer.float64(obj.z_amp, buffer, bufferOffset);
    // Serialize message field [yaw_amp]
    bufferOffset = _serializer.float64(obj.yaw_amp, buffer, bufferOffset);
    // Serialize message field [x_num_periods]
    bufferOffset = _serializer.float64(obj.x_num_periods, buffer, bufferOffset);
    // Serialize message field [y_num_periods]
    bufferOffset = _serializer.float64(obj.y_num_periods, buffer, bufferOffset);
    // Serialize message field [z_num_periods]
    bufferOffset = _serializer.float64(obj.z_num_periods, buffer, bufferOffset);
    // Serialize message field [yaw_num_periods]
    bufferOffset = _serializer.float64(obj.yaw_num_periods, buffer, bufferOffset);
    // Serialize message field [period]
    bufferOffset = _serializer.float64(obj.period, buffer, bufferOffset);
    // Serialize message field [num_cycles]
    bufferOffset = _serializer.float64(obj.num_cycles, buffer, bufferOffset);
    // Serialize message field [ramp_time]
    bufferOffset = _serializer.float64(obj.ramp_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LissajousTrackerGoal
    let len;
    let data = new LissajousTrackerGoal(null);
    // Deserialize message field [x_amp]
    data.x_amp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_amp]
    data.y_amp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_amp]
    data.z_amp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_amp]
    data.yaw_amp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_num_periods]
    data.x_num_periods = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_num_periods]
    data.y_num_periods = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_num_periods]
    data.z_num_periods = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_num_periods]
    data.yaw_num_periods = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [period]
    data.period = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [num_cycles]
    data.num_cycles = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ramp_time]
    data.ramp_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 88;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kr_tracker_msgs/LissajousTrackerGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '930974c2d188c41daaa75abb01f40727';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #goal definition
    float64 x_amp
    float64 y_amp
    float64 z_amp
    float64 yaw_amp
    float64 x_num_periods
    float64 y_num_periods
    float64 z_num_periods
    float64 yaw_num_periods
    float64 period
    float64 num_cycles
    float64 ramp_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LissajousTrackerGoal(null);
    if (msg.x_amp !== undefined) {
      resolved.x_amp = msg.x_amp;
    }
    else {
      resolved.x_amp = 0.0
    }

    if (msg.y_amp !== undefined) {
      resolved.y_amp = msg.y_amp;
    }
    else {
      resolved.y_amp = 0.0
    }

    if (msg.z_amp !== undefined) {
      resolved.z_amp = msg.z_amp;
    }
    else {
      resolved.z_amp = 0.0
    }

    if (msg.yaw_amp !== undefined) {
      resolved.yaw_amp = msg.yaw_amp;
    }
    else {
      resolved.yaw_amp = 0.0
    }

    if (msg.x_num_periods !== undefined) {
      resolved.x_num_periods = msg.x_num_periods;
    }
    else {
      resolved.x_num_periods = 0.0
    }

    if (msg.y_num_periods !== undefined) {
      resolved.y_num_periods = msg.y_num_periods;
    }
    else {
      resolved.y_num_periods = 0.0
    }

    if (msg.z_num_periods !== undefined) {
      resolved.z_num_periods = msg.z_num_periods;
    }
    else {
      resolved.z_num_periods = 0.0
    }

    if (msg.yaw_num_periods !== undefined) {
      resolved.yaw_num_periods = msg.yaw_num_periods;
    }
    else {
      resolved.yaw_num_periods = 0.0
    }

    if (msg.period !== undefined) {
      resolved.period = msg.period;
    }
    else {
      resolved.period = 0.0
    }

    if (msg.num_cycles !== undefined) {
      resolved.num_cycles = msg.num_cycles;
    }
    else {
      resolved.num_cycles = 0.0
    }

    if (msg.ramp_time !== undefined) {
      resolved.ramp_time = msg.ramp_time;
    }
    else {
      resolved.ramp_time = 0.0
    }

    return resolved;
    }
};

module.exports = LissajousTrackerGoal;
