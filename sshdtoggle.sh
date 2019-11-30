#!/bin/bash

#Description: This script will allow you to start, restart, or stop the opensshd.
#Date 10/22/2019
#Author: Wendell Reid

echo " This program will start the opensshd-daemon.  Choose from one of the options below. "

888888888888888888888888888888888888
888888888888888888888888888888888888
88				  88
88	1 ====  start		  88
88	2 ==== restart		  88
88	3 ====  stop     	  88
88		 		  88
888888888888888888888888888888888888
888888888888888888888888888888888888" 

echo -n "Enter your choice here:    "

read num

case ${num} in

1) service sshd start
;;
2) serivce sshd restart
;;
3) service sshd stop
;;
*) sleep 2 | echo " Invalid choice. Please choose between 1, 2, or 3 only. " 

esac 
