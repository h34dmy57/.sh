#!/bin/bash

if [$1 == ""]
then
        echo "Modo de uso: $0 site.com.br"
else
        for server in $(host -t ns $1 | cut -d " " -f4);
do
        host -l -a $1 $server
done
fi
