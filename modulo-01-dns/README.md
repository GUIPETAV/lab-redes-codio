# 🌐 Módulo 1: DNS — Como a internet traduz nomes em números

Já parou pra pensar por que você digita `youtube.com` e não precisa decorar um monte de números? É aí que entra o **DNS** (Domain Name System)! Ele funciona como uma "agenda telefônica" da internet: você dá um nome e ele te devolve o endereço IP correspondente.

Neste laboratório você vai usar comandos no terminal Linux para descobrir IPs, servidores de e-mail e configurações de DNS — aquelas coisas que parecem mágica, mas são pura rede! 🧙‍♂️

## 🛠️ Comandos utilizados

- `nslookup` — pergunta a um servidor DNS pelo IP de um domínio
- `dig` — uma versão mais detalhada e poderosa do nslookup
- `host` — consulta simples e rápida de DNS
- `cat /etc/resolv.conf` — mostra qual servidor DNS está configurado na sua máquina

## 🚀 Como executar os desafios

Edite cada arquivo em `desafios/` e rode um por um no terminal:

```bash
bash desafios/desafio01_nslookup.sh
bash desafios/desafio02_dig.sh
bash desafios/desafio03_host.sh
bash desafios/desafio04_resolv_conf.sh
```

Depois de completar todos, verifique sua nota:

```bash
bash testes/verificar_desafios.sh
```
