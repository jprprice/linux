#!/bin/bash

#DIRETORIOS
echo "CRIANDO DIRETORIOS"
mkdir /publico /adm /ven /sec

#GRUPOS
echo "CRIANDO GRUPOS"
groupadd grp_amd
groupadd grp_ven
groupadd grp_sec

#USUARIOS
echo "CRIANDO USUARIOS"
useradd carlos -m -s /bin/bash -G GRP_ADM
useradd maria -m -s /bin/bash -G GRP_ADM
useradd joao -m -s /bin/bash -G GRP_ADM

useradd debora -m -s /bin/bash -G GRP_VEN
useradd sebasiana -m -s /bin/bash -G GRP_VEN
useradd roberto -m -s /bin/bash -G GRP_VEN

useradd josefina -m -s /bin/bash -G GRP_SEC
useradd amanda -m -s /bin/bash -G GRP_SEC
useradd rogerio -m -s /bin/bash -G GRP_SEC

#PERMISSÕES
echo "ESPECIFICANDO AS PERMISSÕES DOS DIRETORIOS"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Feito..."
