; Auto-generated. Do not edit!


(cl:in-package AnhungControl-msg)


;//! \htmlinclude setmap_ctr.msg.html

(cl:defclass <setmap_ctr> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (Name
    :reader Name
    :initarg :Name
    :type cl:string
    :initform "")
   (ini_pose_x
    :reader ini_pose_x
    :initarg :ini_pose_x
    :type cl:float
    :initform 0.0)
   (ini_pose_y
    :reader ini_pose_y
    :initarg :ini_pose_y
    :type cl:float
    :initform 0.0)
   (ini_pose_z
    :reader ini_pose_z
    :initarg :ini_pose_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass setmap_ctr (<setmap_ctr>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <setmap_ctr>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'setmap_ctr)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name AnhungControl-msg:<setmap_ctr> is deprecated: use AnhungControl-msg:setmap_ctr instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <setmap_ctr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AnhungControl-msg:type-val is deprecated.  Use AnhungControl-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'Name-val :lambda-list '(m))
(cl:defmethod Name-val ((m <setmap_ctr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AnhungControl-msg:Name-val is deprecated.  Use AnhungControl-msg:Name instead.")
  (Name m))

(cl:ensure-generic-function 'ini_pose_x-val :lambda-list '(m))
(cl:defmethod ini_pose_x-val ((m <setmap_ctr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AnhungControl-msg:ini_pose_x-val is deprecated.  Use AnhungControl-msg:ini_pose_x instead.")
  (ini_pose_x m))

(cl:ensure-generic-function 'ini_pose_y-val :lambda-list '(m))
(cl:defmethod ini_pose_y-val ((m <setmap_ctr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AnhungControl-msg:ini_pose_y-val is deprecated.  Use AnhungControl-msg:ini_pose_y instead.")
  (ini_pose_y m))

(cl:ensure-generic-function 'ini_pose_z-val :lambda-list '(m))
(cl:defmethod ini_pose_z-val ((m <setmap_ctr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AnhungControl-msg:ini_pose_z-val is deprecated.  Use AnhungControl-msg:ini_pose_z instead.")
  (ini_pose_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <setmap_ctr>) ostream)
  "Serializes a message object of type '<setmap_ctr>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ini_pose_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ini_pose_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ini_pose_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <setmap_ctr>) istream)
  "Deserializes a message object of type '<setmap_ctr>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ini_pose_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ini_pose_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ini_pose_z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<setmap_ctr>)))
  "Returns string type for a message object of type '<setmap_ctr>"
  "AnhungControl/setmap_ctr")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setmap_ctr)))
  "Returns string type for a message object of type 'setmap_ctr"
  "AnhungControl/setmap_ctr")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<setmap_ctr>)))
  "Returns md5sum for a message object of type '<setmap_ctr>"
  "8c23a07c53b1d6aa0bb1c34e1d6baaf2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'setmap_ctr)))
  "Returns md5sum for a message object of type 'setmap_ctr"
  "8c23a07c53b1d6aa0bb1c34e1d6baaf2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<setmap_ctr>)))
  "Returns full string definition for message of type '<setmap_ctr>"
  (cl:format cl:nil "string type~%string Name~%float32 ini_pose_x~%float32 ini_pose_y~%float32 ini_pose_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'setmap_ctr)))
  "Returns full string definition for message of type 'setmap_ctr"
  (cl:format cl:nil "string type~%string Name~%float32 ini_pose_x~%float32 ini_pose_y~%float32 ini_pose_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <setmap_ctr>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'Name))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <setmap_ctr>))
  "Converts a ROS message object to a list"
  (cl:list 'setmap_ctr
    (cl:cons ':type (type msg))
    (cl:cons ':Name (Name msg))
    (cl:cons ':ini_pose_x (ini_pose_x msg))
    (cl:cons ':ini_pose_y (ini_pose_y msg))
    (cl:cons ':ini_pose_z (ini_pose_z msg))
))
