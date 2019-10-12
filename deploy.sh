#!/bin/bash


######################################################################
# you must install sshpass please run "sudo apt-get install sshpass" #
######################################################################


sshpass -p "raspberry" ssh -o StrictHostKeyChecking=no pi@raspberrypi.local rm -r ros;
sshpass -p "raspberry" scp -o StrictHostKeyChecking=no -r ros pi@raspberrypi.local:
sshpass -p "raspberry" ssh -o StrictHostKeyChecking=no pi@raspberrypi.local rm -r ros/devel; rm -r ros/build; rm ros/src/CMakeLists.txt; catkin_make -C ros;source ros/devel/setup.bash
