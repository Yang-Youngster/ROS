;; Auto-generated. Do not edit!


(when (boundp 'kr_mav_manager::CompoundLissajous)
  (if (not (find-package "KR_MAV_MANAGER"))
    (make-package "KR_MAV_MANAGER"))
  (shadow 'CompoundLissajous (find-package "KR_MAV_MANAGER")))
(unless (find-package "KR_MAV_MANAGER::COMPOUNDLISSAJOUS")
  (make-package "KR_MAV_MANAGER::COMPOUNDLISSAJOUS"))
(unless (find-package "KR_MAV_MANAGER::COMPOUNDLISSAJOUSREQUEST")
  (make-package "KR_MAV_MANAGER::COMPOUNDLISSAJOUSREQUEST"))
(unless (find-package "KR_MAV_MANAGER::COMPOUNDLISSAJOUSRESPONSE")
  (make-package "KR_MAV_MANAGER::COMPOUNDLISSAJOUSRESPONSE"))

(in-package "ROS")





(defclass kr_mav_manager::CompoundLissajousRequest
  :super ros::object
  :slots (_x_amp _y_amp _z_amp _yaw_amp _x_num_periods _y_num_periods _z_num_periods _yaw_num_periods _period _num_cycles _ramp_time ))

(defmethod kr_mav_manager::CompoundLissajousRequest
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
    ;; float32[2] _x_amp
    (* 4    2)
    ;; float32[2] _y_amp
    (* 4    2)
    ;; float32[2] _z_amp
    (* 4    2)
    ;; float32[2] _yaw_amp
    (* 4    2)
    ;; float32[2] _x_num_periods
    (* 4    2)
    ;; float32[2] _y_num_periods
    (* 4    2)
    ;; float32[2] _z_num_periods
    (* 4    2)
    ;; float32[2] _yaw_num_periods
    (* 4    2)
    ;; float32[2] _period
    (* 4    2)
    ;; float32[2] _num_cycles
    (* 4    2)
    ;; float32[2] _ramp_time
    (* 4    2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[2] _x_amp
     (dotimes (i 2)
       (sys::poke (elt _x_amp i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[2] _y_amp
     (dotimes (i 2)
       (sys::poke (elt _y_amp i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[2] _z_amp
     (dotimes (i 2)
       (sys::poke (elt _z_amp i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[2] _yaw_amp
     (dotimes (i 2)
       (sys::poke (elt _yaw_amp i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[2] _x_num_periods
     (dotimes (i 2)
       (sys::poke (elt _x_num_periods i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[2] _y_num_periods
     (dotimes (i 2)
       (sys::poke (elt _y_num_periods i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[2] _z_num_periods
     (dotimes (i 2)
       (sys::poke (elt _z_num_periods i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[2] _yaw_num_periods
     (dotimes (i 2)
       (sys::poke (elt _yaw_num_periods i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[2] _period
     (dotimes (i 2)
       (sys::poke (elt _period i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[2] _num_cycles
     (dotimes (i 2)
       (sys::poke (elt _num_cycles i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[2] _ramp_time
     (dotimes (i 2)
       (sys::poke (elt _ramp_time i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[2] _x_amp
   (dotimes (i (length _x_amp))
     (setf (elt _x_amp i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[2] _y_amp
   (dotimes (i (length _y_amp))
     (setf (elt _y_amp i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[2] _z_amp
   (dotimes (i (length _z_amp))
     (setf (elt _z_amp i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[2] _yaw_amp
   (dotimes (i (length _yaw_amp))
     (setf (elt _yaw_amp i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[2] _x_num_periods
   (dotimes (i (length _x_num_periods))
     (setf (elt _x_num_periods i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[2] _y_num_periods
   (dotimes (i (length _y_num_periods))
     (setf (elt _y_num_periods i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[2] _z_num_periods
   (dotimes (i (length _z_num_periods))
     (setf (elt _z_num_periods i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[2] _yaw_num_periods
   (dotimes (i (length _yaw_num_periods))
     (setf (elt _yaw_num_periods i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[2] _period
   (dotimes (i (length _period))
     (setf (elt _period i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[2] _num_cycles
   (dotimes (i (length _num_cycles))
     (setf (elt _num_cycles i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[2] _ramp_time
   (dotimes (i (length _ramp_time))
     (setf (elt _ramp_time i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass kr_mav_manager::CompoundLissajousResponse
  :super ros::object
  :slots (_success _message ))

(defmethod kr_mav_manager::CompoundLissajousResponse
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

(defclass kr_mav_manager::CompoundLissajous
  :super ros::object
  :slots ())

(setf (get kr_mav_manager::CompoundLissajous :md5sum-) "d0232855f9641308bb65371eb700f4ef")
(setf (get kr_mav_manager::CompoundLissajous :datatype-) "kr_mav_manager/CompoundLissajous")
(setf (get kr_mav_manager::CompoundLissajous :request) kr_mav_manager::CompoundLissajousRequest)
(setf (get kr_mav_manager::CompoundLissajous :response) kr_mav_manager::CompoundLissajousResponse)

(defmethod kr_mav_manager::CompoundLissajousRequest
  (:response () (instance kr_mav_manager::CompoundLissajousResponse :init)))

(setf (get kr_mav_manager::CompoundLissajousRequest :md5sum-) "d0232855f9641308bb65371eb700f4ef")
(setf (get kr_mav_manager::CompoundLissajousRequest :datatype-) "kr_mav_manager/CompoundLissajousRequest")
(setf (get kr_mav_manager::CompoundLissajousRequest :definition-)
      "float32[2] x_amp
float32[2] y_amp
float32[2] z_amp
float32[2] yaw_amp
float32[2] x_num_periods
float32[2] y_num_periods
float32[2] z_num_periods
float32[2] yaw_num_periods
float32[2] period
float32[2] num_cycles
float32[2] ramp_time
---
bool success
string message

")

(setf (get kr_mav_manager::CompoundLissajousResponse :md5sum-) "d0232855f9641308bb65371eb700f4ef")
(setf (get kr_mav_manager::CompoundLissajousResponse :datatype-) "kr_mav_manager/CompoundLissajousResponse")
(setf (get kr_mav_manager::CompoundLissajousResponse :definition-)
      "float32[2] x_amp
float32[2] y_amp
float32[2] z_amp
float32[2] yaw_amp
float32[2] x_num_periods
float32[2] y_num_periods
float32[2] z_num_periods
float32[2] yaw_num_periods
float32[2] period
float32[2] num_cycles
float32[2] ramp_time
---
bool success
string message

")



(provide :kr_mav_manager/CompoundLissajous "d0232855f9641308bb65371eb700f4ef")


