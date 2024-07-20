import rospy

from demo_comm_pkg.msg import Example

def doMsgs(msg):
    rospy.loginfo("I heard: %s", msg.data)

if __name__ == '__main__':
    rospy.init_node('demo_pub_msg')
    pub = rospy.Subscriber("Example", Example, doMsgs, queue_size=10)
    #回调函数
    rospy.spin()