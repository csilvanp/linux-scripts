#!/bin/bash

echo "Creating directories..."
sudo mkdir /{publico,adm,ven,sec}

echo "Creating users groups..."
sudo groupadd GRP_ADM && sudo groupadd GRP_VEN && sudo groupadd GRP_SEC

echo "Creating users..."
sudo useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
sudo useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
sudo useradd joao -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

sudo useradd debora -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
sudo useradd sebastiana -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
sudo useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

sudo useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
sudo useradd amanda -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
sudo useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Specifying directories permissions..."
sudo chown root:GRP_ADM /adm
sudo chown root:GRP_VEN /ven
sudo chown root:GRP_SEC /sec

sudo chmod 770 /{adm,ven,sec} && sudo chmod 777 /publico

echo "Script finished."
