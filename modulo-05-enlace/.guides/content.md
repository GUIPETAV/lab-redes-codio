# 📡 Módulo 5: Camada de Enlace — O "CPF" da sua placa de rede

Você já ouviu falar em **endereço MAC**? É o "CPF" da sua placa de rede — um número único que identifica fisicamente cada dispositivo na rede local. Diferente do IP (que pode mudar), o MAC vem gravado na placa de rede de fábrica.

Neste módulo você vai explorar a camada mais "baixa" da comunicação em rede: aquela que cuida da comunicação entre dispositivos na **mesma rede local** (como os aparelhos conectados ao mesmo Wi-Fi da sua casa). 🏠

---

## 📖 Conceitos que você precisa saber

Na camada de rede, usamos **endereços IP** para comunicação entre redes. Mas dentro de uma mesma rede local, o protocolo usa **endereços MAC** para identificar cada dispositivo.

O protocolo **ARP** (Address Resolution Protocol) é o responsável por fazer a "tradução": dado um IP local, ele descobre qual é o MAC correspondente. É como perguntar "quem na minha sala tem o IP 192.168.1.5?" — e o dono responde com seu MAC.

---

## ✅ Quiz rápido: endereço da camada de enlace

::multiple-choice::Qual é o endereço usado na camada de enlace de dados?
{
  ~ Endereço IP
  ~ Endereço MAC = correto
  ~ Endereço de porta
  ~ Endereço DNS
}

---

## 🎯 Desafios

### 🔍 Desafio 1 — Interfaces no nível de enlace

Edite `desafios/desafio01_ip_link.sh`.

Use `ip link show` para listar as interfaces de rede no nível de enlace e salve em `respostas/desafio01.txt`.

> **O que você vai ver?** Cada interface com seu estado (UP ou DOWN) e seu endereço MAC — aquela sequência de 6 pares hexadecimais como `aa:bb:cc:dd:ee:ff`.


Edite `desafios/desafio02_arp.sh`.

Use `arp -a` para mostrar a tabela ARP do sistema e salve em `respostas/desafio02.txt`.

> **O que é a tabela ARP?** É uma lista que sua máquina guarda com os IPs e MACs dos dispositivos que já se comunicaram com ela na rede local — tipo uma lista de contatos recentes!


Edite `desafios/desafio03_ifconfig.sh`.

Use `ifconfig -a` para listar todas as interfaces de rede e salve em `respostas/desafio03.txt`.

> **Por que ainda usar o `ifconfig`?** Embora seja um comando mais antigo, muitos scripts e sistemas ainda o usam. Vale conhecer os dois: `ip` (moderno) e `ifconfig` (clássico).


```bash
cat /sys/class/net/*/address
```

Salve o resultado em `respostas/desafio04.txt`.

> **Por que isso é legal?** O Linux expõe informações de hardware em arquivos no diretório `/sys` — é uma forma poderosa de acessar dados do sistema sem depender de comandos extras.


```bash
bash testes/verificar_desafios.sh
```

---

## ✅ Quiz final: IP ↔ MAC na rede local

::multiple-choice::Qual tabela relaciona endereços IP com endereços MAC na rede local?
{
  ~ Tabela de roteamento
  ~ Tabela DNS
  ~ Tabela ARP = correto
  ~ Tabela NAT
}
