; Auto-generated. Do not edit!


(cl:in-package AnhungControl-msg)


;//! \htmlinclude state.msg.html

(cl:defclass <state> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass state (<state>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <state>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'state)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name AnhungControl-msg:<state> is deprecated: use AnhungControl-msg:state instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AnhungControl-msg:id-val is deprecated.  Use AnhungControl-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AnhungControl-msg:state-val is deprecated.  Use AnhungControl-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <state>) ostream)
  "Serializes a message object of type '<state>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <state>) istream)
  "Deserializes a message object of type '<state>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<state>)))
  "Returns string type for a message object of type '<state>"
  "AnhungControl/state")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'state)))
  "Returns string type for a message object of type 'state"
  "AnhungControl/state")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<state>)))
  "Returns md5sum for a message object of type '<state>"
  "a8661fa608fa36fba2ec658a57a3be9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'state)))
  "Returns md5sum for a message object of type 'state"
  "a8661fa608fa36fba2ec658a57a3be9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<state>)))
  "Returns full string definition for message of type '<state>"
  (cl:format cl:nil "int16 id~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'state)))
  "Returns full string definition for message of type 'state"
  (cl:format cl:nil "int16 id~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <state>))
  (cl:+ 0
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <state>))
  "Converts a ROS message object to a list"
  (cl:list 'state
    (cl:cons ':id (id msg))
    (cl:cons ':state (state msg))
))
