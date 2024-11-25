import rospy
from geometry_msgs.msg import Twist

if __name__ == '__main__':
    rospy.init_node('tur_cycle')
    pub = rospy.Publisher('turtle1/cmd_vel', Twist, queue_size=10)
    rate = rospy.Rate(50)
    msg = Twist()
    msg.linear.x = 0.2
    msg.angular.z = 0.3
    while not rospy.is_shutdown():
        pub.publish(msg)
        rate.sleep()
