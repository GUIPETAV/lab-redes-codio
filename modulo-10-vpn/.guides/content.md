# 🔐 Módulo 10: VPN e Túneis

Neste módulo você vai aprender sobre VPNs e túneis de rede no Linux, usando comandos como `ip tunnel`, `ip link` e `curl ipinfo.io`.

---

## 📖 Conceitos iniciais

Uma **VPN** (Virtual Private Network) cria uma conexão segura e criptografada entre dois pontos da rede, passando por uma rede pública (como a internet).

- **Túnel**: encapsula pacotes de um protocolo dentro de outro. Ex: pacotes IP dentro de pacotes IP (IP-in-IP).
- **Protocolo GRE** (Generic Routing Encapsulation): protocolo de tunelamento sem criptografia, usado para encapsular protocolos de rede.
- **WireGuard / OpenVPN**: exemplos de protocolos VPN modernos com criptografia.

No Linux, o comando `ip tunnel` gerencia túneis de rede:

```bash
ip tunnel show           # lista túneis existentes
ip tunnel add nome mode gre remote X.X.X.X local Y.Y.Y.Y  # cria túnel GRE
```

Para verificar seu IP público (e detectar se uma VPN está ativa):

```bash
curl ipinfo.io
```

Quando uma VPN está ativa, o IP retornado pela API é o do servidor VPN, não o do seu provedor.

Interfaces de túnel aparecem no comando `ip link show` com tipos como `gre`, `ipip`, `sit`, ou `tun`.

---

## ✅ Quiz: VPN

{Quiz 1|assessment}(multiple-choice-5693307665)

---

## 🎯 Desafios

### Desafio 1 — Listar túneis

Edite `desafios/desafio01_ip_tunnel_list.sh`. Use `ip tunnel show` para listar os túneis de rede configurados e salve em `respostas/desafio01.txt`.

Execute:

```bash
bash desafios/desafio01_ip_tunnel_list.sh
```

---

### Desafio 2 — IP público com ipinfo.io

Edite `desafios/desafio02_ipinfo.sh`. Use `curl ipinfo.io` para obter informações sobre o IP público (localização, ISP) e salve em `respostas/desafio02.txt`.

Execute:

```bash
bash desafios/desafio02_ipinfo.sh
```

---

### Desafio 3 — Tabela de rotas

Edite `desafios/desafio03_ip_route_vpn.sh`. Use `ip route show` para exibir a tabela de roteamento atual e salve em `respostas/desafio03.txt`.

Execute:

```bash
bash desafios/desafio03_ip_route_vpn.sh
```

---

### Desafio 4 — Interfaces de túnel

Edite `desafios/desafio04_vpn_conceito.sh`. Use `ip link show` para listar todas as interfaces de rede e filtre por tipos de túnel (tun, gre, sit) e salve em `respostas/desafio04.txt`.

Execute:

```bash
bash desafios/desafio04_vpn_conceito.sh
```

---

## ✅ Verificação

Quando terminar todos os desafios:

```bash
bash testes/verificar_desafios.sh
```

---

## ✅ Quiz final: protocolo de túnel

{Quiz 2|assessment}(multiple-choice-5710360983)
