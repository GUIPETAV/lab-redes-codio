# Módulo 5: Camada de Enlace

Laboratório prático de camada de enlace usando apenas comandos bash.

## Comandos utilizados

- `ip link`
- `arp`
- `ifconfig`
- `cat /sys/class/net/*/address`

## Como executar

Edite os arquivos em `desafios/` e execute um por um:

```bash
bash desafios/desafio01_ip_link.sh
bash desafios/desafio02_arp.sh
bash desafios/desafio03_ifconfig.sh
bash desafios/desafio04_mac_address.sh
```

Depois execute a verificação:

```bash
bash testes/verificar_desafios.sh
```

## 💡 Dica

Se o `ifconfig` não estiver instalado no ambiente Codio, execute:

```bash
sudo apt update && sudo apt install -y net-tools
```
