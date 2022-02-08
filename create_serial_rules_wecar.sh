#!/bin/bash

echo "remap the device serial port(ttyUSBX)"
echo "rplidar usb connection as /dev/rplidar , check it using the command : ls -l /dev|grep ttyUSB"
echo "start copy agv.rules to  /etc/udev/rules.d/"
sudo cp ./wecar_serial.rules  /etc/udev/rules.d
echo " "
echo "Restarting udev"
echo ""
sudo service udev reload
sudo service udev restart
echo "finish "
