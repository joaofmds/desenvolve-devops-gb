#!/bin/bash

echo "Administrando usuários e grupos"

echo "Apresentação"

echo "Criando usuários com useradd e adduser"
sudo useradd joao2
sudo adduser joao3
cd /home
cd joao3
cat /etc/passwd | grep joao
cat /etc/group | grep joao

echo "Adicionando grupos aos usuários"
cd
groups
groups joao3
su - joao3
sudo groupadd projetos
cat /etc/group
cat /etc/group | grep projetos
sudo usermod -aG projetos joao3
groups joao3
sudo groupadd desenvolvedores
sudo vi /etc/group
sudo userdel joao2
sudo groupdel desenvolvedores
cat /etc/passwd

echo "Por dentro dos permissionamentos"

echo "Entendendo o permissionamento dos arquivos e diretórios"
ls
touch novoteste
ls -l
ls -l /var

echo "Alterando as permissões, donos e grupos"
sudo mkdir /projetos
ls -l /
sudo chmod 770 /projetos
sudo chmod 774 /projetos
sudo usermod -aG projetos joao3
sudo adduser joao4
groups joao4
cd /projetos/
sudo chown joaofmds /projetos
sudo chown joaofmds:projetos /projetos
echo "projeto da NASA" > proj1
cat proj1

echo "Permissionamentos restritivos e especiais"
su - joao3
sudo chmod 660 proj1
sudo chmod o-r proj1
su - joao3
su - joao4
sudo chmod o-r /projetos
touch projeto2
cd ..
sudo chmod g+s /projetos
ls -l /
cd /projetos/
touch projeto3
ls -l

echo "Links simbólicos e suas utilidades"
cd
ln -s /projetos/ projetos
ls -l
pwd
cd projetos
pwd
cd
rm -rf projetos
ls -l /

echo "Gerenciamento de pacotes"

echo "Gerenciamento de pacotes com o apt"
sudo apt install apache2
sudo apt update
sudo apt-get install apache2
apt search apache2
apt search openssh-server
apt show apache2
apt search mysql
sudo apt install mysql-server   

echo "Informações e upgrade dos pacotes instalados"
sudo apt remove apache2
sudo apt autoremove
sudo apt update
sudo apt install apache2
apt list --upgradable
sudo apt upgrade 

echo "Consultando a base instalada com a apt list"
apt list --upgradable
apt list
apt list | grep installed > lista-pacotes.txt
cat lista-pacotes.txt
sudo apt list --installed 

echo "Gerenciamentos de discos"

echo "Instalando e particionando um novo disco"
sudo poweroff
sudo lshw
sudo lshw -c disk
sudo fdisk -l
sudo fdisk -l | grep sd
sudo fdisk -l
sudo fdisk /dev/sdb

echo "Instalando o File System ext4"
sudo fdisk -l
sudo mkfs -t ext4 /dev/sdb1
mount | grep sd
sudo mkfs.ext4 /dev/sdb1
mount

echo "Montando o disco de forma automática"
cd /media
sudo mkdir disk2
sudo mount /dev/sdb1 /media/disk2/
cd disk2/
mount | grep sd
cat /etc/fstab
sudo blkid
ls -l /dev/sdb
sudo /etc/
cd  /etc/
sudo cp fstab fstab.bkp
sudo vi /etc/fstab

echo "Testando a inicialização e o acesso ao dispositivo"
mount
sudo umount /media/disk2
sudo mount -a
cd /media/
ls -l
sudo su
cd disk2/
sudo reboot

echo "Systemd - Gerenciando os serviços"

echo "Gerenciando serviços"
sudo systemctl
sudo systemctl status apache2
sudo systemctl stop apache2
sudo systemctl status apache2
sudo systemctl start apache2
sudo service apache2 stop
sudo service apache2 status
systemctl disable apache2
sudo systemctl disable apache2
sudo systemctl enable apache2

echo "Conclusão"


