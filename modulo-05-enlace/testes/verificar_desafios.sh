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
echo "  VERIFICAÇÃO - CAMADA DE ENLACE"
echo "=============================================="

[ ! -d "$PASTA_RESPOSTAS" ] && echo -e "${VERMELHO}❌ Pasta respostas não encontrada${NC}" && exit 1

# Desafio 1
echo ""
echo "📌 Desafio 1: ip link"
if [ -f "$PASTA_RESPOSTAS/desafio01.txt" ]; then
    if grep -q "link/ether\|mtu\|state\|lo:\|eth\|ens" "$PASTA_RESPOSTAS/desafio01.txt"; then
        echo -e "${VERDE}✅ Desafio 1 ok${NC}"; PONTUACAO=$((PONTUACAO+1))
    else
        echo -e "${AMARELO}⚠️  Conteúdo não reconhecido como ip link${NC}"; ERROS+=("Desafio 1: conteúdo incompleto")
    fi
else
    echo -e "${VERMELHO}❌ Arquivo não encontrado${NC}"; ERROS+=("Desafio 1: arquivo não gerado")
fi

# Desafio 2
echo ""
echo "📌 Desafio 2: tabela ARP"
if [ -f "$PASTA_RESPOSTAS/desafio02.txt" ]; then
    if grep -qi "at\|ether\|([0-9]{1,3}\.){3}[0-9]{1,3}\|no entry" "$PASTA_RESPOSTAS/desafio02.txt"; then
        echo -e "${VERDE}✅ Desafio 2 ok${NC}"; PONTUACAO=$((PONTUACAO+1))
    else
        echo -e "${AMARELO}⚠️  Tabela ARP não identificada${NC}"; ERROS+=("Desafio 2: conteúdo incompleto")
    fi
else
    echo -e "${VERMELHO}❌ Arquivo não encontrado${NC}"; ERROS+=("Desafio 2: arquivo não gerado")
fi

# Desafio 3
echo ""
echo "📌 Desafio 3: ifconfig"
if [ -f "$PASTA_RESPOSTAS/desafio03.txt" ]; then
    if grep -qi "flags\|inet\|ether\|RX packets\|TX packets" "$PASTA_RESPOSTAS/desafio03.txt"; then
        echo -e "${VERDE}✅ Desafio 3 ok${NC}"; PONTUACAO=$((PONTUACAO+1))
    else
        echo -e "${AMARELO}⚠️  Conteúdo não reconhecido como ifconfig${NC}"; ERROS+=("Desafio 3: conteúdo incompleto")
    fi
else
    echo -e "${VERMELHO}❌ Arquivo não encontrado${NC}"; ERROS+=("Desafio 3: arquivo não gerado")
fi

# Desafio 4
echo ""
echo "📌 Desafio 4: endereços MAC"
if [ -f "$PASTA_RESPOSTAS/desafio04.txt" ]; then
    if grep -qE "([0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2}" "$PASTA_RESPOSTAS/desafio04.txt"; then
        echo -e "${VERDE}✅ Desafio 4 ok${NC}"; PONTUACAO=$((PONTUACAO+1))
    else
        echo -e "${AMARELO}⚠️  Endereço MAC não encontrado${NC}"; ERROS+=("Desafio 4: conteúdo incompleto")
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
