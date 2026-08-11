#!/bin/bash

# DESAFIO 2: Liste as portas TCP e UDP em escuta com ss
# Salve em respostas/desafio02.txt

mkdir -p respostas
ss -tuln > respostas/desafio02.txt 2>&1
