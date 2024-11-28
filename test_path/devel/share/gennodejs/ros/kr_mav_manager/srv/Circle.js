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

class CircleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Ax = null;
      this.Ay = null;
      this.T = null;
      this.duration = null;
    }
    else {
      if (initObj.hasOwnProperty('Ax')) {
        this.Ax = initObj.Ax
      }
      else {
        this.Ax = 0.0;
      }
      if (initObj.hasOwnProperty('Ay')) {
        this.Ay = initObj.Ay
      }
      else {
        this.Ay = 0.0;
      }
      if (initObj.hasOwnProperty('T')) {
        this.T = initObj.T
      }
      else {
        this.T = 0.0;
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CircleRequest
    // Serialize message field [Ax]
    bufferOffset = _serializer.float32(obj.Ax, buffer, bufferOffset);
    // Serialize message field [Ay]
    bufferOffset = _serializer.float32(obj.Ay, buffer, bufferOffset);
    // Serialize message field [T]
    bufferOffset = _serializer.float32(obj.T, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.float32(obj.duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CircleRequest
    let len;
    let data = new CircleRequest(null);
    // Deserialize message field [Ax]
    data.Ax = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Ay]
    data.Ay = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [T]
    data.T = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'kr_mav_manager/CircleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fde79205684841f4a0f9cd37e5453e0d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 Ax
    float32 Ay
    float32 T
    float32 duration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CircleRequest(null);
    if (msg.Ax !== undefined) {
      resolved.Ax = msg.Ax;
    }
    else {
      resolved.Ax = 0.0
    }

    if (msg.Ay !== undefined) {
      resolved.Ay = msg.Ay;
    }
    else {
      resolved.Ay = 0.0
    }

    if (msg.T !== undefined) {
      resolved.T = msg.T;
    }
    else {
      resolved.T = 0.0
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0.0
    }

    return resolved;
    }
};

class CircleResponse {
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
    // Serializes a message object of type CircleResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CircleResponse
    let len;
    let data = new CircleResponse(null);
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
    return 'kr_mav_manager/CircleResponse';
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
    const resolved = new CircleResponse(null);
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
  Request: CircleRequest,
  Response: CircleResponse,
  md5sum() { return '93ae81220b03651225998c84f626ff19'; },
  datatype() { return 'kr_mav_manager/Circle'; }
};
