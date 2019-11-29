#!/bin/bash

#11/17/19

#WendellReid


#project 13 Quest 1
#dfg equal default run level

dfg=`cat /etc/grub.conf | grep default=0 | awk -F"=" '{print $2}'`

if [ $dfg == 0 ]
then

echo "The default is already set to zero silly"

else

echo "Something is not right, I need to change the default back to zero.  One moment please..."

sleep 2

sed -i '10s/.*/default=0/' /etc/grub.conf

echo "Ok, i fixed it.  You may want to protect your server to prevent this from happening again."

fi















































