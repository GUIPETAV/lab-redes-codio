#!/bin/bash

# DESAFIO 3: Veja a rota até google.com com traceroute
# Salve em respostas/desafio03.txt

mkdir -p respostas
traceroute -m 10 -w 2 google.com > respostas/desafio03.txt 2>&1
