import rospy

from demo_comm_pkg.msg import Example

def doMsgs(msg):
    rospy.loginfo("ROSpy 自定义MSG通信通信实现：Example: NAME :%s , AGE: %d ,HEIGHT : %f",msg.name,msg.age,msg.height )   

if __name__ == '__main__':
    rospy.init_node('demo_sub_msg')
    pub = rospy.Subscriber("Example", Example, doMsgs, queue_size=10)

    #回调函数
    rospy.spin()