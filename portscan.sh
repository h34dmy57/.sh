#!/bin/bash

if [$1 == ""]
then
        echo "Modo de uso: $0 192.168.0 80"
else
    echo "Verificando se a porta $2 está aberta no $1"
    hping3 -S -p $2 -c 1 $1 2> /dev/null | grep "flags=SA";
fi
