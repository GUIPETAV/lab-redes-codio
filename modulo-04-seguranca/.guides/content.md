<<<<<<< HEAD
# 🔒 Módulo 4: Segurança de Redes — Quem está de olho na sua máquina?

Você sabia que qualquer computador conectado à internet pode ter **portas abertas** esperando por conexões? E que um invasor poderia usar essas portas para entrar no sistema?

Neste módulo você vai aprender a enxergar o que está acontecendo na sua máquina do ponto de vista da segurança: quais portas estão abertas, quais serviços estão rodando e como um atacante poderia "mapear" um sistema. Conhecimento é a melhor defesa! 🛡️

---

## 📖 Conceitos que você precisa saber

Em redes, uma **porta** é como a entrada de um prédio — cada serviço usa uma porta diferente:

- Porta **22** → SSH (acesso remoto seguro)
- Porta **80** → HTTP (sites sem criptografia)
- Porta **443** → HTTPS (sites com criptografia)

Quando uma porta está "aberta", significa que tem um serviço escutando conexões nela. Um atacante que descobre portas abertas sabe por onde tentar entrar — por isso é importante monitorar isso!

---

## ✅ Quiz rápido: substituto do netstat
=======
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
>>>>>>> origin/main

::multiple-choice::Qual é o comando moderno que substitui o netstat no Linux?
{
  ~ ifconfig
  ~ ss = correto
  ~ route
  ~ arp
}

---

## 🎯 Desafios

<<<<<<< HEAD
### 🔍 Desafio 1 — Portas abertas com netstat

Edite `desafios/desafio01_netstat.sh`.

Use `netstat -tuln` para listar as portas TCP e UDP que estão em modo de **escuta** (LISTEN) e salve em `respostas/desafio01.txt`.

> **O que cada flag faz?** `-t` = TCP, `-u` = UDP, `-l` = apenas as que estão escutando, `-n` = mostra números ao invés de resolver nomes.
=======
### Desafio 1 — Portas abertas com netstat

Edite `desafios/desafio01_netstat.sh`.

Use `netstat -tuln` para listar as portas TCP e UDP em estado de escuta e salve em `respostas/desafio01.txt`.
>>>>>>> origin/main

Execute:

```bash
bash desafios/desafio01_netstat.sh
```

---

<<<<<<< HEAD
### 🔍 Desafio 2 — Conexões com ss (mais moderno)
=======
### Desafio 2 — Conexões com ss
>>>>>>> origin/main

Edite `desafios/desafio02_ss.sh`.

Use `ss -tuln` para listar portas e conexões de forma moderna e salve em `respostas/desafio02.txt`.

<<<<<<< HEAD
> **Por que usar o `ss`?** O `ss` é mais rápido e mais completo que o `netstat` — é o padrão nas distribuições Linux modernas.

=======
>>>>>>> origin/main
Execute:

```bash
bash desafios/desafio02_ss.sh
```

---

<<<<<<< HEAD
### 🔍 Desafio 3 — Escaneando portas com nmap
=======
### Desafio 3 — Scanner de portas com nmap
>>>>>>> origin/main

Edite `desafios/desafio03_nmap.sh`.

Use `nmap` para escanear as portas 22, 80 e 443 do localhost (`127.0.0.1`) e salve em `respostas/desafio03.txt`.

<<<<<<< HEAD
> **Isso é o que hackers fazem?** Sim, o `nmap` é a principal ferramenta de reconhecimento em segurança ofensiva — mas também é usada por administradores para auditar seus próprios sistemas. Use com responsabilidade! ⚠️

=======
>>>>>>> origin/main
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

<<<<<<< HEAD
### 🔍 Desafio 4 — Verificando o serviço SSH
=======
### Desafio 4 — Verificar serviço SSH
>>>>>>> origin/main

Edite `desafios/desafio04_ssh.sh`.

Use `ps aux | grep sshd` para verificar se o serviço SSH está em execução e salve em `respostas/desafio04.txt`.

<<<<<<< HEAD
> **O SSH é importante!** É por ele que administradores acessam servidores remotamente de forma segura — como acessar um computador em outro lugar pelo terminal.

=======
>>>>>>> origin/main
Execute:

```bash
bash desafios/desafio04_ssh.sh
```

---

<<<<<<< HEAD
## ✅ Verificação final

Terminou tudo? Hora de ver sua nota! 🎉
=======
## ✅ Verificação

Quando terminar todos os desafios:
>>>>>>> origin/main

```bash
bash testes/verificar_desafios.sh
```

---

<<<<<<< HEAD
## ✅ Quiz final: descobrindo portas abertas
=======
## ✅ Quiz final: descobrir portas abertas
>>>>>>> origin/main

::multiple-choice::Qual ferramenta é comumente usada para descobrir portas abertas em um host remoto?
{
  ~ ping
  ~ traceroute
  ~ nmap = correto
  ~ dig
}
