; Auto-generated. Do not edit!


(cl:in-package AnhungControl-msg)


;//! \htmlinclude traffic_recv.msg.html

(cl:defclass <traffic_recv> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (GO
    :reader GO
    :initarg :GO
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass traffic_recv (<traffic_recv>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <traffic_recv>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'traffic_recv)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name AnhungControl-msg:<traffic_recv> is deprecated: use AnhungControl-msg:traffic_recv instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <traffic_recv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AnhungControl-msg:id-val is deprecated.  Use AnhungControl-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'GO-val :lambda-list '(m))
(cl:defmethod GO-val ((m <traffic_recv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AnhungControl-msg:GO-val is deprecated.  Use AnhungControl-msg:GO instead.")
  (GO m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <traffic_recv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader AnhungControl-msg:speed-val is deprecated.  Use AnhungControl-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <traffic_recv>) ostream)
  "Serializes a message object of type '<traffic_recv>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'GO)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <traffic_recv>) istream)
  "Deserializes a message object of type '<traffic_recv>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'GO) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<traffic_recv>)))
  "Returns string type for a message object of type '<traffic_recv>"
  "AnhungControl/traffic_recv")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'traffic_recv)))
  "Returns string type for a message object of type 'traffic_recv"
  "AnhungControl/traffic_recv")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<traffic_recv>)))
  "Returns md5sum for a message object of type '<traffic_recv>"
  "bd53addd57b8245461c1b2a9249d0685")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'traffic_recv)))
  "Returns md5sum for a message object of type 'traffic_recv"
  "bd53addd57b8245461c1b2a9249d0685")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<traffic_recv>)))
  "Returns full string definition for message of type '<traffic_recv>"
  (cl:format cl:nil "int16 id~%int8 GO~%float64 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'traffic_recv)))
  "Returns full string definition for message of type 'traffic_recv"
  (cl:format cl:nil "int16 id~%int8 GO~%float64 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <traffic_recv>))
  (cl:+ 0
     2
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <traffic_recv>))
  "Converts a ROS message object to a list"
  (cl:list 'traffic_recv
    (cl:cons ':id (id msg))
    (cl:cons ':GO (GO msg))
    (cl:cons ':speed (speed msg))
))
