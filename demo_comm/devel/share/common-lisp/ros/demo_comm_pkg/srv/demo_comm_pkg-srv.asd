
(cl:in-package :asdf)

(defsystem "demo_comm_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Server_01" :depends-on ("_package_Server_01"))
    (:file "_package_Server_01" :depends-on ("_package"))
  ))