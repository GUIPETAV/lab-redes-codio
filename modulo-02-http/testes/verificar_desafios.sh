#!/bin/bash

PASTA_RESPOSTAS="respostas"
ERROS=()
PONTUACAO=0
TOTAL=4

VERDE='\033[0;32m'
VERMELHO='\033[0;31m'
AMARELO='\033[1;33m'
NC='\033[0m'

echo "=============================================="
echo "  VERIFICAÇÃO - HTTP E CAMADA DE APLICAÇÃO"
echo "=============================================="

[ ! -d "$PASTA_RESPOSTAS" ] && echo -e "${VERMELHO}❌ Pasta respostas não encontrada${NC}" && exit 1

# Desafio 1
echo ""
echo "📌 Desafio 1: código de status"
if [ -f "$PASTA_RESPOSTAS/desafio01.txt" ]; then
    if grep -q "404" "$PASTA_RESPOSTAS/desafio01.txt"; then
        echo -e "${VERDE}✅ Desafio 1 ok${NC}"; PONTUACAO=$((PONTUACAO+1))
    else
        echo -e "${AMARELO}⚠️  Código 404 não encontrado${NC}"; ERROS+=("Desafio 1: código 404 não encontrado")
    fi
else
    echo -e "${VERMELHO}❌ Arquivo não encontrado${NC}"; ERROS+=("Desafio 1: arquivo não gerado")
fi

# Desafio 2
echo ""
echo "📌 Desafio 2: cabeçalhos HTTP"
if [ -f "$PASTA_RESPOSTAS/desafio02.txt" ]; then
    if grep -qi "HTTP/" "$PASTA_RESPOSTAS/desafio02.txt" && grep -qi "date:\|server:\|content-type:" "$PASTA_RESPOSTAS/desafio02.txt"; then
        echo -e "${VERDE}✅ Desafio 2 ok${NC}"; PONTUACAO=$((PONTUACAO+1))
    else
        echo -e "${AMARELO}⚠️  Cabeçalhos incompletos${NC}"; ERROS+=("Desafio 2: cabeçalhos incompletos")
    fi
else
    echo -e "${VERMELHO}❌ Arquivo não encontrado${NC}"; ERROS+=("Desafio 2: arquivo não gerado")
fi

# Desafio 3
echo ""
echo "📌 Desafio 3: download com wget"
if [ -f "$PASTA_RESPOSTAS/desafio03.json" ]; then
    if grep -q "slideshow\|title\|author" "$PASTA_RESPOSTAS/desafio03.json"; then
        echo -e "${VERDE}✅ Desafio 3 ok${NC}"; PONTUACAO=$((PONTUACAO+1))
    else
        echo -e "${AMARELO}⚠️  Conteúdo JSON não reconhecido${NC}"; ERROS+=("Desafio 3: JSON inválido")
    fi
else
    echo -e "${VERMELHO}❌ Arquivo não encontrado${NC}"; ERROS+=("Desafio 3: arquivo não gerado")
fi

# Desafio 4
echo ""
echo "📌 Desafio 4: POST JSON"
if [ -f "$PASTA_RESPOSTAS/desafio04.json" ]; then
    if grep -q "aluno" "$PASTA_RESPOSTAS/desafio04.json" && grep -q "redes" "$PASTA_RESPOSTAS/desafio04.json"; then
        echo -e "${VERDE}✅ Desafio 4 ok${NC}"; PONTUACAO=$((PONTUACAO+1))
    else
        echo -e "${AMARELO}⚠️  Dados enviados não encontrados na resposta${NC}"; ERROS+=("Desafio 4: dados não refletidos")
    fi
else
    echo -e "${VERMELHO}❌ Arquivo não encontrado${NC}"; ERROS+=("Desafio 4: arquivo não gerado")
fi

echo ""
echo "=============================================="
if [ "$PONTUACAO" -eq "$TOTAL" ]; then
    echo -e "${VERDE}✅ TODOS OS DESAFIOS FORAM CONCLUÍDOS${NC}"
    echo "Pontuação: $PONTUACAO/$TOTAL"
    exit 0
else
    echo -e "${VERMELHO}❌ ALGUNS DESAFIOS PRECISAM SER REVISTOS${NC}"
    echo "Pontuação: $PONTUACAO/$TOTAL"
    for erro in "${ERROS[@]}"; do echo "  - $erro"; done
    exit 1
fi
