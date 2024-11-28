;; Auto-generated. Do not edit!


(when (boundp 'kr_mav_manager::Vec4)
  (if (not (find-package "KR_MAV_MANAGER"))
    (make-package "KR_MAV_MANAGER"))
  (shadow 'Vec4 (find-package "KR_MAV_MANAGER")))
(unless (find-package "KR_MAV_MANAGER::VEC4")
  (make-package "KR_MAV_MANAGER::VEC4"))
(unless (find-package "KR_MAV_MANAGER::VEC4REQUEST")
  (make-package "KR_MAV_MANAGER::VEC4REQUEST"))
(unless (find-package "KR_MAV_MANAGER::VEC4RESPONSE")
  (make-package "KR_MAV_MANAGER::VEC4RESPONSE"))

(in-package "ROS")





(defclass kr_mav_manager::Vec4Request
  :super ros::object
  :slots (_goal ))

(defmethod kr_mav_manager::Vec4Request
  (:init
   (&key
    ((:goal __goal) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _goal __goal)
   self)
  (:goal
   (&optional __goal)
   (if __goal (setq _goal __goal)) _goal)
  (:serialization-length
   ()
   (+
    ;; float32[4] _goal
    (* 4    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[4] _goal
     (dotimes (i 4)
       (sys::poke (elt _goal i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[4] _goal
   (dotimes (i (length _goal))
     (setf (elt _goal i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(defclass kr_mav_manager::Vec4Response
  :super ros::object
  :slots (_success _message ))

(defmethod kr_mav_manager::Vec4Response
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

(defclass kr_mav_manager::Vec4
  :super ros::object
  :slots ())

(setf (get kr_mav_manager::Vec4 :md5sum-) "44ba4f91582c39f849015d605157d6ff")
(setf (get kr_mav_manager::Vec4 :datatype-) "kr_mav_manager/Vec4")
(setf (get kr_mav_manager::Vec4 :request) kr_mav_manager::Vec4Request)
(setf (get kr_mav_manager::Vec4 :response) kr_mav_manager::Vec4Response)

(defmethod kr_mav_manager::Vec4Request
  (:response () (instance kr_mav_manager::Vec4Response :init)))

(setf (get kr_mav_manager::Vec4Request :md5sum-) "44ba4f91582c39f849015d605157d6ff")
(setf (get kr_mav_manager::Vec4Request :datatype-) "kr_mav_manager/Vec4Request")
(setf (get kr_mav_manager::Vec4Request :definition-)
      "float32[4] goal
---
bool success
string message

")

(setf (get kr_mav_manager::Vec4Response :md5sum-) "44ba4f91582c39f849015d605157d6ff")
(setf (get kr_mav_manager::Vec4Response :datatype-) "kr_mav_manager/Vec4Response")
(setf (get kr_mav_manager::Vec4Response :definition-)
      "float32[4] goal
---
bool success
string message

")



(provide :kr_mav_manager/Vec4 "44ba4f91582c39f849015d605157d6ff")


