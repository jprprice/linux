#! /bin/bash

#SUBINDO APLICAÇÃO WEB
sudo apt update && sudo apt upgrade -y

#INSTALNDO
sudo apt install apache2 -y && sudo apt install unzip -y

#BAIXANDO APLICAÇÃO WEB NO DESTINO ESPECIFICO
wget -P /tmp https://github.com/jprprice/dioaplica-oweb/archive/refs/heads/main.zip

#ABRINDO A PASTA TEMPORARIA
cd /tmp

#DESCOMPACTANDO
unzip main.zip

#COPIANDO ARQUIVOS PARA O APACHE2
cp dioaplica-oweb-main/* /var/www/html

echo -e "\e[00;32;01m --------------------- \e[m"
echo -e "\e[00;33;01m   TESTE A APLICAÇÃO  \e[m"
echo -e "\e[00;32;01m --------------------- \e[m"
