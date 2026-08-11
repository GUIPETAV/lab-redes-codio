#!/bin/bash

# DESAFIO 4: Verifique se o serviço SSH (sshd) está rodando
# Salve em respostas/desafio04.txt

mkdir -p respostas
ps aux | grep '[s]shd' > respostas/desafio04.txt 2>&1 || echo "sshd não está rodando" > respostas/desafio04.txt
