; Auto-generated. Do not edit!


(cl:in-package kr_mav_manager-srv)


;//! \htmlinclude Circle-request.msg.html

(cl:defclass <Circle-request> (roslisp-msg-protocol:ros-message)
  ((Ax
    :reader Ax
    :initarg :Ax
    :type cl:float
    :initform 0.0)
   (Ay
    :reader Ay
    :initarg :Ay
    :type cl:float
    :initform 0.0)
   (T
    :reader T
    :initarg :T
    :type cl:float
    :initform 0.0)
   (duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0))
)

(cl:defclass Circle-request (<Circle-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Circle-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Circle-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kr_mav_manager-srv:<Circle-request> is deprecated: use kr_mav_manager-srv:Circle-request instead.")))

(cl:ensure-generic-function 'Ax-val :lambda-list '(m))
(cl:defmethod Ax-val ((m <Circle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_manager-srv:Ax-val is deprecated.  Use kr_mav_manager-srv:Ax instead.")
  (Ax m))

(cl:ensure-generic-function 'Ay-val :lambda-list '(m))
(cl:defmethod Ay-val ((m <Circle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_manager-srv:Ay-val is deprecated.  Use kr_mav_manager-srv:Ay instead.")
  (Ay m))

(cl:ensure-generic-function 'T-val :lambda-list '(m))
(cl:defmethod T-val ((m <Circle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_manager-srv:T-val is deprecated.  Use kr_mav_manager-srv:T instead.")
  (T m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <Circle-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_manager-srv:duration-val is deprecated.  Use kr_mav_manager-srv:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Circle-request>) ostream)
  "Serializes a message object of type '<Circle-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Ax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Ay))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'T))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Circle-request>) istream)
  "Deserializes a message object of type '<Circle-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Ax) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Ay) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'T) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Circle-request>)))
  "Returns string type for a service object of type '<Circle-request>"
  "kr_mav_manager/CircleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Circle-request)))
  "Returns string type for a service object of type 'Circle-request"
  "kr_mav_manager/CircleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Circle-request>)))
  "Returns md5sum for a message object of type '<Circle-request>"
  "93ae81220b03651225998c84f626ff19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Circle-request)))
  "Returns md5sum for a message object of type 'Circle-request"
  "93ae81220b03651225998c84f626ff19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Circle-request>)))
  "Returns full string definition for message of type '<Circle-request>"
  (cl:format cl:nil "float32 Ax~%float32 Ay~%float32 T~%float32 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Circle-request)))
  "Returns full string definition for message of type 'Circle-request"
  (cl:format cl:nil "float32 Ax~%float32 Ay~%float32 T~%float32 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Circle-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Circle-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Circle-request
    (cl:cons ':Ax (Ax msg))
    (cl:cons ':Ay (Ay msg))
    (cl:cons ':T (T msg))
    (cl:cons ':duration (duration msg))
))
;//! \htmlinclude Circle-response.msg.html

(cl:defclass <Circle-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Circle-response (<Circle-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Circle-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Circle-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kr_mav_manager-srv:<Circle-response> is deprecated: use kr_mav_manager-srv:Circle-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Circle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_manager-srv:success-val is deprecated.  Use kr_mav_manager-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Circle-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_manager-srv:message-val is deprecated.  Use kr_mav_manager-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Circle-response>) ostream)
  "Serializes a message object of type '<Circle-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Circle-response>) istream)
  "Deserializes a message object of type '<Circle-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Circle-response>)))
  "Returns string type for a service object of type '<Circle-response>"
  "kr_mav_manager/CircleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Circle-response)))
  "Returns string type for a service object of type 'Circle-response"
  "kr_mav_manager/CircleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Circle-response>)))
  "Returns md5sum for a message object of type '<Circle-response>"
  "93ae81220b03651225998c84f626ff19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Circle-response)))
  "Returns md5sum for a message object of type 'Circle-response"
  "93ae81220b03651225998c84f626ff19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Circle-response>)))
  "Returns full string definition for message of type '<Circle-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Circle-response)))
  "Returns full string definition for message of type 'Circle-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Circle-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Circle-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Circle-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Circle)))
  'Circle-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Circle)))
  'Circle-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Circle)))
  "Returns string type for a service object of type '<Circle>"
  "kr_mav_manager/Circle")