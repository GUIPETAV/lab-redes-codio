#!/bin/bash

# DESAFIO 2: Obtenha os cabeçalhos HTTP de https://httpbin.org/get
# Salve em respostas/desafio02.txt

mkdir -p respostas
curl -I https://httpbin.org/get > respostas/desafio02.txt 2>&1
