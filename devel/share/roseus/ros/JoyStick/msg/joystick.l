;; Auto-generated. Do not edit!


(when (boundp 'JoyStick::joystick)
  (if (not (find-package "JOYSTICK"))
    (make-package "JOYSTICK"))
  (shadow 'joystick (find-package "JOYSTICK")))
(unless (find-package "JOYSTICK::JOYSTICK")
  (make-package "JOYSTICK::JOYSTICK"))

(in-package "ROS")
;;//! \htmlinclude joystick.msg.html


(defclass JoyStick::joystick
  :super ros::object
  :slots (_btn_id _x _y _z ))

(defmethod JoyStick::joystick
  (:init
   (&key
    ((:btn_id __btn_id) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _btn_id (round __btn_id))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:btn_id
   (&optional __btn_id)
   (if __btn_id (setq _btn_id __btn_id)) _btn_id)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; int8 _btn_id
    1
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _btn_id
       (write-byte _btn_id s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _btn_id
     (setq _btn_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _btn_id 127) (setq _btn_id (- _btn_id 256)))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get JoyStick::joystick :md5sum-) "5722394311bf6914b14e0d79b7966426")
(setf (get JoyStick::joystick :datatype-) "JoyStick/joystick")
(setf (get JoyStick::joystick :definition-)
      "int8 btn_id
float64 x
float64 y
float64 z

")



(provide :JoyStick/joystick "5722394311bf6914b14e0d79b7966426")


