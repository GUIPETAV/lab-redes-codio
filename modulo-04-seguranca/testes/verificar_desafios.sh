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
echo "  VERIFICAÇÃO - SEGURANÇA DE REDES"
echo "=============================================="

[ ! -d "$PASTA_RESPOSTAS" ] && echo -e "${VERMELHO}❌ Pasta respostas não encontrada${NC}" && exit 1

# Desafio 1
echo ""
echo "📌 Desafio 1: netstat"
if [ -f "$PASTA_RESPOSTAS/desafio01.txt" ]; then
    if grep -qi "tcp\|udp\|LISTEN\|Local Address" "$PASTA_RESPOSTAS/desafio01.txt"; then
        echo -e "${VERDE}✅ Desafio 1 ok${NC}"; PONTUACAO=$((PONTUACAO+1))
    else
        echo -e "${AMARELO}⚠️  Conteúdo não reconhecido como netstat${NC}"; ERROS+=("Desafio 1: conteúdo incompleto")
    fi
else
    echo -e "${VERMELHO}❌ Arquivo não encontrado${NC}"; ERROS+=("Desafio 1: arquivo não gerado")
fi

# Desafio 2
echo ""
echo "📌 Desafio 2: ss"
if [ -f "$PASTA_RESPOSTAS/desafio02.txt" ]; then
    if grep -qi "State\|Local Address:Port\|Peer Address:Port\|LISTEN" "$PASTA_RESPOSTAS/desafio02.txt"; then
        echo -e "${VERDE}✅ Desafio 2 ok${NC}"; PONTUACAO=$((PONTUACAO+1))
    else
        echo -e "${AMARELO}⚠️  Conteúdo não reconhecido como ss${NC}"; ERROS+=("Desafio 2: conteúdo incompleto")
    fi
else
    echo -e "${VERMELHO}❌ Arquivo não encontrado${NC}"; ERROS+=("Desafio 2: arquivo não gerado")
fi

# Desafio 3
echo ""
echo "📌 Desafio 3: nmap"
if [ -f "$PASTA_RESPOSTAS/desafio03.txt" ]; then
    if grep -qi "nmap\|PORT\|STATE\|SERVICE" "$PASTA_RESPOSTAS/desafio03.txt"; then
        echo -e "${VERDE}✅ Desafio 3 ok${NC}"; PONTUACAO=$((PONTUACAO+1))
    else
        echo -e "${AMARELO}⚠️  Conteúdo não reconhecido como nmap${NC}"; ERROS+=("Desafio 3: conteúdo incompleto")
    fi
else
    echo -e "${VERMELHO}❌ Arquivo não encontrado${NC}"; ERROS+=("Desafio 3: arquivo não gerado")
fi

# Desafio 4
echo ""
echo "📌 Desafio 4: verificação SSH"
if [ -f "$PASTA_RESPOSTAS/desafio04.txt" ]; then
    if grep -qi "sshd\|ssh" "$PASTA_RESPOSTAS/desafio04.txt"; then
        echo -e "${VERDE}✅ Desafio 4 ok${NC}"; PONTUACAO=$((PONTUACAO+1))
    else
        echo -e "${AMARELO}⚠️  Serviço SSH não identificado${NC}"; ERROS+=("Desafio 4: conteúdo incompleto")
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
