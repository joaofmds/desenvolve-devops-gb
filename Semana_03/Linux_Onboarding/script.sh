#!/bin/bash

echo "Navegando no sistema"

pwd  # Imprime o nome do diretório atual
ls  # Lista informações sobre os arquivos
ls-a  # Lista os arquivos ocultos
ls -l  # Lista os arquivos em formato longo
clear  # Limpa o terminal
cd  # Altera o diretório atual
cd .  # Indica o diretório atual 
cd ..  # Altera para o diretório pai
cd -  # Retorna ao diretório anterior
cd ~  # Altera para o diretório do usuário
cd /  # Altera para o diretório home

echo "Arquivos e diretórios"

mkdir  # Cria diretórios
mkdir -p  # nenhum erro se existente, cria diretórios pai conforme necessário
touch  # Cria arquivos
rmdir  # Remove diretórios
rm  # Remove arquivos
rm -r  # Remove diretórios de forma recursiva
rm -f  # Força a remoção de arquivos 
rm -rf  # Força a remoção de arquivos e diretórios de forma recursiva
cp  # Copia arquivos para outro diretório
cp -r  # Copia arquivos para outro diretório de forma recursiva
mv  # Move ou renomeia arquivos e diretórios
history  # Histórico de comandos 

echo "Manipulando arquivos e diretórios"

*  # Caracter coringa que significa "tudo"
?  # Caracter coringa que substitue um caracter
ls *1*
ls arq?? 
ls ???[1-5] 
ls ???[1-5]* 
ls arq[1,5]
ls [A,q]rq[1-5]