; Auto-generated. Do not edit!


(cl:in-package move_robot-msg)


;//! \htmlinclude Node_recv.msg.html

(cl:defclass <Node_recv> (roslisp-msg-protocol:ros-message)
  ((check
    :reader check
    :initarg :check
    :type cl:fixnum
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0)
   (kin
    :reader kin
    :initarg :kin
    :type cl:string
    :initform "")
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (time
    :reader time
    :initarg :time
    :type cl:integer
    :initform 0)
   (btn_finish
    :reader btn_finish
    :initarg :btn_finish
    :type cl:boolean
    :initform cl:nil)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (line
    :reader line
    :initarg :line
    :type cl:fixnum
    :initform 0)
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (map
    :reader map
    :initarg :map
    :type cl:string
    :initform "")
   (floor
    :reader floor
    :initarg :floor
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Node_recv (<Node_recv>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Node_recv>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Node_recv)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name move_robot-msg:<Node_recv> is deprecated: use move_robot-msg:Node_recv instead.")))

(cl:ensure-generic-function 'check-val :lambda-list '(m))
(cl:defmethod check-val ((m <Node_recv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_robot-msg:check-val is deprecated.  Use move_robot-msg:check instead.")
  (check m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Node_recv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_robot-msg:value-val is deprecated.  Use move_robot-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'kin-val :lambda-list '(m))
(cl:defmethod kin-val ((m <Node_recv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_robot-msg:kin-val is deprecated.  Use move_robot-msg:kin instead.")
  (kin m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Node_recv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_robot-msg:id-val is deprecated.  Use move_robot-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Node_recv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_robot-msg:type-val is deprecated.  Use move_robot-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <Node_recv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_robot-msg:time-val is deprecated.  Use move_robot-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'btn_finish-val :lambda-list '(m))
(cl:defmethod btn_finish-val ((m <Node_recv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_robot-msg:btn_finish-val is deprecated.  Use move_robot-msg:btn_finish instead.")
  (btn_finish m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Node_recv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_robot-msg:x-val is deprecated.  Use move_robot-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Node_recv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_robot-msg:y-val is deprecated.  Use move_robot-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <Node_recv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_robot-msg:z-val is deprecated.  Use move_robot-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'line-val :lambda-list '(m))
(cl:defmethod line-val ((m <Node_recv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_robot-msg:line-val is deprecated.  Use move_robot-msg:line instead.")
  (line m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <Node_recv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_robot-msg:radius-val is deprecated.  Use move_robot-msg:radius instead.")
  (radius m))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <Node_recv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_robot-msg:map-val is deprecated.  Use move_robot-msg:map instead.")
  (map m))

(cl:ensure-generic-function 'floor-val :lambda-list '(m))
(cl:defmethod floor-val ((m <Node_recv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_robot-msg:floor-val is deprecated.  Use move_robot-msg:floor instead.")
  (floor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Node_recv>) ostream)
  "Serializes a message object of type '<Node_recv>"
  (cl:let* ((signed (cl:slot-value msg 'check)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'kin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'kin))
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'btn_finish) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'line)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map))
  (cl:let* ((signed (cl:slot-value msg 'floor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Node_recv>) istream)
  "Deserializes a message object of type '<Node_recv>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'check) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kin) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'kin) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'btn_finish) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'line) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'floor) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Node_recv>)))
  "Returns string type for a message object of type '<Node_recv>"
  "move_robot/Node_recv")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Node_recv)))
  "Returns string type for a message object of type 'Node_recv"
  "move_robot/Node_recv")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Node_recv>)))
  "Returns md5sum for a message object of type '<Node_recv>"
  "66cc5de5f9e7ba3174d5b24188e5cfba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Node_recv)))
  "Returns md5sum for a message object of type 'Node_recv"
  "66cc5de5f9e7ba3174d5b24188e5cfba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Node_recv>)))
  "Returns full string definition for message of type '<Node_recv>"
  (cl:format cl:nil "int8 check~%int8 value~%string kin~%int16 id~%int16 type~%int32 time~%bool btn_finish~%float32 x~%float32 y~%float32 z~%int8 line~%float32 radius~%string map~%int8 floor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Node_recv)))
  "Returns full string definition for message of type 'Node_recv"
  (cl:format cl:nil "int8 check~%int8 value~%string kin~%int16 id~%int16 type~%int32 time~%bool btn_finish~%float32 x~%float32 y~%float32 z~%int8 line~%float32 radius~%string map~%int8 floor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Node_recv>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'kin))
     2
     2
     4
     1
     4
     4
     4
     1
     4
     4 (cl:length (cl:slot-value msg 'map))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Node_recv>))
  "Converts a ROS message object to a list"
  (cl:list 'Node_recv
    (cl:cons ':check (check msg))
    (cl:cons ':value (value msg))
    (cl:cons ':kin (kin msg))
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':time (time msg))
    (cl:cons ':btn_finish (btn_finish msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':line (line msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':map (map msg))
    (cl:cons ':floor (floor msg))
))
