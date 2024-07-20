import rospy
from std_msgs.msg import String

def doMsgs(msg):
    rospy.loginfo("I heard: %s", msg.data)

if __name__ == '__main__':
    rospy.init_node('demo_sub')
    pub = rospy.Subscriber("Chatter", String, doMsgs, queue_size=10)
    #回调函数
    rospy.spin()