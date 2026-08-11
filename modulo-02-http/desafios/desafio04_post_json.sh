#!/bin/bash

# DESAFIO 4: Envie um POST JSON para https://httpbin.org/post
# Salve a resposta em respostas/desafio04.json

mkdir -p respostas
curl -sS -X POST -H "Content-Type: application/json" -d '{"nome":"aluno","curso":"redes"}' https://httpbin.org/post > respostas/desafio04.json 2>&1
