# 🌐 Módulo 1: DNS e Resolução de Nomes

Neste módulo você vai aprender como o DNS traduz nomes de domínio em endereços IP usando comandos do terminal Linux.

---

## 📖 Conceitos iniciais

O DNS funciona como uma agenda telefônica da internet:

- Você digita: `google.com`
- O DNS responde: `142.250.80.46`

Seu computador precisa perguntar a um servidor DNS configurado. No Linux, a configuração fica em `/etc/resolv.conf`.

---

## ✅ Quiz: servidor DNS do Google

::multiple-choice::Qual é o endereço IP do DNS público do Google?
{
  ~ 8.8.4.4
  ~ 8.8.8.8 = correto
  ~ 1.1.1.1
  ~ 208.67.222.222
}

---

## 🎯 Desafios

### Desafio 1 — nslookup

Edite `desafios/desafio01_nslookup.sh`. Use `nslookup` para descobrir o IP de `github.com` e salve em `respostas/desafio01.txt`.

Execute:

```bash
bash desafios/desafio01_nslookup.sh
```

---

### Desafio 2 — dig

Edite `desafios/desafio02_dig.sh`.

1. Descubra o IP de `ufpb.br` usando `dig +short`
2. Descubra os servidores de email (registros MX) de `ufpb.br`
3. Salve tudo em `respostas/desafio02.txt`

Execute:

```bash
bash desafios/desafio02_dig.sh
```

---

### Desafio 3 — host

Edite `desafios/desafio03_host.sh`.

Use o comando `host` para descobrir o IP reverso de `8.8.8.8` e salve em `respostas/desafio03.txt`.

Execute:

```bash
bash desafios/desafio03_host.sh
```

---

### Desafio 4 — Configuração DNS

Edite `desafios/desafio04_resolv_conf.sh`.

Use o comando `cat` para mostrar o conteúdo de `/etc/resolv.conf` e salve em `respostas/desafio04.txt`.

Execute:

```bash
bash desafios/desafio04_resolv_conf.sh
```

---

## ✅ Verificação

Quando terminar todos os desafios:

```bash
bash testes/verificar_desafios.sh
```

---

## ✅ Quiz final: registro MX

::multiple-choice::Qual comando mostra os servidores de email de um domínio?
{
  ~ nslookup
  ~ dig +short MX nome.com = correto
  ~ ping
  ~ traceroute
}
