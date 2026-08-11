#!/bin/bash

# DESAFIO 1: Liste as interfaces de rede com ip addr
# Salve em respostas/desafio01.txt

mkdir -p respostas
ip addr > respostas/desafio01.txt 2>&1
