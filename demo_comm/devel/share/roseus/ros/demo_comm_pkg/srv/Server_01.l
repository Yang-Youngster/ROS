;; Auto-generated. Do not edit!


(when (boundp 'demo_comm_pkg::Server_01)
  (if (not (find-package "DEMO_COMM_PKG"))
    (make-package "DEMO_COMM_PKG"))
  (shadow 'Server_01 (find-package "DEMO_COMM_PKG")))
(unless (find-package "DEMO_COMM_PKG::SERVER_01")
  (make-package "DEMO_COMM_PKG::SERVER_01"))
(unless (find-package "DEMO_COMM_PKG::SERVER_01REQUEST")
  (make-package "DEMO_COMM_PKG::SERVER_01REQUEST"))
(unless (find-package "DEMO_COMM_PKG::SERVER_01RESPONSE")
  (make-package "DEMO_COMM_PKG::SERVER_01RESPONSE"))

(in-package "ROS")





(defclass demo_comm_pkg::Server_01Request
  :super ros::object
  :slots (_request_01 _request_02 ))

(defmethod demo_comm_pkg::Server_01Request
  (:init
   (&key
    ((:request_01 __request_01) 0)
    ((:request_02 __request_02) 0)
    )
   (send-super :init)
   (setq _request_01 (round __request_01))
   (setq _request_02 (round __request_02))
   self)
  (:request_01
   (&optional __request_01)
   (if __request_01 (setq _request_01 __request_01)) _request_01)
  (:request_02
   (&optional __request_02)
   (if __request_02 (setq _request_02 __request_02)) _request_02)
  (:serialization-length
   ()
   (+
    ;; int32 _request_01
    4
    ;; int32 _request_02
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _request_01
       (write-long _request_01 s)
     ;; int32 _request_02
       (write-long _request_02 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _request_01
     (setq _request_01 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _request_02
     (setq _request_02 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass demo_comm_pkg::Server_01Response
  :super ros::object
  :slots (_response_01 ))

(defmethod demo_comm_pkg::Server_01Response
  (:init
   (&key
    ((:response_01 __response_01) 0)
    )
   (send-super :init)
   (setq _response_01 (round __response_01))
   self)
  (:response_01
   (&optional __response_01)
   (if __response_01 (setq _response_01 __response_01)) _response_01)
  (:serialization-length
   ()
   (+
    ;; int32 _response_01
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _response_01
       (write-long _response_01 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _response_01
     (setq _response_01 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass demo_comm_pkg::Server_01
  :super ros::object
  :slots ())

(setf (get demo_comm_pkg::Server_01 :md5sum-) "097f053be1ce46a72625da291a31fe63")
(setf (get demo_comm_pkg::Server_01 :datatype-) "demo_comm_pkg/Server_01")
(setf (get demo_comm_pkg::Server_01 :request) demo_comm_pkg::Server_01Request)
(setf (get demo_comm_pkg::Server_01 :response) demo_comm_pkg::Server_01Response)

(defmethod demo_comm_pkg::Server_01Request
  (:response () (instance demo_comm_pkg::Server_01Response :init)))

(setf (get demo_comm_pkg::Server_01Request :md5sum-) "097f053be1ce46a72625da291a31fe63")
(setf (get demo_comm_pkg::Server_01Request :datatype-) "demo_comm_pkg/Server_01Request")
(setf (get demo_comm_pkg::Server_01Request :definition-)
      "#####自定义服务的格式
#
# ----------
# 客户端请求发送的数据
# ---  
# 服务器响应发送的数据
#
###################
int32 request_01
int32 request_02
---
#自定义服务器响应传输的数据
int32 response_01
")

(setf (get demo_comm_pkg::Server_01Response :md5sum-) "097f053be1ce46a72625da291a31fe63")
(setf (get demo_comm_pkg::Server_01Response :datatype-) "demo_comm_pkg/Server_01Response")
(setf (get demo_comm_pkg::Server_01Response :definition-)
      "#####自定义服务的格式
#
# ----------
# 客户端请求发送的数据
# ---  
# 服务器响应发送的数据
#
###################
int32 request_01
int32 request_02
---
#自定义服务器响应传输的数据
int32 response_01
")



(provide :demo_comm_pkg/Server_01 "097f053be1ce46a72625da291a31fe63")


