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

::multiple-choice::Qual é o comando moderno que substitui o netstat no Linux?
{
  ~ ifconfig
  ~ ss = correto
  ~ route
  ~ arp
}

---

## 🎯 Desafios

### 🔍 Desafio 1 — Portas abertas com netstat

Edite `desafios/desafio01_netstat.sh`.

Use `netstat -tuln` para listar as portas TCP e UDP que estão em modo de **escuta** (LISTEN) e salve em `respostas/desafio01.txt`.

> **O que cada flag faz?** `-t` = TCP, `-u` = UDP, `-l` = apenas as que estão escutando, `-n` = mostra números ao invés de resolver nomes.

Execute:

```bash
bash desafios/desafio01_netstat.sh
```

---

### 🔍 Desafio 2 — Conexões com ss (mais moderno)

Edite `desafios/desafio02_ss.sh`.

Use `ss -tuln` para listar portas e conexões de forma moderna e salve em `respostas/desafio02.txt`.

> **Por que usar o `ss`?** O `ss` é mais rápido e mais completo que o `netstat` — é o padrão nas distribuições Linux modernas.

Execute:

```bash
bash desafios/desafio02_ss.sh
```

---

### 🔍 Desafio 3 — Escaneando portas com nmap

Edite `desafios/desafio03_nmap.sh`.

Use `nmap` para escanear as portas 22, 80 e 443 do localhost (`127.0.0.1`) e salve em `respostas/desafio03.txt`.

> **Isso é o que hackers fazem?** Sim, o `nmap` é a principal ferramenta de reconhecimento em segurança ofensiva — mas também é usada por administradores para auditar seus próprios sistemas. Use com responsabilidade! ⚠️

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

### 🔍 Desafio 4 — Verificando o serviço SSH

Edite `desafios/desafio04_ssh.sh`.

Use `ps aux | grep sshd` para verificar se o serviço SSH está em execução e salve em `respostas/desafio04.txt`.

> **O SSH é importante!** É por ele que administradores acessam servidores remotamente de forma segura — como acessar um computador em outro lugar pelo terminal.

Execute:

```bash
bash desafios/desafio04_ssh.sh
```

---

## ✅ Verificação final

Terminou tudo? Hora de ver sua nota! 🎉

```bash
bash testes/verificar_desafios.sh
```

---

## ✅ Quiz final: descobrindo portas abertas

::multiple-choice::Qual ferramenta é comumente usada para descobrir portas abertas em um host remoto?
{
  ~ ping
  ~ traceroute
  ~ nmap = correto
  ~ dig
}
