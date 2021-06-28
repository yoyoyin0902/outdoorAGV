// Auto-generated. Do not edit!

// (in-package AnhungControl.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class setmap_ctr {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.Name = null;
      this.ini_pose_x = null;
      this.ini_pose_y = null;
      this.ini_pose_z = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('Name')) {
        this.Name = initObj.Name
      }
      else {
        this.Name = '';
      }
      if (initObj.hasOwnProperty('ini_pose_x')) {
        this.ini_pose_x = initObj.ini_pose_x
      }
      else {
        this.ini_pose_x = 0.0;
      }
      if (initObj.hasOwnProperty('ini_pose_y')) {
        this.ini_pose_y = initObj.ini_pose_y
      }
      else {
        this.ini_pose_y = 0.0;
      }
      if (initObj.hasOwnProperty('ini_pose_z')) {
        this.ini_pose_z = initObj.ini_pose_z
      }
      else {
        this.ini_pose_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type setmap_ctr
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [Name]
    bufferOffset = _serializer.string(obj.Name, buffer, bufferOffset);
    // Serialize message field [ini_pose_x]
    bufferOffset = _serializer.float32(obj.ini_pose_x, buffer, bufferOffset);
    // Serialize message field [ini_pose_y]
    bufferOffset = _serializer.float32(obj.ini_pose_y, buffer, bufferOffset);
    // Serialize message field [ini_pose_z]
    bufferOffset = _serializer.float32(obj.ini_pose_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type setmap_ctr
    let len;
    let data = new setmap_ctr(null);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Name]
    data.Name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ini_pose_x]
    data.ini_pose_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ini_pose_y]
    data.ini_pose_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ini_pose_z]
    data.ini_pose_z = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.type.length;
    length += object.Name.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'AnhungControl/setmap_ctr';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c23a07c53b1d6aa0bb1c34e1d6baaf2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string type
    string Name
    float32 ini_pose_x
    float32 ini_pose_y
    float32 ini_pose_z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new setmap_ctr(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.Name !== undefined) {
      resolved.Name = msg.Name;
    }
    else {
      resolved.Name = ''
    }

    if (msg.ini_pose_x !== undefined) {
      resolved.ini_pose_x = msg.ini_pose_x;
    }
    else {
      resolved.ini_pose_x = 0.0
    }

    if (msg.ini_pose_y !== undefined) {
      resolved.ini_pose_y = msg.ini_pose_y;
    }
    else {
      resolved.ini_pose_y = 0.0
    }

    if (msg.ini_pose_z !== undefined) {
      resolved.ini_pose_z = msg.ini_pose_z;
    }
    else {
      resolved.ini_pose_z = 0.0
    }

    return resolved;
    }
};

module.exports = setmap_ctr;
