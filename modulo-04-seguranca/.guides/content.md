# 🔒 Módulo 4: Segurança de Redes

Neste módulo você vai aprender a inspecionar portas, conexões e serviços de um sistema Linux usando comandos de segurança.

---

## 📖 Conceitos iniciais

A segurança de redes envolve conhecer o que está exposto e rodando em uma máquina.

Principais comandos:
- `netstat` → conexões de rede e portas abertas (comando clássico)
- `ss` → versão moderna do netstat
- `nmap` → scanner de portas e serviços
- `ps` → processos em execução

---

## ✅ Quiz: comando moderno para conexões

::multiple-choice::Qual é o comando moderno que substitui o netstat no Linux?
{
  ~ ifconfig
  ~ ss = correto
  ~ route
  ~ arp
}

---

## 🎯 Desafios

### Desafio 1 — Portas abertas com netstat

Edite `desafios/desafio01_netstat.sh`.

Use `netstat -tuln` para listar as portas TCP e UDP em estado de escuta e salve em `respostas/desafio01.txt`.

Execute:

```bash
bash desafios/desafio01_netstat.sh
```

---

### Desafio 2 — Conexões com ss

Edite `desafios/desafio02_ss.sh`.

Use `ss -tuln` para listar portas e conexões de forma moderna e salve em `respostas/desafio02.txt`.

Execute:

```bash
bash desafios/desafio02_ss.sh
```

---

### Desafio 3 — Scanner de portas com nmap

Edite `desafios/desafio03_nmap.sh`.

Use `nmap` para escanear as portas 22, 80 e 443 do localhost (`127.0.0.1`) e salve em `respostas/desafio03.txt`.

> 💡 Se o `nmap` não estiver instalado, execute no terminal:
>
> ```bash
> sudo apt update && sudo apt install -y nmap
> ```

Execute:

```bash
bash desafios/desafio03_nmap.sh
```

---

### Desafio 4 — Verificar serviço SSH

Edite `desafios/desafio04_ssh.sh`.

Use `ps aux | grep sshd` para verificar se o serviço SSH está em execução e salve em `respostas/desafio04.txt`.

Execute:

```bash
bash desafios/desafio04_ssh.sh
```

---

## ✅ Verificação

Quando terminar todos os desafios:

```bash
bash testes/verificar_desafios.sh
```

---

## ✅ Quiz final: descobrir portas abertas

::multiple-choice::Qual ferramenta é comumente usada para descobrir portas abertas em um host remoto?
{
  ~ ping
  ~ traceroute
  ~ nmap = correto
  ~ dig
}
