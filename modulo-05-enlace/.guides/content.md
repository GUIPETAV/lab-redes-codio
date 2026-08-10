# 🔌 Módulo 5: Camada de Enlace

Neste módulo você vai aprender sobre a camada de enlace de dados, que é responsável pela comunicação entre dispositivos na mesma rede local.

---

## 📖 Conceitos iniciais

A camada de enlace utiliza endereços MAC para identificar dispositivos fisicamente na rede.

Principais comandos:
- `ip link` → mostra interfaces no nível de enlace
- `arp` → mostra a tabela de mapeamento IP ↔ MAC
- `ifconfig` → comando clássico de interfaces
- `/sys/class/net/` → arquivos do sistema com informações das interfaces

---

## ✅ Quiz: endereço da camada de enlace

::multiple-choice::Qual é o endereço usado na camada de enlace de dados?
{
  ~ Endereço IP
  ~ Endereço MAC = correto
  ~ Endereço de porta
  ~ Endereço DNS
}

---

## 🎯 Desafios

### Desafio 1 — Interfaces no nível de enlace

Edite `desafios/desafio01_ip_link.sh`.

Use `ip link show` para listar as interfaces de rede no nível de enlace e salve em `respostas/desafio01.txt`.

Execute:

```bash
bash desafios/desafio01_ip_link.sh
```

---

### Desafio 2 — Tabela ARP

Edite `desafios/desafio02_arp.sh`.

Use `arp -a` para mostrar a tabela ARP do sistema e salve em `respostas/desafio02.txt`.

Execute:

```bash
bash desafios/desafio02_arp.sh
```

---

### Desafio 3 — Interfaces com ifconfig

Edite `desafios/desafio03_ifconfig.sh`.

Use `ifconfig -a` para listar todas as interfaces de rede e salve em `respostas/desafio03.txt`.

> 💡 Se o `ifconfig` não estiver instalado, execute:
>
> ```bash
> sudo apt update && sudo apt install -y net-tools
> ```

Execute:

```bash
bash desafios/desafio03_ifconfig.sh
```

---

### Desafio 4 — Endereços MAC

Edite `desafios/desafio04_mac_address.sh`.

Use o comando abaixo para mostrar os endereços MAC de todas as interfaces:

```bash
cat /sys/class/net/*/address
```

Salve o resultado em `respostas/desafio04.txt`.

Execute:

```bash
bash desafios/desafio04_mac_address.sh
```

---

## ✅ Verificação

Quando terminar todos os desafios:

```bash
bash testes/verificar_desafios.sh
```

---

## ✅ Quiz final: tabela ARP

::multiple-choice::Qual tabela relaciona endereços IP com endereços MAC na rede local?
{
  ~ Tabela de roteamento
  ~ Tabela DNS
  ~ Tabela ARP = correto
  ~ Tabela NAT
}
