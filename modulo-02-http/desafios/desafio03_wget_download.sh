#!/bin/bash

# DESAFIO 3: Baixe https://httpbin.org/json para respostas/desafio03.json
# Use wget

mkdir -p respostas
wget -O respostas/desafio03.json https://httpbin.org/json 2>&1
