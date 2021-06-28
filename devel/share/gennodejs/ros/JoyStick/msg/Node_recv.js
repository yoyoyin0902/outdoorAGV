// Auto-generated. Do not edit!

// (in-package JoyStick.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Node_recv {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.check = null;
      this.value = null;
      this.kin = null;
      this.id = null;
      this.type = null;
      this.time = null;
      this.btn_finish = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.line = null;
      this.radius = null;
    }
    else {
      if (initObj.hasOwnProperty('check')) {
        this.check = initObj.check
      }
      else {
        this.check = 0;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
      }
      if (initObj.hasOwnProperty('kin')) {
        this.kin = initObj.kin
      }
      else {
        this.kin = '';
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0;
      }
      if (initObj.hasOwnProperty('btn_finish')) {
        this.btn_finish = initObj.btn_finish
      }
      else {
        this.btn_finish = false;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('line')) {
        this.line = initObj.line
      }
      else {
        this.line = 0;
      }
      if (initObj.hasOwnProperty('radius')) {
        this.radius = initObj.radius
      }
      else {
        this.radius = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Node_recv
    // Serialize message field [check]
    bufferOffset = _serializer.int8(obj.check, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.int8(obj.value, buffer, bufferOffset);
    // Serialize message field [kin]
    bufferOffset = _serializer.string(obj.kin, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int16(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int16(obj.type, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.int32(obj.time, buffer, bufferOffset);
    // Serialize message field [btn_finish]
    bufferOffset = _serializer.bool(obj.btn_finish, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float32(obj.z, buffer, bufferOffset);
    // Serialize message field [line]
    bufferOffset = _serializer.int8(obj.line, buffer, bufferOffset);
    // Serialize message field [radius]
    bufferOffset = _serializer.float32(obj.radius, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Node_recv
    let len;
    let data = new Node_recv(null);
    // Deserialize message field [check]
    data.check = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [kin]
    data.kin = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [btn_finish]
    data.btn_finish = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [line]
    data.line = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [radius]
    data.radius = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.kin.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'JoyStick/Node_recv';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea0b94b98c9f92d87ddfce4a90987d71';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 check
    int8 value
    string kin
    int16 id
    int16 type
    int32 time
    bool btn_finish
    float32 x
    float32 y
    float32 z
    int8 line 
    float32 radius
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Node_recv(null);
    if (msg.check !== undefined) {
      resolved.check = msg.check;
    }
    else {
      resolved.check = 0
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
    }

    if (msg.kin !== undefined) {
      resolved.kin = msg.kin;
    }
    else {
      resolved.kin = ''
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0
    }

    if (msg.btn_finish !== undefined) {
      resolved.btn_finish = msg.btn_finish;
    }
    else {
      resolved.btn_finish = false
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.line !== undefined) {
      resolved.line = msg.line;
    }
    else {
      resolved.line = 0
    }

    if (msg.radius !== undefined) {
      resolved.radius = msg.radius;
    }
    else {
      resolved.radius = 0.0
    }

    return resolved;
    }
};

module.exports = Node_recv;
