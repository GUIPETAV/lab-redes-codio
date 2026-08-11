# Módulo 10: VPN e Túneis

Laboratório prático de redes usando apenas comandos bash.

## Comandos utilizados

- `ip tunnel`
- `ip link`
- `curl ipinfo.io`
- `ip route`

## Como executar

Edite os arquivos em `desafios/` e execute um por um:

```bash
bash desafios/desafio01_ip_tunnel_list.sh
bash desafios/desafio02_ipinfo.sh
bash desafios/desafio03_ip_route_vpn.sh
bash desafios/desafio04_vpn_conceito.sh
```

Depois execute a verificação:

```bash
bash testes/verificar_desafios.sh
```

## 💡 Dica

Para verificar interfaces de túnel existentes:

```bash
ip link show type gre
ip tunnel show
```
