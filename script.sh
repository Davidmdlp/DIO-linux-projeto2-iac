#!/bin/bash

echo "     ----- INICIO -----     "
echo " "

echo "Etapa 1/6 - Baixando atualizações"
apt update -y
echo " "

echo "Etapa 2/6 - Instalando atualizações"
apt upgrade -y
echo " "

echo "Etapa 3/6 - Instalando apache2"
apt install apache2 -y
systemctl enable apache2
echo " "

echo "Etapa 4/6 - Instalando unzip"
apt install unzip -y
echo " "

echo "Etapa 5/6 - Baixando aplicação"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo " "

echo "Etapa 6/6 - Copiando aplicação na pasta do apache"
cp ./linux-site-dio-main/* /var/www/html/ -r
echo " "

echo "Etapa 7/7 - restartando apache2"
systemctl restart apache2
echo " "

echo "     ----- FIM -----     "
