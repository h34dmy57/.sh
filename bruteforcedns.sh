#!/bin/bash

if [ $1 == ""] 2> /dev/null
then
        echo "Modo de uso: $0 site.com.br"
        echo "Para usar a ferramenta voce precisa de um arquivo com o nome 'list' com uma lista de possiveis subdomains"
else
        for subdomain in $(cat list.txt);
do
        host $subdomain.$1 | grep -v "NXDOMAIN";
done
fi
