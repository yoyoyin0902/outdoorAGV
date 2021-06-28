// Auto-generated. Do not edit!

// (in-package move_robot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Battery {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Voltage = null;
      this.Current = null;
      this.RelativeSOC1 = null;
      this.RelativeSOC2 = null;
      this.RelativeSOC3 = null;
      this.RelativeSOC4 = null;
      this.AbsoluteSOC1 = null;
      this.AbsoluteSOC2 = null;
      this.AbsoluteSOC3 = null;
      this.AbsoluteSOC4 = null;
      this.Temp1 = null;
      this.Temp2 = null;
      this.Temp3 = null;
      this.Temp4 = null;
    }
    else {
      if (initObj.hasOwnProperty('Voltage')) {
        this.Voltage = initObj.Voltage
      }
      else {
        this.Voltage = 0.0;
      }
      if (initObj.hasOwnProperty('Current')) {
        this.Current = initObj.Current
      }
      else {
        this.Current = 0.0;
      }
      if (initObj.hasOwnProperty('RelativeSOC1')) {
        this.RelativeSOC1 = initObj.RelativeSOC1
      }
      else {
        this.RelativeSOC1 = 0.0;
      }
      if (initObj.hasOwnProperty('RelativeSOC2')) {
        this.RelativeSOC2 = initObj.RelativeSOC2
      }
      else {
        this.RelativeSOC2 = 0.0;
      }
      if (initObj.hasOwnProperty('RelativeSOC3')) {
        this.RelativeSOC3 = initObj.RelativeSOC3
      }
      else {
        this.RelativeSOC3 = 0.0;
      }
      if (initObj.hasOwnProperty('RelativeSOC4')) {
        this.RelativeSOC4 = initObj.RelativeSOC4
      }
      else {
        this.RelativeSOC4 = 0.0;
      }
      if (initObj.hasOwnProperty('AbsoluteSOC1')) {
        this.AbsoluteSOC1 = initObj.AbsoluteSOC1
      }
      else {
        this.AbsoluteSOC1 = 0.0;
      }
      if (initObj.hasOwnProperty('AbsoluteSOC2')) {
        this.AbsoluteSOC2 = initObj.AbsoluteSOC2
      }
      else {
        this.AbsoluteSOC2 = 0.0;
      }
      if (initObj.hasOwnProperty('AbsoluteSOC3')) {
        this.AbsoluteSOC3 = initObj.AbsoluteSOC3
      }
      else {
        this.AbsoluteSOC3 = 0.0;
      }
      if (initObj.hasOwnProperty('AbsoluteSOC4')) {
        this.AbsoluteSOC4 = initObj.AbsoluteSOC4
      }
      else {
        this.AbsoluteSOC4 = 0.0;
      }
      if (initObj.hasOwnProperty('Temp1')) {
        this.Temp1 = initObj.Temp1
      }
      else {
        this.Temp1 = 0.0;
      }
      if (initObj.hasOwnProperty('Temp2')) {
        this.Temp2 = initObj.Temp2
      }
      else {
        this.Temp2 = 0.0;
      }
      if (initObj.hasOwnProperty('Temp3')) {
        this.Temp3 = initObj.Temp3
      }
      else {
        this.Temp3 = 0.0;
      }
      if (initObj.hasOwnProperty('Temp4')) {
        this.Temp4 = initObj.Temp4
      }
      else {
        this.Temp4 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Battery
    // Serialize message field [Voltage]
    bufferOffset = _serializer.float64(obj.Voltage, buffer, bufferOffset);
    // Serialize message field [Current]
    bufferOffset = _serializer.float64(obj.Current, buffer, bufferOffset);
    // Serialize message field [RelativeSOC1]
    bufferOffset = _serializer.float64(obj.RelativeSOC1, buffer, bufferOffset);
    // Serialize message field [RelativeSOC2]
    bufferOffset = _serializer.float64(obj.RelativeSOC2, buffer, bufferOffset);
    // Serialize message field [RelativeSOC3]
    bufferOffset = _serializer.float64(obj.RelativeSOC3, buffer, bufferOffset);
    // Serialize message field [RelativeSOC4]
    bufferOffset = _serializer.float64(obj.RelativeSOC4, buffer, bufferOffset);
    // Serialize message field [AbsoluteSOC1]
    bufferOffset = _serializer.float64(obj.AbsoluteSOC1, buffer, bufferOffset);
    // Serialize message field [AbsoluteSOC2]
    bufferOffset = _serializer.float64(obj.AbsoluteSOC2, buffer, bufferOffset);
    // Serialize message field [AbsoluteSOC3]
    bufferOffset = _serializer.float64(obj.AbsoluteSOC3, buffer, bufferOffset);
    // Serialize message field [AbsoluteSOC4]
    bufferOffset = _serializer.float64(obj.AbsoluteSOC4, buffer, bufferOffset);
    // Serialize message field [Temp1]
    bufferOffset = _serializer.float64(obj.Temp1, buffer, bufferOffset);
    // Serialize message field [Temp2]
    bufferOffset = _serializer.float64(obj.Temp2, buffer, bufferOffset);
    // Serialize message field [Temp3]
    bufferOffset = _serializer.float64(obj.Temp3, buffer, bufferOffset);
    // Serialize message field [Temp4]
    bufferOffset = _serializer.float64(obj.Temp4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Battery
    let len;
    let data = new Battery(null);
    // Deserialize message field [Voltage]
    data.Voltage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Current]
    data.Current = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [RelativeSOC1]
    data.RelativeSOC1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [RelativeSOC2]
    data.RelativeSOC2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [RelativeSOC3]
    data.RelativeSOC3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [RelativeSOC4]
    data.RelativeSOC4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [AbsoluteSOC1]
    data.AbsoluteSOC1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [AbsoluteSOC2]
    data.AbsoluteSOC2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [AbsoluteSOC3]
    data.AbsoluteSOC3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [AbsoluteSOC4]
    data.AbsoluteSOC4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Temp1]
    data.Temp1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Temp2]
    data.Temp2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Temp3]
    data.Temp3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Temp4]
    data.Temp4 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 112;
  }

  static datatype() {
    // Returns string type for a message object
    return 'move_robot/Battery';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '49990e1b1b63370ee64f7539c711f8c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 Voltage
    float64 Current
    float64 RelativeSOC1
    float64 RelativeSOC2
    float64 RelativeSOC3
    float64 RelativeSOC4
    float64 AbsoluteSOC1
    float64 AbsoluteSOC2
    float64 AbsoluteSOC3
    float64 AbsoluteSOC4
    float64 Temp1
    float64 Temp2
    float64 Temp3
    float64 Temp4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Battery(null);
    if (msg.Voltage !== undefined) {
      resolved.Voltage = msg.Voltage;
    }
    else {
      resolved.Voltage = 0.0
    }

    if (msg.Current !== undefined) {
      resolved.Current = msg.Current;
    }
    else {
      resolved.Current = 0.0
    }

    if (msg.RelativeSOC1 !== undefined) {
      resolved.RelativeSOC1 = msg.RelativeSOC1;
    }
    else {
      resolved.RelativeSOC1 = 0.0
    }

    if (msg.RelativeSOC2 !== undefined) {
      resolved.RelativeSOC2 = msg.RelativeSOC2;
    }
    else {
      resolved.RelativeSOC2 = 0.0
    }

    if (msg.RelativeSOC3 !== undefined) {
      resolved.RelativeSOC3 = msg.RelativeSOC3;
    }
    else {
      resolved.RelativeSOC3 = 0.0
    }

    if (msg.RelativeSOC4 !== undefined) {
      resolved.RelativeSOC4 = msg.RelativeSOC4;
    }
    else {
      resolved.RelativeSOC4 = 0.0
    }

    if (msg.AbsoluteSOC1 !== undefined) {
      resolved.AbsoluteSOC1 = msg.AbsoluteSOC1;
    }
    else {
      resolved.AbsoluteSOC1 = 0.0
    }

    if (msg.AbsoluteSOC2 !== undefined) {
      resolved.AbsoluteSOC2 = msg.AbsoluteSOC2;
    }
    else {
      resolved.AbsoluteSOC2 = 0.0
    }

    if (msg.AbsoluteSOC3 !== undefined) {
      resolved.AbsoluteSOC3 = msg.AbsoluteSOC3;
    }
    else {
      resolved.AbsoluteSOC3 = 0.0
    }

    if (msg.AbsoluteSOC4 !== undefined) {
      resolved.AbsoluteSOC4 = msg.AbsoluteSOC4;
    }
    else {
      resolved.AbsoluteSOC4 = 0.0
    }

    if (msg.Temp1 !== undefined) {
      resolved.Temp1 = msg.Temp1;
    }
    else {
      resolved.Temp1 = 0.0
    }

    if (msg.Temp2 !== undefined) {
      resolved.Temp2 = msg.Temp2;
    }
    else {
      resolved.Temp2 = 0.0
    }

    if (msg.Temp3 !== undefined) {
      resolved.Temp3 = msg.Temp3;
    }
    else {
      resolved.Temp3 = 0.0
    }

    if (msg.Temp4 !== undefined) {
      resolved.Temp4 = msg.Temp4;
    }
    else {
      resolved.Temp4 = 0.0
    }

    return resolved;
    }
};

module.exports = Battery;
