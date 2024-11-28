;; Auto-generated. Do not edit!


(when (boundp 'kr_tracker_msgs::LissajousAdderGoal)
  (if (not (find-package "KR_TRACKER_MSGS"))
    (make-package "KR_TRACKER_MSGS"))
  (shadow 'LissajousAdderGoal (find-package "KR_TRACKER_MSGS")))
(unless (find-package "KR_TRACKER_MSGS::LISSAJOUSADDERGOAL")
  (make-package "KR_TRACKER_MSGS::LISSAJOUSADDERGOAL"))

(in-package "ROS")
;;//! \htmlinclude LissajousAdderGoal.msg.html


(defclass kr_tracker_msgs::LissajousAdderGoal
  :super ros::object
  :slots (_x_amp _y_amp _z_amp _yaw_amp _x_num_periods _y_num_periods _z_num_periods _yaw_num_periods _period _num_cycles _ramp_time ))

(defmethod kr_tracker_msgs::LissajousAdderGoal
  (:init
   (&key
    ((:x_amp __x_amp) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:y_amp __y_amp) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:z_amp __z_amp) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:yaw_amp __yaw_amp) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:x_num_periods __x_num_periods) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:y_num_periods __y_num_periods) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:z_num_periods __z_num_periods) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:yaw_num_periods __yaw_num_periods) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:period __period) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:num_cycles __num_cycles) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:ramp_time __ramp_time) (make-array 2 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _x_amp __x_amp)
   (setq _y_amp __y_amp)
   (setq _z_amp __z_amp)
   (setq _yaw_amp __yaw_amp)
   (setq _x_num_periods __x_num_periods)
   (setq _y_num_periods __y_num_periods)
   (setq _z_num_periods __z_num_periods)
   (setq _yaw_num_periods __yaw_num_periods)
   (setq _period __period)
   (setq _num_cycles __num_cycles)
   (setq _ramp_time __ramp_time)
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
    ;; float64[2] _x_amp
    (* 8    2)
    ;; float64[2] _y_amp
    (* 8    2)
    ;; float64[2] _z_amp
    (* 8    2)
    ;; float64[2] _yaw_amp
    (* 8    2)
    ;; float64[2] _x_num_periods
    (* 8    2)
    ;; float64[2] _y_num_periods
    (* 8    2)
    ;; float64[2] _z_num_periods
    (* 8    2)
    ;; float64[2] _yaw_num_periods
    (* 8    2)
    ;; float64[2] _period
    (* 8    2)
    ;; float64[2] _num_cycles
    (* 8    2)
    ;; float64[2] _ramp_time
    (* 8    2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[2] _x_amp
     (dotimes (i 2)
       (sys::poke (elt _x_amp i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[2] _y_amp
     (dotimes (i 2)
       (sys::poke (elt _y_amp i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[2] _z_amp
     (dotimes (i 2)
       (sys::poke (elt _z_amp i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[2] _yaw_amp
     (dotimes (i 2)
       (sys::poke (elt _yaw_amp i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[2] _x_num_periods
     (dotimes (i 2)
       (sys::poke (elt _x_num_periods i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[2] _y_num_periods
     (dotimes (i 2)
       (sys::poke (elt _y_num_periods i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[2] _z_num_periods
     (dotimes (i 2)
       (sys::poke (elt _z_num_periods i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[2] _yaw_num_periods
     (dotimes (i 2)
       (sys::poke (elt _yaw_num_periods i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[2] _period
     (dotimes (i 2)
       (sys::poke (elt _period i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[2] _num_cycles
     (dotimes (i 2)
       (sys::poke (elt _num_cycles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[2] _ramp_time
     (dotimes (i 2)
       (sys::poke (elt _ramp_time i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[2] _x_amp
   (dotimes (i (length _x_amp))
     (setf (elt _x_amp i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[2] _y_amp
   (dotimes (i (length _y_amp))
     (setf (elt _y_amp i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[2] _z_amp
   (dotimes (i (length _z_amp))
     (setf (elt _z_amp i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[2] _yaw_amp
   (dotimes (i (length _yaw_amp))
     (setf (elt _yaw_amp i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[2] _x_num_periods
   (dotimes (i (length _x_num_periods))
     (setf (elt _x_num_periods i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[2] _y_num_periods
   (dotimes (i (length _y_num_periods))
     (setf (elt _y_num_periods i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[2] _z_num_periods
   (dotimes (i (length _z_num_periods))
     (setf (elt _z_num_periods i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[2] _yaw_num_periods
   (dotimes (i (length _yaw_num_periods))
     (setf (elt _yaw_num_periods i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[2] _period
   (dotimes (i (length _period))
     (setf (elt _period i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[2] _num_cycles
   (dotimes (i (length _num_cycles))
     (setf (elt _num_cycles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[2] _ramp_time
   (dotimes (i (length _ramp_time))
     (setf (elt _ramp_time i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get kr_tracker_msgs::LissajousAdderGoal :md5sum-) "0d1dd950c79374f41a6a89f6bb58553e")
(setf (get kr_tracker_msgs::LissajousAdderGoal :datatype-) "kr_tracker_msgs/LissajousAdderGoal")
(setf (get kr_tracker_msgs::LissajousAdderGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
float64[2] x_amp
float64[2] y_amp
float64[2] z_amp
float64[2] yaw_amp
float64[2] x_num_periods
float64[2] y_num_periods
float64[2] z_num_periods
float64[2] yaw_num_periods
float64[2] period
float64[2] num_cycles
float64[2] ramp_time

")



(provide :kr_tracker_msgs/LissajousAdderGoal "0d1dd950c79374f41a6a89f6bb58553e")


