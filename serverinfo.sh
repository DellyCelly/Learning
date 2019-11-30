#!/bin/bash

#Author: Wendell Reid

#Date 10/19/2019

#Description:  This will prompt users to enter a selection to get information about their computer.



if [ $UID -eq 0 ];then

echo "Hello! You have root access"

else

echo "You do not have the root access!  Go get it and come back!"

exit

fi

echo "Please make a choice from one of the following....."

echo "
1-cpu
2- memory
3- bits
4- OS Version
5- Number of processes running
6- all mount point
7- ip info
8- host name
9- kernel version
10- update the OS"

read -p "enter your selection 1 - 10  " num

sleep 3

if [ $num -eq 1 ]; then
lscpu

elif [ $num -eq 2 ]; then
free -m

elif [ $num -eq 3 ]; then
arch

elif [ $num -eq 4 ]; then
cat /etc/*release

elif [ $num -eq 5 ]; then
ps -ef | wc -l

elif [ $num -eq 6 ]; then
cat /etc/fstab

elif [ $num -eq 7 ]; then
ifconfig

elif [ $num -eq 8 ]; then
cat /etc/host

elif [ $num -eq 9 ]; then
uname -r

elif [ $num -eq 10 ]; then
yum update -y

else

echo "You've made an incorrect choice. Please enter an appropiate selection. Please only enter a value between 1 - 10 "

sleep 2

./project9hw.sh

fi
