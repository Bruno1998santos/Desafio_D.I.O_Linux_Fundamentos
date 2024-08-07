#!/bin/bash

echo "Criando os Diretórios "

mkdir /home/publico 
mkdir /home/adm
mkdir /home/ven
mkdir /home/sec

echo "Finalizando a criação dos Diretórios"

echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Finalizando a criação dos Grupos"


echo "Criando Usuários e vinculando aos Grupos"


useradd -c "Carlos" -s /bin/bash -g GRP_ADM -p $(openssl passwd -1 senha123) -d /home/adm carlos
useradd -c "Maria"  -s /bin/bash -g GRP_ADM -p $(openssl passwd -1 senha123) -d /home/adm maria
useradd -c "João"  -s /bin/bash -g GRP_ADM -p $(openssl passwd -1 senha123) -d /home/adm joao


useradd -c "debora" -s /bin/bash -g GRP_VEN -p $(openssl passwd -1 senha123) -d /home/ven debora
useradd -c "sebastiana" -s /bin/bash -g GRP_VEN -p $(openssl passwd -1 senha123) -d /home/ven sebastiana
useradd -c "roberto" -s /bin/bash -g GRP_VEN -p $(openssl passwd -1 senha123) -d /home/ven roberto


useradd -c "josefina" -s /bin/bash -g GRP_SEC -p $(openssl passwd -1 senha123) -d /home/sec josefina
useradd -c "amanda"  -s /bin/bash -g GRP_SEC -p $(openssl passwd -1 senha123) -d /home/sec amanda
useradd -c "rogerio" -s /bin/bash -g GRP_SEC -p $(openssl passwd -1 senha123) -d /home/sec rogerio

echo "Finalizando a criação dos usuários"

echo "Modificando permissões"

chmod 770 /home/adm
chmod 770 /home/ven
chmod 770 /home/sec
chmod 777 /home/publico

chgrp GRP_ADM /home/adm
chgrp GRP_VEN /home/ven
chgrp GRP_SEC /home/sec

echo "Desafio Finalizado"
