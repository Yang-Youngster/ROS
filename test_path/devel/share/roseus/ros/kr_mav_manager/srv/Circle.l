;; Auto-generated. Do not edit!


(when (boundp 'kr_mav_manager::Circle)
  (if (not (find-package "KR_MAV_MANAGER"))
    (make-package "KR_MAV_MANAGER"))
  (shadow 'Circle (find-package "KR_MAV_MANAGER")))
(unless (find-package "KR_MAV_MANAGER::CIRCLE")
  (make-package "KR_MAV_MANAGER::CIRCLE"))
(unless (find-package "KR_MAV_MANAGER::CIRCLEREQUEST")
  (make-package "KR_MAV_MANAGER::CIRCLEREQUEST"))
(unless (find-package "KR_MAV_MANAGER::CIRCLERESPONSE")
  (make-package "KR_MAV_MANAGER::CIRCLERESPONSE"))

(in-package "ROS")





(defclass kr_mav_manager::CircleRequest
  :super ros::object
  :slots (_Ax _Ay _T _duration ))

(defmethod kr_mav_manager::CircleRequest
  (:init
   (&key
    ((:Ax __Ax) 0.0)
    ((:Ay __Ay) 0.0)
    ((:T __T) 0.0)
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _Ax (float __Ax))
   (setq _Ay (float __Ay))
   (setq _T (float __T))
   (setq _duration (float __duration))
   self)
  (:Ax
   (&optional __Ax)
   (if __Ax (setq _Ax __Ax)) _Ax)
  (:Ay
   (&optional __Ay)
   (if __Ay (setq _Ay __Ay)) _Ay)
  (:T
   (&optional __T)
   (if __T (setq _T __T)) _T)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; float32 _Ax
    4
    ;; float32 _Ay
    4
    ;; float32 _T
    4
    ;; float32 _duration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _Ax
       (sys::poke _Ax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Ay
       (sys::poke _Ay (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _T
       (sys::poke _T (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _Ax
     (setq _Ax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Ay
     (setq _Ay (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _T
     (setq _T (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _duration
     (setq _duration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass kr_mav_manager::CircleResponse
  :super ros::object
  :slots (_success _message ))

(defmethod kr_mav_manager::CircleResponse
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

(defclass kr_mav_manager::Circle
  :super ros::object
  :slots ())

(setf (get kr_mav_manager::Circle :md5sum-) "93ae81220b03651225998c84f626ff19")
(setf (get kr_mav_manager::Circle :datatype-) "kr_mav_manager/Circle")
(setf (get kr_mav_manager::Circle :request) kr_mav_manager::CircleRequest)
(setf (get kr_mav_manager::Circle :response) kr_mav_manager::CircleResponse)

(defmethod kr_mav_manager::CircleRequest
  (:response () (instance kr_mav_manager::CircleResponse :init)))

(setf (get kr_mav_manager::CircleRequest :md5sum-) "93ae81220b03651225998c84f626ff19")
(setf (get kr_mav_manager::CircleRequest :datatype-) "kr_mav_manager/CircleRequest")
(setf (get kr_mav_manager::CircleRequest :definition-)
      "float32 Ax
float32 Ay
float32 T
float32 duration
---
bool success
string message

")

(setf (get kr_mav_manager::CircleResponse :md5sum-) "93ae81220b03651225998c84f626ff19")
(setf (get kr_mav_manager::CircleResponse :datatype-) "kr_mav_manager/CircleResponse")
(setf (get kr_mav_manager::CircleResponse :definition-)
      "float32 Ax
float32 Ay
float32 T
float32 duration
---
bool success
string message

")



(provide :kr_mav_manager/Circle "93ae81220b03651225998c84f626ff19")


