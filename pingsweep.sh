#!/bin/bash

if [$1 == ""]
then
        echo "Modo de uso: $0 192.168.0"
else

echo "Esse script realiza verifica quais IPs respondem ao ping num /24"
echo "Os seguintes IPs estao respondendo esta requisicao:"
for ip in {1..254};
do
        ping -c 1 -w 1 $1.$ip | grep "64 bytes" | cut -d : -f1;
done
fi
