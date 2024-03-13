#!/bin/bash

if [ $1 == ""]
then
        echo "Modo de uso: $0 site.com.br"
        echo "Para usar a ferramenta voce precisa de um arquivo com o nome 'list.txt' com uma lista de possiveis subdomains"
else
        for palavra in $(cat list.txt);
do
        host $palavra.$1 | grep -v "NXDOMAIN";
done
fi
