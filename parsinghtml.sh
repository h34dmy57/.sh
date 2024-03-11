#!/bin/bash

if [ $1 == " " ]
then
        echo "HTML PARSING"
        echo "Modo de uso: $0 google.com"
else

url=$1
output_file=index.html
wget -O $output_file $url > /dev/null 2>&1

if [ $? -eq 0 ];
then
        echo "Vefificando subdomains..."
        grep href index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | grep -v "<l" > list
        for domain in $(cat list);
        do
                host $domain | grep "has address";
        done
else
        echo "Nao foi possivel verificar os subdomains"
fi
fi
