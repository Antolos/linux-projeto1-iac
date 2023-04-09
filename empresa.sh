#!/bin/bash

echo "criando pastas"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários do sistema...."

useradd carlos -c "Carlos da ADM" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
usermod carlos -G GRP_ADM
passwd carlos -e

useradd maria -c "Maria da ADM" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
usermod maria -G GRP_ADM
passwd maria -e

useradd joao -c "João da ADM" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
usermod joao -G GRP_ADM
passwd joao -e

useradd debora -c "Debora da VEN" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
usermod debora -G GRP_VEN
passwd debora -e

useradd sebastiana -c "Sebastiana da VEN" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
usermod sebastiana -G GRP_VEN
passwd sebastiana -e

useradd roberto -c "Roberto da VEN" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
usermod roberto -G GRP_VEN
passwd roberto -e

useradd josefina -c "Josefina da SEC" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
usermod josefina -G GRP_SEC
passwd josefina -e

useradd amanda -c "Amanda da SEC" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
usermod amanda -G GRP_SEC
passwd amanda -e

useradd rogerio -c "Rogerio da SEC" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
usermod rogerio -G GRP_SEC
passwd rogerio -e

echo "Configurando permissões"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado!!"
