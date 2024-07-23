## ROS通信机制的基本实现 
#### 1. 话题通信
- 话题通信是ROS中消息传递的基本方式，通过话题通信，可以发送和接收数据。

实现话题通信的步骤：
- 创建话题 ： 创建话题时，需要指定话题名称和消息类型
- 创建发布者 ： 发布者使用节点中的publish方法发布消息 
- 创建订阅者 :  订阅者使用节点中的subscribe方法订阅话题，并指定回调函数
- 发布消息 ：发布消息的形式可以通过自定义MSG类型，也可以使用标准消息类型    
- 接收消息 ：接收消息的回调函数中，可以获取到发布者发送的消息
- 关闭节点

自定义MSG 需要配置文件：

- 创建msg文件，并添加消息内容 -自定义消息体的数据类型
- 在package.xml中添加依赖项  添加  

  <!-- 自定义文件通信结构的方式 -->
  <build_depend>message_generation</build_depend>
  <exec_depend>message_runtime</exec_depend>
- 在CMakeLists.txt添加依赖项  
    find_package(catkin REQUIRED COMPONENTS
    roscpp
    rospy
    **std_msgs
    message_generation**
    )
-    添加消息文件
    add_message_files(
    FILES
    AddTwoInts.msg
    )
-    自定义消息文件生成
    generate_messages(
        DEPENDENCIES
        std_msgs
    )

#### 2. 服务通信