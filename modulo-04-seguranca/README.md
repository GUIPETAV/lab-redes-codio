<<<<<<< HEAD
# 🔒 Módulo 4: Segurança de Redes — Quem está de olho na sua máquina?

Você sabia que qualquer computador conectado à internet pode ter **portas abertas** esperando por conexões? E que um invasor poderia usar essas portas para entrar no sistema?

Neste módulo você vai aprender a enxergar o que está acontecendo na sua máquina do ponto de vista da segurança: quais portas estão abertas, quais serviços estão rodando e como um atacante poderia "mapear" um sistema. Conhecimento é a melhor defesa! 🛡️

## 🛠️ Comandos utilizados

- `netstat` — mostra conexões de rede e portas abertas (comando clássico)
- `ss` — versão moderna e mais rápida do netstat
- `nmap` — scanner de portas: vê o que está "aberto" em um host
- `ps` — lista os processos em execução no sistema

## 🚀 Como executar os desafios
=======
# Módulo 4: Segurança de Redes

Laboratório prático de segurança usando apenas comandos bash.

## Comandos utilizados

- `netstat`
- `ss`
- `nmap`
- `ps`

## Como executar
>>>>>>> origin/main

Edite os arquivos em `desafios/` e execute um por um:

```bash
bash desafios/desafio01_netstat.sh
bash desafios/desafio02_ss.sh
bash desafios/desafio03_nmap.sh
bash desafios/desafio04_ssh.sh
```

Depois execute a verificação:

```bash
bash testes/verificar_desafios.sh
```

## 💡 Dica

Se o `nmap` não estiver instalado no ambiente Codio, execute:

```bash
sudo apt update && sudo apt install -y nmap
```
