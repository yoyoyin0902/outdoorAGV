;; Auto-generated. Do not edit!


(when (boundp 'move_robot::Node_recv)
  (if (not (find-package "MOVE_ROBOT"))
    (make-package "MOVE_ROBOT"))
  (shadow 'Node_recv (find-package "MOVE_ROBOT")))
(unless (find-package "MOVE_ROBOT::NODE_RECV")
  (make-package "MOVE_ROBOT::NODE_RECV"))

(in-package "ROS")
;;//! \htmlinclude Node_recv.msg.html


(defclass move_robot::Node_recv
  :super ros::object
  :slots (_check _value _kin _id _type _time _btn_finish _x _y _z _line _radius _map _floor ))

(defmethod move_robot::Node_recv
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
    ((:map __map) "")
    ((:floor __floor) 0)
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
   (setq _map (string __map))
   (setq _floor (round __floor))
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
  (:map
   (&optional __map)
   (if __map (setq _map __map)) _map)
  (:floor
   (&optional __floor)
   (if __floor (setq _floor __floor)) _floor)
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
    ;; string _map
    4 (length _map)
    ;; int8 _floor
    1
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
     ;; string _map
       (write-long (length _map) s) (princ _map s)
     ;; int8 _floor
       (write-byte _floor s)
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
   ;; string _map
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _floor
     (setq _floor (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _floor 127) (setq _floor (- _floor 256)))
   ;;
   self)
  )

(setf (get move_robot::Node_recv :md5sum-) "66cc5de5f9e7ba3174d5b24188e5cfba")
(setf (get move_robot::Node_recv :datatype-) "move_robot/Node_recv")
(setf (get move_robot::Node_recv :definition-)
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
string map
int8 floor

")



(provide :move_robot/Node_recv "66cc5de5f9e7ba3174d5b24188e5cfba")


