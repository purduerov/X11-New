#! /usr/bin/python
import rospy
import time
from shared_msgs.msg import controller_msg
rospy.init_node("dumb_controller")
pub = rospy.Publisher("/surface/controller",controller_msg, queue_size = 2)
while(True):
    time.sleep(.1)
    m = controller_msg()

    x = float(input("give and X value:"))
    y = float(input("give and Y value:"))
    z = float(input("give and Z value:"))
    t = float(input("give and Throttle value:"))
    m.x_axis = x
    m.Y_axis = y
    m.Z_axis = z
    m.throttle = t
    pub.publish(m)
    print(m)
    print("-----------published------------")
    print("-----press ctrl-z to exit-------")

