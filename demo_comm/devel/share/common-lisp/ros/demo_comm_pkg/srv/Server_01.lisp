; Auto-generated. Do not edit!


(cl:in-package demo_comm_pkg-srv)


;//! \htmlinclude Server_01-request.msg.html

(cl:defclass <Server_01-request> (roslisp-msg-protocol:ros-message)
  ((request_01
    :reader request_01
    :initarg :request_01
    :type cl:integer
    :initform 0)
   (request_02
    :reader request_02
    :initarg :request_02
    :type cl:integer
    :initform 0))
)

(cl:defclass Server_01-request (<Server_01-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Server_01-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Server_01-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name demo_comm_pkg-srv:<Server_01-request> is deprecated: use demo_comm_pkg-srv:Server_01-request instead.")))

(cl:ensure-generic-function 'request_01-val :lambda-list '(m))
(cl:defmethod request_01-val ((m <Server_01-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demo_comm_pkg-srv:request_01-val is deprecated.  Use demo_comm_pkg-srv:request_01 instead.")
  (request_01 m))

(cl:ensure-generic-function 'request_02-val :lambda-list '(m))
(cl:defmethod request_02-val ((m <Server_01-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demo_comm_pkg-srv:request_02-val is deprecated.  Use demo_comm_pkg-srv:request_02 instead.")
  (request_02 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Server_01-request>) ostream)
  "Serializes a message object of type '<Server_01-request>"
  (cl:let* ((signed (cl:slot-value msg 'request_01)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'request_02)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Server_01-request>) istream)
  "Deserializes a message object of type '<Server_01-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request_01) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request_02) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Server_01-request>)))
  "Returns string type for a service object of type '<Server_01-request>"
  "demo_comm_pkg/Server_01Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Server_01-request)))
  "Returns string type for a service object of type 'Server_01-request"
  "demo_comm_pkg/Server_01Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Server_01-request>)))
  "Returns md5sum for a message object of type '<Server_01-request>"
  "097f053be1ce46a72625da291a31fe63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Server_01-request)))
  "Returns md5sum for a message object of type 'Server_01-request"
  "097f053be1ce46a72625da291a31fe63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Server_01-request>)))
  "Returns full string definition for message of type '<Server_01-request>"
  (cl:format cl:nil "#####自定义服务的格式~%#~%# ----------~%# 客户端请求发送的数据~%# ---  ~%# 服务器响应发送的数据~%#~%###################~%int32 request_01~%int32 request_02~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Server_01-request)))
  "Returns full string definition for message of type 'Server_01-request"
  (cl:format cl:nil "#####自定义服务的格式~%#~%# ----------~%# 客户端请求发送的数据~%# ---  ~%# 服务器响应发送的数据~%#~%###################~%int32 request_01~%int32 request_02~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Server_01-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Server_01-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Server_01-request
    (cl:cons ':request_01 (request_01 msg))
    (cl:cons ':request_02 (request_02 msg))
))
;//! \htmlinclude Server_01-response.msg.html

(cl:defclass <Server_01-response> (roslisp-msg-protocol:ros-message)
  ((response_01
    :reader response_01
    :initarg :response_01
    :type cl:integer
    :initform 0))
)

(cl:defclass Server_01-response (<Server_01-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Server_01-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Server_01-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name demo_comm_pkg-srv:<Server_01-response> is deprecated: use demo_comm_pkg-srv:Server_01-response instead.")))

(cl:ensure-generic-function 'response_01-val :lambda-list '(m))
(cl:defmethod response_01-val ((m <Server_01-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demo_comm_pkg-srv:response_01-val is deprecated.  Use demo_comm_pkg-srv:response_01 instead.")
  (response_01 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Server_01-response>) ostream)
  "Serializes a message object of type '<Server_01-response>"
  (cl:let* ((signed (cl:slot-value msg 'response_01)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Server_01-response>) istream)
  "Deserializes a message object of type '<Server_01-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response_01) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Server_01-response>)))
  "Returns string type for a service object of type '<Server_01-response>"
  "demo_comm_pkg/Server_01Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Server_01-response)))
  "Returns string type for a service object of type 'Server_01-response"
  "demo_comm_pkg/Server_01Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Server_01-response>)))
  "Returns md5sum for a message object of type '<Server_01-response>"
  "097f053be1ce46a72625da291a31fe63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Server_01-response)))
  "Returns md5sum for a message object of type 'Server_01-response"
  "097f053be1ce46a72625da291a31fe63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Server_01-response>)))
  "Returns full string definition for message of type '<Server_01-response>"
  (cl:format cl:nil "#自定义服务器响应传输的数据~%int32 response_01~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Server_01-response)))
  "Returns full string definition for message of type 'Server_01-response"
  (cl:format cl:nil "#自定义服务器响应传输的数据~%int32 response_01~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Server_01-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Server_01-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Server_01-response
    (cl:cons ':response_01 (response_01 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Server_01)))
  'Server_01-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Server_01)))
  'Server_01-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Server_01)))
  "Returns string type for a service object of type '<Server_01>"
  "demo_comm_pkg/Server_01")