; Auto-generated. Do not edit!


(cl:in-package kr_mav_manager-srv)


;//! \htmlinclude Lissajous-request.msg.html

(cl:defclass <Lissajous-request> (roslisp-msg-protocol:ros-message)
  ((x_amp
    :reader x_amp
    :initarg :x_amp
    :type cl:float
    :initform 0.0)
   (y_amp
    :reader y_amp
    :initarg :y_amp
    :type cl:float
    :initform 0.0)
   (z_amp
    :reader z_amp
    :initarg :z_amp
    :type cl:float
    :initform 0.0)
   (yaw_amp
    :reader yaw_amp
    :initarg :yaw_amp
    :type cl:float
    :initform 0.0)
   (x_num_periods
    :reader x_num_periods
    :initarg :x_num_periods
    :type cl:float
    :initform 0.0)
   (y_num_periods
    :reader y_num_periods
    :initarg :y_num_periods
    :type cl:float
    :initform 0.0)
   (z_num_periods
    :reader z_num_periods
    :initarg :z_num_periods
    :type cl:float
    :initform 0.0)
   (yaw_num_periods
    :reader yaw_num_periods
    :initarg :yaw_num_periods
    :type cl:float
    :initform 0.0)
   (period
    :reader period
    :initarg :period
    :type cl:float
    :initform 0.0)
   (num_cycles
    :reader num_cycles
    :initarg :num_cycles
    :type cl:float
    :initform 0.0)
   (ramp_time
    :reader ramp_time
    :initarg :ramp_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass Lissajous-request (<Lissajous-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Lissajous-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Lissajous-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kr_mav_manager-srv:<Lissajous-request> is deprecated: use kr_mav_manager-srv:Lissajous-request instead.")))

(cl:ensure-generic-function 'x_amp-val :lambda-list '(m))
(cl:defmethod x_amp-val ((m <Lissajous-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_manager-srv:x_amp-val is deprecated.  Use kr_mav_manager-srv:x_amp instead.")
  (x_amp m))

(cl:ensure-generic-function 'y_amp-val :lambda-list '(m))
(cl:defmethod y_amp-val ((m <Lissajous-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_manager-srv:y_amp-val is deprecated.  Use kr_mav_manager-srv:y_amp instead.")
  (y_amp m))

(cl:ensure-generic-function 'z_amp-val :lambda-list '(m))
(cl:defmethod z_amp-val ((m <Lissajous-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_manager-srv:z_amp-val is deprecated.  Use kr_mav_manager-srv:z_amp instead.")
  (z_amp m))

(cl:ensure-generic-function 'yaw_amp-val :lambda-list '(m))
(cl:defmethod yaw_amp-val ((m <Lissajous-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_manager-srv:yaw_amp-val is deprecated.  Use kr_mav_manager-srv:yaw_amp instead.")
  (yaw_amp m))

(cl:ensure-generic-function 'x_num_periods-val :lambda-list '(m))
(cl:defmethod x_num_periods-val ((m <Lissajous-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_manager-srv:x_num_periods-val is deprecated.  Use kr_mav_manager-srv:x_num_periods instead.")
  (x_num_periods m))

(cl:ensure-generic-function 'y_num_periods-val :lambda-list '(m))
(cl:defmethod y_num_periods-val ((m <Lissajous-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_manager-srv:y_num_periods-val is deprecated.  Use kr_mav_manager-srv:y_num_periods instead.")
  (y_num_periods m))

(cl:ensure-generic-function 'z_num_periods-val :lambda-list '(m))
(cl:defmethod z_num_periods-val ((m <Lissajous-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_manager-srv:z_num_periods-val is deprecated.  Use kr_mav_manager-srv:z_num_periods instead.")
  (z_num_periods m))

(cl:ensure-generic-function 'yaw_num_periods-val :lambda-list '(m))
(cl:defmethod yaw_num_periods-val ((m <Lissajous-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_manager-srv:yaw_num_periods-val is deprecated.  Use kr_mav_manager-srv:yaw_num_periods instead.")
  (yaw_num_periods m))

(cl:ensure-generic-function 'period-val :lambda-list '(m))
(cl:defmethod period-val ((m <Lissajous-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_manager-srv:period-val is deprecated.  Use kr_mav_manager-srv:period instead.")
  (period m))

(cl:ensure-generic-function 'num_cycles-val :lambda-list '(m))
(cl:defmethod num_cycles-val ((m <Lissajous-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_manager-srv:num_cycles-val is deprecated.  Use kr_mav_manager-srv:num_cycles instead.")
  (num_cycles m))

(cl:ensure-generic-function 'ramp_time-val :lambda-list '(m))
(cl:defmethod ramp_time-val ((m <Lissajous-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_manager-srv:ramp_time-val is deprecated.  Use kr_mav_manager-srv:ramp_time instead.")
  (ramp_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Lissajous-request>) ostream)
  "Serializes a message object of type '<Lissajous-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_amp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_amp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z_amp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_amp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_num_periods))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y_num_periods))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z_num_periods))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_num_periods))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'period))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'num_cycles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ramp_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Lissajous-request>) istream)
  "Deserializes a message object of type '<Lissajous-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_amp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_amp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_amp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_amp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_num_periods) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_num_periods) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_num_periods) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_num_periods) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'period) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'num_cycles) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ramp_time) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Lissajous-request>)))
  "Returns string type for a service object of type '<Lissajous-request>"
  "kr_mav_manager/LissajousRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Lissajous-request)))
  "Returns string type for a service object of type 'Lissajous-request"
  "kr_mav_manager/LissajousRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Lissajous-request>)))
  "Returns md5sum for a message object of type '<Lissajous-request>"
  "f81be309608c349bc23d64ad353b7acd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Lissajous-request)))
  "Returns md5sum for a message object of type 'Lissajous-request"
  "f81be309608c349bc23d64ad353b7acd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Lissajous-request>)))
  "Returns full string definition for message of type '<Lissajous-request>"
  (cl:format cl:nil "float32 x_amp~%float32 y_amp~%float32 z_amp~%float32 yaw_amp~%float32 x_num_periods~%float32 y_num_periods~%float32 z_num_periods~%float32 yaw_num_periods~%float32 period~%float32 num_cycles~%float32 ramp_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Lissajous-request)))
  "Returns full string definition for message of type 'Lissajous-request"
  (cl:format cl:nil "float32 x_amp~%float32 y_amp~%float32 z_amp~%float32 yaw_amp~%float32 x_num_periods~%float32 y_num_periods~%float32 z_num_periods~%float32 yaw_num_periods~%float32 period~%float32 num_cycles~%float32 ramp_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Lissajous-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Lissajous-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Lissajous-request
    (cl:cons ':x_amp (x_amp msg))
    (cl:cons ':y_amp (y_amp msg))
    (cl:cons ':z_amp (z_amp msg))
    (cl:cons ':yaw_amp (yaw_amp msg))
    (cl:cons ':x_num_periods (x_num_periods msg))
    (cl:cons ':y_num_periods (y_num_periods msg))
    (cl:cons ':z_num_periods (z_num_periods msg))
    (cl:cons ':yaw_num_periods (yaw_num_periods msg))
    (cl:cons ':period (period msg))
    (cl:cons ':num_cycles (num_cycles msg))
    (cl:cons ':ramp_time (ramp_time msg))
))
;//! \htmlinclude Lissajous-response.msg.html

(cl:defclass <Lissajous-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Lissajous-response (<Lissajous-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Lissajous-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Lissajous-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kr_mav_manager-srv:<Lissajous-response> is deprecated: use kr_mav_manager-srv:Lissajous-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Lissajous-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_manager-srv:success-val is deprecated.  Use kr_mav_manager-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Lissajous-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kr_mav_manager-srv:message-val is deprecated.  Use kr_mav_manager-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Lissajous-response>) ostream)
  "Serializes a message object of type '<Lissajous-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Lissajous-response>) istream)
  "Deserializes a message object of type '<Lissajous-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Lissajous-response>)))
  "Returns string type for a service object of type '<Lissajous-response>"
  "kr_mav_manager/LissajousResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Lissajous-response)))
  "Returns string type for a service object of type 'Lissajous-response"
  "kr_mav_manager/LissajousResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Lissajous-response>)))
  "Returns md5sum for a message object of type '<Lissajous-response>"
  "f81be309608c349bc23d64ad353b7acd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Lissajous-response)))
  "Returns md5sum for a message object of type 'Lissajous-response"
  "f81be309608c349bc23d64ad353b7acd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Lissajous-response>)))
  "Returns full string definition for message of type '<Lissajous-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Lissajous-response)))
  "Returns full string definition for message of type 'Lissajous-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Lissajous-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Lissajous-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Lissajous-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Lissajous)))
  'Lissajous-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Lissajous)))
  'Lissajous-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Lissajous)))
  "Returns string type for a service object of type '<Lissajous>"
  "kr_mav_manager/Lissajous")