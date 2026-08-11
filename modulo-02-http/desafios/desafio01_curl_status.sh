#!/bin/bash

# DESAFIO 1: Descubra o código HTTP de https://httpbin.org/status/404
# Salve em respostas/desafio01.txt

mkdir -p respostas
curl -s -o /dev/null -w "%{http_code}\n" https://httpbin.org/status/404 > respostas/desafio01.txt 2>&1
