#!/bin/bash

# DESAFIO 2: Use dig para descobrir:
# 1. IP de ufpb.br
# 2. Registros MX de ufpb.br
# Salve tudo em respostas/desafio02.txt

mkdir -p respostas
{
  echo "## IP de ufpb.br"
  dig +short ufpb.br
  echo
  echo "## Registros MX de ufpb.br"
  dig MX ufpb.br
} > respostas/desafio02.txt 2>&1
