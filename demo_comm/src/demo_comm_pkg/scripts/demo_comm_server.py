import rospy
from demo_comm_pkg.srv import Server_01,Server_01Request,Server_01Response

def doSrv(req):
    sum=req.request_01+req.request_02
    rospy.loginfo("客户端提交的数据：pram_1: %d  pram_2: %d  最终的逻辑运算：%d",req.request_01,req.request_02,sum)
    resp=Server_01Response(sum)
    return resp
    
if __name__ == '__main__':
    rospy.init_node('demo_comm_server')
    s = rospy.Service('Initserver', Server_01, doSrv)
    print("Ready to serve!")
    rospy.spin()