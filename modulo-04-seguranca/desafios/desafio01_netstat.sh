#!/bin/bash

# DESAFIO 1: Liste as portas TCP e UDP em escuta com netstat
# Salve em respostas/desafio01.txt

mkdir -p respostas
netstat -tuln > respostas/desafio01.txt 2>&1
