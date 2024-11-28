
(cl:in-package :asdf)

(defsystem "kr_mav_manager-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Circle" :depends-on ("_package_Circle"))
    (:file "_package_Circle" :depends-on ("_package"))
    (:file "CompoundLissajous" :depends-on ("_package_CompoundLissajous"))
    (:file "_package_CompoundLissajous" :depends-on ("_package"))
    (:file "GoalTimed" :depends-on ("_package_GoalTimed"))
    (:file "_package_GoalTimed" :depends-on ("_package"))
    (:file "Lissajous" :depends-on ("_package_Lissajous"))
    (:file "_package_Lissajous" :depends-on ("_package"))
    (:file "Vec4" :depends-on ("_package_Vec4"))
    (:file "_package_Vec4" :depends-on ("_package"))
  ))