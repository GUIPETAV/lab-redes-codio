#!/bin/bash

# DESAFIO 1: Use nslookup para descobrir o IP de github.com
# Salve o resultado em respostas/desafio01.txt

mkdir -p respostas
nslookup github.com > respostas/desafio01.txt 2>&1
