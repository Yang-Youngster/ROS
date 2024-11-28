;; Auto-generated. Do not edit!


(when (boundp 'kr_tracker_msgs::LissajousTrackerGoal)
  (if (not (find-package "KR_TRACKER_MSGS"))
    (make-package "KR_TRACKER_MSGS"))
  (shadow 'LissajousTrackerGoal (find-package "KR_TRACKER_MSGS")))
(unless (find-package "KR_TRACKER_MSGS::LISSAJOUSTRACKERGOAL")
  (make-package "KR_TRACKER_MSGS::LISSAJOUSTRACKERGOAL"))

(in-package "ROS")
;;//! \htmlinclude LissajousTrackerGoal.msg.html


(defclass kr_tracker_msgs::LissajousTrackerGoal
  :super ros::object
  :slots (_x_amp _y_amp _z_amp _yaw_amp _x_num_periods _y_num_periods _z_num_periods _yaw_num_periods _period _num_cycles _ramp_time ))

(defmethod kr_tracker_msgs::LissajousTrackerGoal
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
    ;; float64 _x_amp
    8
    ;; float64 _y_amp
    8
    ;; float64 _z_amp
    8
    ;; float64 _yaw_amp
    8
    ;; float64 _x_num_periods
    8
    ;; float64 _y_num_periods
    8
    ;; float64 _z_num_periods
    8
    ;; float64 _yaw_num_periods
    8
    ;; float64 _period
    8
    ;; float64 _num_cycles
    8
    ;; float64 _ramp_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x_amp
       (sys::poke _x_amp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_amp
       (sys::poke _y_amp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_amp
       (sys::poke _z_amp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_amp
       (sys::poke _yaw_amp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_num_periods
       (sys::poke _x_num_periods (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_num_periods
       (sys::poke _y_num_periods (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_num_periods
       (sys::poke _z_num_periods (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_num_periods
       (sys::poke _yaw_num_periods (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _period
       (sys::poke _period (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _num_cycles
       (sys::poke _num_cycles (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ramp_time
       (sys::poke _ramp_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x_amp
     (setq _x_amp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_amp
     (setq _y_amp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_amp
     (setq _z_amp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_amp
     (setq _yaw_amp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_num_periods
     (setq _x_num_periods (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_num_periods
     (setq _y_num_periods (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_num_periods
     (setq _z_num_periods (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_num_periods
     (setq _yaw_num_periods (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _period
     (setq _period (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _num_cycles
     (setq _num_cycles (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ramp_time
     (setq _ramp_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get kr_tracker_msgs::LissajousTrackerGoal :md5sum-) "930974c2d188c41daaa75abb01f40727")
(setf (get kr_tracker_msgs::LissajousTrackerGoal :datatype-) "kr_tracker_msgs/LissajousTrackerGoal")
(setf (get kr_tracker_msgs::LissajousTrackerGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
float64 x_amp
float64 y_amp
float64 z_amp
float64 yaw_amp
float64 x_num_periods
float64 y_num_periods
float64 z_num_periods
float64 yaw_num_periods
float64 period
float64 num_cycles
float64 ramp_time

")



(provide :kr_tracker_msgs/LissajousTrackerGoal "930974c2d188c41daaa75abb01f40727")


