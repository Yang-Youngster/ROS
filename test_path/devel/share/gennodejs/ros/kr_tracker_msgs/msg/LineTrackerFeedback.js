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

class LineTrackerFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.distance_from_goal = null;
    }
    else {
      if (initObj.hasOwnProperty('distance_from_goal')) {
        this.distance_from_goal = initObj.distance_from_goal
      }
      else {
        this.distance_from_goal = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LineTrackerFeedback
    // Serialize message field [distance_from_goal]
    bufferOffset = _serializer.float64(obj.distance_from_goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LineTrackerFeedback
    let len;
    let data = new LineTrackerFeedback(null);
    // Deserialize message field [distance_from_goal]
    data.distance_from_goal = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kr_tracker_msgs/LineTrackerFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e91cbeef049b19df7ed0de3978957293';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #feedback
    # distance from the goal
    float64 distance_from_goal
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LineTrackerFeedback(null);
    if (msg.distance_from_goal !== undefined) {
      resolved.distance_from_goal = msg.distance_from_goal;
    }
    else {
      resolved.distance_from_goal = 0.0
    }

    return resolved;
    }
};

module.exports = LineTrackerFeedback;
