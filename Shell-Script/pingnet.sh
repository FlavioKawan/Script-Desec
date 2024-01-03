#!/bin/bash
if [ "$1" == "" ]
then
	echo "PING SWEEP"
	echo "Modo de uso: $0 Rede"
	echo "Exemplo: $0 192.168.0"
else
for host in {1..254};
do
	ping -c 1 $1.$host | grep "64 Bytes" | cut -d " " -f 4;
	
done
fi
