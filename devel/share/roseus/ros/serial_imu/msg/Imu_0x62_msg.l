;; Auto-generated. Do not edit!


(when (boundp 'serial_imu::Imu_0x62_msg)
  (if (not (find-package "SERIAL_IMU"))
    (make-package "SERIAL_IMU"))
  (shadow 'Imu_0x62_msg (find-package "SERIAL_IMU")))
(unless (find-package "SERIAL_IMU::IMU_0X62_MSG")
  (make-package "SERIAL_IMU::IMU_0X62_MSG"))

(in-package "ROS")
;;//! \htmlinclude Imu_0x62_msg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass serial_imu::Imu_0x62_msg
  :super ros::object
  :slots (_header _gw_tag _gw_id _gw_n _node ))

(defmethod serial_imu::Imu_0x62_msg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gw_tag __gw_tag) 0)
    ((:gw_id __gw_id) 0)
    ((:gw_n __gw_n) 0)
    ((:node __node) (let (r) (dotimes (i 0) (push (instance serial_imu::Imu_0x91_msg :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _gw_tag (round __gw_tag))
   (setq _gw_id (round __gw_id))
   (setq _gw_n (round __gw_n))
   (setq _node __node)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gw_tag
   (&optional __gw_tag)
   (if __gw_tag (setq _gw_tag __gw_tag)) _gw_tag)
  (:gw_id
   (&optional __gw_id)
   (if __gw_id (setq _gw_id __gw_id)) _gw_id)
  (:gw_n
   (&optional __gw_n)
   (if __gw_n (setq _gw_n __gw_n)) _gw_n)
  (:node
   (&rest __node)
   (if (keywordp (car __node))
       (send* _node __node)
     (progn
       (if __node (setq _node (car __node)))
       _node)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _gw_tag
    1
    ;; uint8 _gw_id
    1
    ;; uint8 _gw_n
    1
    ;; serial_imu/Imu_0x91_msg[] _node
    (apply #'+ (send-all _node :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _gw_tag
       (write-byte _gw_tag s)
     ;; uint8 _gw_id
       (write-byte _gw_id s)
     ;; uint8 _gw_n
       (write-byte _gw_n s)
     ;; serial_imu/Imu_0x91_msg[] _node
     (write-long (length _node) s)
     (dolist (elem _node)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _gw_tag
     (setq _gw_tag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gw_id
     (setq _gw_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gw_n
     (setq _gw_n (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; serial_imu/Imu_0x91_msg[] _node
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node (let (r) (dotimes (i n) (push (instance serial_imu::Imu_0x91_msg :init) r)) r))
     (dolist (elem- _node)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get serial_imu::Imu_0x62_msg :md5sum-) "ade2d5aa1eaff1ee78a6de59cc0d4424")
(setf (get serial_imu::Imu_0x62_msg :datatype-) "serial_imu/Imu_0x62_msg")
(setf (get serial_imu::Imu_0x62_msg :definition-)
      "#62 data_package
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

")



(provide :serial_imu/Imu_0x62_msg "ade2d5aa1eaff1ee78a6de59cc0d4424")


