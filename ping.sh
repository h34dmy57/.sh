#!/bin/bash

echo "Esse script realiza um ping no IP desejado. \n Modo de uso: 192.168.0.1"
echo "Digite o IP:"
read ip
echo "Realizando ping no IP:" $ip
ping $ip
