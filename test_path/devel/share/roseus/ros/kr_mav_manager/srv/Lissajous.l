;; Auto-generated. Do not edit!


(when (boundp 'kr_mav_manager::Lissajous)
  (if (not (find-package "KR_MAV_MANAGER"))
    (make-package "KR_MAV_MANAGER"))
  (shadow 'Lissajous (find-package "KR_MAV_MANAGER")))
(unless (find-package "KR_MAV_MANAGER::LISSAJOUS")
  (make-package "KR_MAV_MANAGER::LISSAJOUS"))
(unless (find-package "KR_MAV_MANAGER::LISSAJOUSREQUEST")
  (make-package "KR_MAV_MANAGER::LISSAJOUSREQUEST"))
(unless (find-package "KR_MAV_MANAGER::LISSAJOUSRESPONSE")
  (make-package "KR_MAV_MANAGER::LISSAJOUSRESPONSE"))

(in-package "ROS")





(defclass kr_mav_manager::LissajousRequest
  :super ros::object
  :slots (_x_amp _y_amp _z_amp _yaw_amp _x_num_periods _y_num_periods _z_num_periods _yaw_num_periods _period _num_cycles _ramp_time ))

(defmethod kr_mav_manager::LissajousRequest
  (:init
   (&key
    ((:x_amp __x_amp) 0.0)
    ((:y_amp __y_amp) 0.0)
    ((:z_amp __z_amp) 0.0)
    ((:yaw_amp __yaw_amp) 0.0)
    ((:x_num_periods __x_num_periods) 0.0)
    ((:y_num_periods __y_num_periods) 0.0)
    ((:z_num_periods __z_num_periods) 0.0)
    ((:yaw_num_periods __yaw_num_periods) 0.0)
    ((:period __period) 0.0)
    ((:num_cycles __num_cycles) 0.0)
    ((:ramp_time __ramp_time) 0.0)
    )
   (send-super :init)
   (setq _x_amp (float __x_amp))
   (setq _y_amp (float __y_amp))
   (setq _z_amp (float __z_amp))
   (setq _yaw_amp (float __yaw_amp))
   (setq _x_num_periods (float __x_num_periods))
   (setq _y_num_periods (float __y_num_periods))
   (setq _z_num_periods (float __z_num_periods))
   (setq _yaw_num_periods (float __yaw_num_periods))
   (setq _period (float __period))
   (setq _num_cycles (float __num_cycles))
   (setq _ramp_time (float __ramp_time))
   self)
  (:x_amp
   (&optional __x_amp)
   (if __x_amp (setq _x_amp __x_amp)) _x_amp)
  (:y_amp
   (&optional __y_amp)
   (if __y_amp (setq _y_amp __y_amp)) _y_amp)
  (:z_amp
   (&optional __z_amp)
   (if __z_amp (setq _z_amp __z_amp)) _z_amp)
  (:yaw_amp
   (&optional __yaw_amp)
   (if __yaw_amp (setq _yaw_amp __yaw_amp)) _yaw_amp)
  (:x_num_periods
   (&optional __x_num_periods)
   (if __x_num_periods (setq _x_num_periods __x_num_periods)) _x_num_periods)
  (:y_num_periods
   (&optional __y_num_periods)
   (if __y_num_periods (setq _y_num_periods __y_num_periods)) _y_num_periods)
  (:z_num_periods
   (&optional __z_num_periods)
   (if __z_num_periods (setq _z_num_periods __z_num_periods)) _z_num_periods)
  (:yaw_num_periods
   (&optional __yaw_num_periods)
   (if __yaw_num_periods (setq _yaw_num_periods __yaw_num_periods)) _yaw_num_periods)
  (:period
   (&optional __period)
   (if __period (setq _period __period)) _period)
  (:num_cycles
   (&optional __num_cycles)
   (if __num_cycles (setq _num_cycles __num_cycles)) _num_cycles)
  (:ramp_time
   (&optional __ramp_time)
   (if __ramp_time (setq _ramp_time __ramp_time)) _ramp_time)
  (:serialization-length
   ()
   (+
    ;; float32 _x_amp
    4
    ;; float32 _y_amp
    4
    ;; float32 _z_amp
    4
    ;; float32 _yaw_amp
    4
    ;; float32 _x_num_periods
    4
    ;; float32 _y_num_periods
    4
    ;; float32 _z_num_periods
    4
    ;; float32 _yaw_num_periods
    4
    ;; float32 _period
    4
    ;; float32 _num_cycles
    4
    ;; float32 _ramp_time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x_amp
       (sys::poke _x_amp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_amp
       (sys::poke _y_amp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z_amp
       (sys::poke _z_amp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_amp
       (sys::poke _yaw_amp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x_num_periods
       (sys::poke _x_num_periods (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_num_periods
       (sys::poke _y_num_periods (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z_num_periods
       (sys::poke _z_num_periods (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_num_periods
       (sys::poke _yaw_num_periods (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _period
       (sys::poke _period (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _num_cycles
       (sys::poke _num_cycles (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ramp_time
       (sys::poke _ramp_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x_amp
     (setq _x_amp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_amp
     (setq _y_amp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z_amp
     (setq _z_amp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_amp
     (setq _yaw_amp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x_num_periods
     (setq _x_num_periods (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_num_periods
     (setq _y_num_periods (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z_num_periods
     (setq _z_num_periods (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_num_periods
     (setq _yaw_num_periods (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _period
     (setq _period (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _num_cycles
     (setq _num_cycles (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ramp_time
     (setq _ramp_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass kr_mav_manager::LissajousResponse
  :super ros::object
  :slots (_success _message ))

(defmethod kr_mav_manager::LissajousResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass kr_mav_manager::Lissajous
  :super ros::object
  :slots ())

(setf (get kr_mav_manager::Lissajous :md5sum-) "f81be309608c349bc23d64ad353b7acd")
(setf (get kr_mav_manager::Lissajous :datatype-) "kr_mav_manager/Lissajous")
(setf (get kr_mav_manager::Lissajous :request) kr_mav_manager::LissajousRequest)
(setf (get kr_mav_manager::Lissajous :response) kr_mav_manager::LissajousResponse)

(defmethod kr_mav_manager::LissajousRequest
  (:response () (instance kr_mav_manager::LissajousResponse :init)))

(setf (get kr_mav_manager::LissajousRequest :md5sum-) "f81be309608c349bc23d64ad353b7acd")
(setf (get kr_mav_manager::LissajousRequest :datatype-) "kr_mav_manager/LissajousRequest")
(setf (get kr_mav_manager::LissajousRequest :definition-)
      "float32 x_amp
float32 y_amp
float32 z_amp
float32 yaw_amp
float32 x_num_periods
float32 y_num_periods
float32 z_num_periods
float32 yaw_num_periods
float32 period
float32 num_cycles
float32 ramp_time
---
bool success
string message

")

(setf (get kr_mav_manager::LissajousResponse :md5sum-) "f81be309608c349bc23d64ad353b7acd")
(setf (get kr_mav_manager::LissajousResponse :datatype-) "kr_mav_manager/LissajousResponse")
(setf (get kr_mav_manager::LissajousResponse :definition-)
      "float32 x_amp
float32 y_amp
float32 z_amp
float32 yaw_amp
float32 x_num_periods
float32 y_num_periods
float32 z_num_periods
float32 yaw_num_periods
float32 period
float32 num_cycles
float32 ramp_time
---
bool success
string message

")



(provide :kr_mav_manager/Lissajous "f81be309608c349bc23d64ad353b7acd")


