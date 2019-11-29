#!bin/bash


##Function usage is to make sure that two argurments are used prior to going any further in the script.

usage() {

echo -e "This script needs two arguments, the port number and the protocol\n"
echo -e "Example: $0 <port> <protocol>\n" $0 80 tcp \n"
exit 1
}

## Check number of arguments
if [[ $# -ne 2 ]]
then
usage
fi


case $1 in

''|*[!0-9]*)
echo -e "\n Invalid port number \n"
[1-65535])5713;;
*)sleep 3
 echo "

esac


case $2 in

tcp) tcp
;;
udp) udp
;;
*) echo -e "\n Invalid protocol type.  Enter either (tcp / udp)  Please decide and rerun the script \n"
sleep 3
exit 3
;;
esac
*) echo "



sleep 2












































