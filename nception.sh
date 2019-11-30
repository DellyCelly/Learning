#!/bin/bash

echo -e "\nWelcome to the script creator program designed by Wendell Reid\n"

sleep 1

echo "Lets make a script.  What is the name of the file you would like to create? "

read fil

sleep 2

echo "Awesome, I will be creating $fil right after I get the file permissions from you.."

sleep 2

echo -e "\nWhat permissions would you like to provide $fil? Note, you must choose a digit for the user, the group and the other users\n"

*******************************************
*******************************************
**	Please select your permissions	 **
**					 **	
**	7 -Read, Write, Execute		 **	
**	6 -Read, Write			 **
**	5 -Read, Execute		 **
**	4 -Read				 **
**	3 -Execute, and Write		 **
**	2 -Write			 **
**	1- Execute			 **
**				  	 **
*******************************************
*******************************************
"
and () {
echo -e "n\Which text editor would you like to use?\n  vi/vim/ or none" read ans
case {$and} in;

vi) vi $fil
;;
vim) vim $fil
;;
none) echo "No worries,  you dont have to.  You may enter the file at your own discretion.
;;
*) echo "Please only chose from vi , vim, or none if you changed your mind.  

esac
}  

sleep 3

echo " Please enter the 3 values from above to set the permission of the file " 

read -p a
read -p b
read -p c

sleep 3

chmod $a$b$c $fil

echo -e "\nWould you like to enter the file now and start creating the script\n?" read script

if [ $script -eq y ]
then
$and
else
exit 0
fi



