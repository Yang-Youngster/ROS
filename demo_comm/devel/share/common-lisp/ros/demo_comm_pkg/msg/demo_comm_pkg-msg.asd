
(cl:in-package :asdf)

(defsystem "demo_comm_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Example" :depends-on ("_package_Example"))
    (:file "_package_Example" :depends-on ("_package"))
  ))