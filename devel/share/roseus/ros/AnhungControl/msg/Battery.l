;; Auto-generated. Do not edit!


(when (boundp 'AnhungControl::Battery)
  (if (not (find-package "ANHUNGCONTROL"))
    (make-package "ANHUNGCONTROL"))
  (shadow 'Battery (find-package "ANHUNGCONTROL")))
(unless (find-package "ANHUNGCONTROL::BATTERY")
  (make-package "ANHUNGCONTROL::BATTERY"))

(in-package "ROS")
;;//! \htmlinclude Battery.msg.html


(defclass AnhungControl::Battery
  :super ros::object
  :slots (_Voltage _Current _RelativeSOC1 _RelativeSOC2 _RelativeSOC3 _RelativeSOC4 _AbsoluteSOC1 _AbsoluteSOC2 _AbsoluteSOC3 _AbsoluteSOC4 _Temp1 _Temp2 _Temp3 _Temp4 ))

(defmethod AnhungControl::Battery
  (:init
   (&key
    ((:Voltage __Voltage) 0.0)
    ((:Current __Current) 0.0)
    ((:RelativeSOC1 __RelativeSOC1) 0.0)
    ((:RelativeSOC2 __RelativeSOC2) 0.0)
    ((:RelativeSOC3 __RelativeSOC3) 0.0)
    ((:RelativeSOC4 __RelativeSOC4) 0.0)
    ((:AbsoluteSOC1 __AbsoluteSOC1) 0.0)
    ((:AbsoluteSOC2 __AbsoluteSOC2) 0.0)
    ((:AbsoluteSOC3 __AbsoluteSOC3) 0.0)
    ((:AbsoluteSOC4 __AbsoluteSOC4) 0.0)
    ((:Temp1 __Temp1) 0.0)
    ((:Temp2 __Temp2) 0.0)
    ((:Temp3 __Temp3) 0.0)
    ((:Temp4 __Temp4) 0.0)
    )
   (send-super :init)
   (setq _Voltage (float __Voltage))
   (setq _Current (float __Current))
   (setq _RelativeSOC1 (float __RelativeSOC1))
   (setq _RelativeSOC2 (float __RelativeSOC2))
   (setq _RelativeSOC3 (float __RelativeSOC3))
   (setq _RelativeSOC4 (float __RelativeSOC4))
   (setq _AbsoluteSOC1 (float __AbsoluteSOC1))
   (setq _AbsoluteSOC2 (float __AbsoluteSOC2))
   (setq _AbsoluteSOC3 (float __AbsoluteSOC3))
   (setq _AbsoluteSOC4 (float __AbsoluteSOC4))
   (setq _Temp1 (float __Temp1))
   (setq _Temp2 (float __Temp2))
   (setq _Temp3 (float __Temp3))
   (setq _Temp4 (float __Temp4))
   self)
  (:Voltage
   (&optional __Voltage)
   (if __Voltage (setq _Voltage __Voltage)) _Voltage)
  (:Current
   (&optional __Current)
   (if __Current (setq _Current __Current)) _Current)
  (:RelativeSOC1
   (&optional __RelativeSOC1)
   (if __RelativeSOC1 (setq _RelativeSOC1 __RelativeSOC1)) _RelativeSOC1)
  (:RelativeSOC2
   (&optional __RelativeSOC2)
   (if __RelativeSOC2 (setq _RelativeSOC2 __RelativeSOC2)) _RelativeSOC2)
  (:RelativeSOC3
   (&optional __RelativeSOC3)
   (if __RelativeSOC3 (setq _RelativeSOC3 __RelativeSOC3)) _RelativeSOC3)
  (:RelativeSOC4
   (&optional __RelativeSOC4)
   (if __RelativeSOC4 (setq _RelativeSOC4 __RelativeSOC4)) _RelativeSOC4)
  (:AbsoluteSOC1
   (&optional __AbsoluteSOC1)
   (if __AbsoluteSOC1 (setq _AbsoluteSOC1 __AbsoluteSOC1)) _AbsoluteSOC1)
  (:AbsoluteSOC2
   (&optional __AbsoluteSOC2)
   (if __AbsoluteSOC2 (setq _AbsoluteSOC2 __AbsoluteSOC2)) _AbsoluteSOC2)
  (:AbsoluteSOC3
   (&optional __AbsoluteSOC3)
   (if __AbsoluteSOC3 (setq _AbsoluteSOC3 __AbsoluteSOC3)) _AbsoluteSOC3)
  (:AbsoluteSOC4
   (&optional __AbsoluteSOC4)
   (if __AbsoluteSOC4 (setq _AbsoluteSOC4 __AbsoluteSOC4)) _AbsoluteSOC4)
  (:Temp1
   (&optional __Temp1)
   (if __Temp1 (setq _Temp1 __Temp1)) _Temp1)
  (:Temp2
   (&optional __Temp2)
   (if __Temp2 (setq _Temp2 __Temp2)) _Temp2)
  (:Temp3
   (&optional __Temp3)
   (if __Temp3 (setq _Temp3 __Temp3)) _Temp3)
  (:Temp4
   (&optional __Temp4)
   (if __Temp4 (setq _Temp4 __Temp4)) _Temp4)
  (:serialization-length
   ()
   (+
    ;; float64 _Voltage
    8
    ;; float64 _Current
    8
    ;; float64 _RelativeSOC1
    8
    ;; float64 _RelativeSOC2
    8
    ;; float64 _RelativeSOC3
    8
    ;; float64 _RelativeSOC4
    8
    ;; float64 _AbsoluteSOC1
    8
    ;; float64 _AbsoluteSOC2
    8
    ;; float64 _AbsoluteSOC3
    8
    ;; float64 _AbsoluteSOC4
    8
    ;; float64 _Temp1
    8
    ;; float64 _Temp2
    8
    ;; float64 _Temp3
    8
    ;; float64 _Temp4
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _Voltage
       (sys::poke _Voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Current
       (sys::poke _Current (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _RelativeSOC1
       (sys::poke _RelativeSOC1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _RelativeSOC2
       (sys::poke _RelativeSOC2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _RelativeSOC3
       (sys::poke _RelativeSOC3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _RelativeSOC4
       (sys::poke _RelativeSOC4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _AbsoluteSOC1
       (sys::poke _AbsoluteSOC1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _AbsoluteSOC2
       (sys::poke _AbsoluteSOC2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _AbsoluteSOC3
       (sys::poke _AbsoluteSOC3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _AbsoluteSOC4
       (sys::poke _AbsoluteSOC4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Temp1
       (sys::poke _Temp1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Temp2
       (sys::poke _Temp2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Temp3
       (sys::poke _Temp3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Temp4
       (sys::poke _Temp4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _Voltage
     (setq _Voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Current
     (setq _Current (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _RelativeSOC1
     (setq _RelativeSOC1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _RelativeSOC2
     (setq _RelativeSOC2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _RelativeSOC3
     (setq _RelativeSOC3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _RelativeSOC4
     (setq _RelativeSOC4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _AbsoluteSOC1
     (setq _AbsoluteSOC1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _AbsoluteSOC2
     (setq _AbsoluteSOC2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _AbsoluteSOC3
     (setq _AbsoluteSOC3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _AbsoluteSOC4
     (setq _AbsoluteSOC4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Temp1
     (setq _Temp1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Temp2
     (setq _Temp2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Temp3
     (setq _Temp3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Temp4
     (setq _Temp4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get AnhungControl::Battery :md5sum-) "49990e1b1b63370ee64f7539c711f8c7")
(setf (get AnhungControl::Battery :datatype-) "AnhungControl/Battery")
(setf (get AnhungControl::Battery :definition-)
      "float64 Voltage
float64 Current
float64 RelativeSOC1
float64 RelativeSOC2
float64 RelativeSOC3
float64 RelativeSOC4
float64 AbsoluteSOC1
float64 AbsoluteSOC2
float64 AbsoluteSOC3
float64 AbsoluteSOC4
float64 Temp1
float64 Temp2
float64 Temp3
float64 Temp4

")



(provide :AnhungControl/Battery "49990e1b1b63370ee64f7539c711f8c7")


