import rospy

from std_msgs.msg  import String


if __name__ == '__main__':
    # Initialize the node and create a handle to it
    rospy.init_node('demo_pub')
    # Create a publisher, publish messages at 10Hz
    pub = rospy.Publisher('Chatter', String, queue_size=10)
    # Create a rate object to control the loop
    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        #键盘输入信息
        msg = input("Enter a message: ")
        pub.publish(msg)
        rate.sleep()