// Auto-generated. Do not edit!

// (in-package serial_imu.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Imu_0x91_msg = require('./Imu_0x91_msg.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Imu_0x62_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.gw_tag = null;
      this.gw_id = null;
      this.gw_n = null;
      this.node = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('gw_tag')) {
        this.gw_tag = initObj.gw_tag
      }
      else {
        this.gw_tag = 0;
      }
      if (initObj.hasOwnProperty('gw_id')) {
        this.gw_id = initObj.gw_id
      }
      else {
        this.gw_id = 0;
      }
      if (initObj.hasOwnProperty('gw_n')) {
        this.gw_n = initObj.gw_n
      }
      else {
        this.gw_n = 0;
      }
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Imu_0x62_msg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [gw_tag]
    bufferOffset = _serializer.uint8(obj.gw_tag, buffer, bufferOffset);
    // Serialize message field [gw_id]
    bufferOffset = _serializer.uint8(obj.gw_id, buffer, bufferOffset);
    // Serialize message field [gw_n]
    bufferOffset = _serializer.uint8(obj.gw_n, buffer, bufferOffset);
    // Serialize message field [node]
    // Serialize the length for message field [node]
    bufferOffset = _serializer.uint32(obj.node.length, buffer, bufferOffset);
    obj.node.forEach((val) => {
      bufferOffset = Imu_0x91_msg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Imu_0x62_msg
    let len;
    let data = new Imu_0x62_msg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [gw_tag]
    data.gw_tag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gw_id]
    data.gw_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gw_n]
    data.gw_n = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [node]
    // Deserialize array length for message field [node]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.node = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.node[i] = Imu_0x91_msg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.node.forEach((val) => {
      length += Imu_0x91_msg.getMessageSize(val);
    });
    return length + 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'serial_imu/Imu_0x62_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ade2d5aa1eaff1ee78a6de59cc0d4424';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #62 data_package
    Header header
    uint8 gw_tag
    uint8 gw_id
    uint8 gw_n
    Imu_0x91_msg[] node
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: serial_imu/Imu_0x91_msg
    #90 91 data_package
    Header header
    uint8 tag
    uint8 bitmap
    uint8 id
    uint32 times
    uint32 frame_rate
    float32 acc_x
    float32 acc_y
    float32 acc_z
    float32 gyr_x
    float32 gyr_y
    float32 gyr_z
    float32 mag_x
    float32 mag_y
    float32 mag_z
    float32 eul_r
    float32 eul_p
    float32 eul_y
    float32 quat_w
    float32 quat_x
    float32 quat_y
    float32 quat_z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Imu_0x62_msg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.gw_tag !== undefined) {
      resolved.gw_tag = msg.gw_tag;
    }
    else {
      resolved.gw_tag = 0
    }

    if (msg.gw_id !== undefined) {
      resolved.gw_id = msg.gw_id;
    }
    else {
      resolved.gw_id = 0
    }

    if (msg.gw_n !== undefined) {
      resolved.gw_n = msg.gw_n;
    }
    else {
      resolved.gw_n = 0
    }

    if (msg.node !== undefined) {
      resolved.node = new Array(msg.node.length);
      for (let i = 0; i < resolved.node.length; ++i) {
        resolved.node[i] = Imu_0x91_msg.Resolve(msg.node[i]);
      }
    }
    else {
      resolved.node = []
    }

    return resolved;
    }
};

module.exports = Imu_0x62_msg;
