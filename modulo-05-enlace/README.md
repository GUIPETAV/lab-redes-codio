# 📡 Módulo 5: Camada de Enlace — O "CPF" da sua placa de rede

Você já ouviu falar em **endereço MAC**? É o "CPF" da sua placa de rede — um número único que identifica fisicamente cada dispositivo na rede local. Diferente do IP (que pode mudar), o MAC vem gravado na placa de rede de fábrica.

Neste módulo você vai explorar a camada mais "baixa" da comunicação em rede: aquela que cuida da comunicação entre dispositivos na **mesma rede local** (como os aparelhos conectados ao mesmo Wi-Fi da sua casa). 🏠

## 🛠️ Comandos utilizados

- `ip link` — mostra as interfaces de rede no nível de enlace (com endereços MAC)
- `arp` — mostra a tabela ARP: quem tem qual IP na rede local
- `ifconfig` — comando clássico de interfaces de rede
- `cat /sys/class/net/*/address` — lê os endereços MAC diretamente do sistema

## 🚀 Como executar os desafios

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
