// Auto-generated. Do not edit!

// (in-package demo_comm_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class Server_01Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request_01 = null;
      this.request_02 = null;
    }
    else {
      if (initObj.hasOwnProperty('request_01')) {
        this.request_01 = initObj.request_01
      }
      else {
        this.request_01 = 0;
      }
      if (initObj.hasOwnProperty('request_02')) {
        this.request_02 = initObj.request_02
      }
      else {
        this.request_02 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Server_01Request
    // Serialize message field [request_01]
    bufferOffset = _serializer.int32(obj.request_01, buffer, bufferOffset);
    // Serialize message field [request_02]
    bufferOffset = _serializer.int32(obj.request_02, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Server_01Request
    let len;
    let data = new Server_01Request(null);
    // Deserialize message field [request_01]
    data.request_01 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [request_02]
    data.request_02 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'demo_comm_pkg/Server_01Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dfbb3b61f98fac64645c1af0e772e8dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #####自定义服务的格式
    #
    # ----------
    # 客户端请求发送的数据
    # ---  
    # 服务器响应发送的数据
    #
    ###################
    int32 request_01
    int32 request_02
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Server_01Request(null);
    if (msg.request_01 !== undefined) {
      resolved.request_01 = msg.request_01;
    }
    else {
      resolved.request_01 = 0
    }

    if (msg.request_02 !== undefined) {
      resolved.request_02 = msg.request_02;
    }
    else {
      resolved.request_02 = 0
    }

    return resolved;
    }
};

class Server_01Response {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.response_01 = null;
    }
    else {
      if (initObj.hasOwnProperty('response_01')) {
        this.response_01 = initObj.response_01
      }
      else {
        this.response_01 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Server_01Response
    // Serialize message field [response_01]
    bufferOffset = _serializer.int32(obj.response_01, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Server_01Response
    let len;
    let data = new Server_01Response(null);
    // Deserialize message field [response_01]
    data.response_01 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'demo_comm_pkg/Server_01Response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7395311b7148d413a144ccaf24313d51';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #自定义服务器响应传输的数据
    int32 response_01
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Server_01Response(null);
    if (msg.response_01 !== undefined) {
      resolved.response_01 = msg.response_01;
    }
    else {
      resolved.response_01 = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: Server_01Request,
  Response: Server_01Response,
  md5sum() { return '097f053be1ce46a72625da291a31fe63'; },
  datatype() { return 'demo_comm_pkg/Server_01'; }
};
