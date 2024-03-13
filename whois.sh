#!/bin/bash
if [$1 == ""] 2> /dev/null
then
        echo "Modo de uso $0 192.168.0.1"
else
        whois $1 | grep "inetnum"
fi
