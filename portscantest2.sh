#!/bin/bash

if [$1 == ""]
then
        echo "Modo de uso: $0 192.168.0 80"
else
echo "Verificando por dispositivos com a porta $2 aberta na rede $1.0/24."
for ip in {1..254};
do
        hping3 -S -p $2 -c 1 $1.$ip 2> /dev/null | grep "flags=SA";
done
fi
