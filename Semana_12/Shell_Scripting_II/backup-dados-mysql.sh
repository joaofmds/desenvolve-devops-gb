#!/bin/bash

cd ~
if [ ! -d backup ]
then
    mkdir backup
fi

mysqldump -u root $1 > ~/backup/$1.sql
if [ $? -eq 0 ]
then
    echo "Backup foi realizado com sucesso"
else
    echo "Houve um problema no backup"
fi