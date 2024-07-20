import rospy
from demo_comm_pkg.msg import Example


if __name__ == '__main__':
    # Initialize the node and create a handle to it
    rospy.init_node('demo_pub_msg')
    # Create a publisher, publish messages at 10Hz
    pub = rospy.Publisher('Example', Example, queue_size=10)
    # Create a rate object to control the loop
    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        #键盘输入信息
        msg=Example()
        msg.name=input("请输入你的名字：")
        msg.age=int(input("请输入你的年龄："))
        msg.height=float(input("请输入你的性别："))
        
        pub.publish(msg)
        rate.sleep()