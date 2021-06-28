;; Auto-generated. Do not edit!


(when (boundp 'JoyStick::Node_recv)
  (if (not (find-package "JOYSTICK"))
    (make-package "JOYSTICK"))
  (shadow 'Node_recv (find-package "JOYSTICK")))
(unless (find-package "JOYSTICK::NODE_RECV")
  (make-package "JOYSTICK::NODE_RECV"))

(in-package "ROS")
;;//! \htmlinclude Node_recv.msg.html


(defclass JoyStick::Node_recv
  :super ros::object
  :slots (_check _value _kin _id _type _time _btn_finish _x _y _z _line _radius ))

(defmethod JoyStick::Node_recv
  (:init
   (&key
    ((:check __check) 0)
    ((:value __value) 0)
    ((:kin __kin) "")
    ((:id __id) 0)
    ((:type __type) 0)
    ((:time __time) 0)
    ((:btn_finish __btn_finish) nil)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:line __line) 0)
    ((:radius __radius) 0.0)
    )
   (send-super :init)
   (setq _check (round __check))
   (setq _value (round __value))
   (setq _kin (string __kin))
   (setq _id (round __id))
   (setq _type (round __type))
   (setq _time (round __time))
   (setq _btn_finish __btn_finish)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _line (round __line))
   (setq _radius (float __radius))
   self)
  (:check
   (&optional __check)
   (if __check (setq _check __check)) _check)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:kin
   (&optional __kin)
   (if __kin (setq _kin __kin)) _kin)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:btn_finish
   (&optional __btn_finish)
   (if __btn_finish (setq _btn_finish __btn_finish)) _btn_finish)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:line
   (&optional __line)
   (if __line (setq _line __line)) _line)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; int8 _check
    1
    ;; int8 _value
    1
    ;; string _kin
    4 (length _kin)
    ;; int16 _id
    2
    ;; int16 _type
    2
    ;; int32 _time
    4
    ;; bool _btn_finish
    1
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; int8 _line
    1
    ;; float32 _radius
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _check
       (write-byte _check s)
     ;; int8 _value
       (write-byte _value s)
     ;; string _kin
       (write-long (length _kin) s) (princ _kin s)
     ;; int16 _id
       (write-word _id s)
     ;; int16 _type
       (write-word _type s)
     ;; int32 _time
       (write-long _time s)
     ;; bool _btn_finish
       (if _btn_finish (write-byte -1 s) (write-byte 0 s))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _line
       (write-byte _line s)
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _check
     (setq _check (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _check 127) (setq _check (- _check 256)))
   ;; int8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _value 127) (setq _value (- _value 256)))
   ;; string _kin
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _kin (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _type
     (setq _type (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _time
     (setq _time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _btn_finish
     (setq _btn_finish (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _line
     (setq _line (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _line 127) (setq _line (- _line 256)))
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get JoyStick::Node_recv :md5sum-) "ea0b94b98c9f92d87ddfce4a90987d71")
(setf (get JoyStick::Node_recv :datatype-) "JoyStick/Node_recv")
(setf (get JoyStick::Node_recv :definition-)
      "int8 check
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

")



(provide :JoyStick/Node_recv "ea0b94b98c9f92d87ddfce4a90987d71")


