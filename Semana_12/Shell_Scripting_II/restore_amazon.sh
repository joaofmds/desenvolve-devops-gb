#!/bin/bash

CAMINHO_RESTORE ~/restore_mutillidae_amazon
aws s3 sync s3://curso-shell-script/$(date +%F) $CAMINHO_RESTORE

cd $CAMINHO_RESTORE

if [ -f $1.sql ]
then
    mysql -u root mutillidae < $1.sql
    if [ $? -eq 0 ]
    then
        echo "O restore foi realziado com sucesso"
    fi
else    
    echo "Arquivo procurado não existe no diretório"
fi