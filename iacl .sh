#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /invest
mkdir /study
mkdir /lazer
mkdir /work

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_INVEST
groupadd GRP_STUDY
groupadd GRP_LAZER
groupadd GRP_WORK

echo "Criando usuários..."

useradd jhonny -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM GRP_INVEST GRP_STUDY GRP_LAZER GRP_WORK
useradd erica -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM GRP_INVEST GRP_STUDY GRP_LAZER GRP_WORK

useradd jonny -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_INVEST GRP_WORK
useradd jhonny_c -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_INVEST GRP_STUDY GRP_WORK

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_INVEST /invest
chown root:GRP_STUDY /study
chown root:GRP_LAZER /lazer
chown root:GRP_WORK /work

chmod 770 /adm
chmod 770 /invest
chmod 770 /study
chmod 770 /lazer
chmod 770 /work
chmod 777 /publico

echo "Fim....."
