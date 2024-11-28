
(cl:in-package :asdf)

(defsystem "kr_tracker_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Transition" :depends-on ("_package_Transition"))
    (:file "_package_Transition" :depends-on ("_package"))
  ))