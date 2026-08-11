#!/bin/bash

# DESAFIO 4: Mostre o conteúdo de /etc/resolv.conf
# Salve em respostas/desafio04.txt

mkdir -p respostas
cat /etc/resolv.conf > respostas/desafio04.txt 2>&1
