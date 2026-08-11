# Módulo 6: Sockets TCP/UDP com netcat

Laboratório prático de redes usando apenas comandos bash.

## Comandos utilizados

- `nc` (netcat)
- `nc -l` (modo servidor/escuta)
- `nc -u` (modo UDP)
- `nc -z` (varredura de portas)

## Como executar

Edite os arquivos em `desafios/` e execute um por um:

```bash
bash desafios/desafio01_nc_scan.sh
bash desafios/desafio02_nc_banner.sh
bash desafios/desafio03_nc_udp.sh
bash desafios/desafio04_nc_http.sh
```

Depois execute a verificação:

```bash
bash testes/verificar_desafios.sh
```

## 💡 Dica

Instale o netcat se necessário:

```bash
sudo apt-get install netcat -y
```
