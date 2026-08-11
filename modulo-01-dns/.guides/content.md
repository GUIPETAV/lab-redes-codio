# 🌐 Módulo 1: DNS — Como a internet traduz nomes em números

Já parou pra pensar por que você digita `youtube.com` e não precisa decorar um monte de números? É aí que entra o **DNS** (Domain Name System)! Ele funciona como uma "agenda telefônica" da internet: você dá um nome e ele te devolve o endereço IP correspondente.

Neste laboratório você vai usar comandos no terminal Linux para descobrir IPs, servidores de e-mail e configurações de DNS — aquelas coisas que parecem mágica, mas são pura rede! 🧙‍♂️

---

## 📖 Conceitos que você precisa saber

O DNS resolve nomes em endereços IP. Na prática:

- Você digita: `google.com`
- O DNS responde: `142.250.80.46`

Sem o DNS, você teria que decorar o endereço IP de cada site que quisesse acessar — imagina que sofrência! 😅

O seu computador sabe a qual servidor DNS perguntar graças ao arquivo `/etc/resolv.conf`. É lá que fica registrado o endereço do servidor DNS da sua rede.

---

## ✅ Quiz rápido: endereço do DNS do Google

::multiple-choice::Qual é o endereço IP do DNS público do Google?
{
  ~ 8.8.4.4
  ~ 8.8.8.8 = correto
  ~ 1.1.1.1
  ~ 208.67.222.222
}

---

## 🎯 Desafios

### 🔍 Desafio 1 — nslookup: descobrindo IPs

Edite o arquivo `desafios/desafio01_nslookup.sh`.

Use o `nslookup` para descobrir o endereço IP do site `github.com` e salve o resultado em `respostas/desafio01.txt`.

> **O que esse comando faz?** O `nslookup` faz uma consulta DNS — ele pergunta ao servidor configurado na sua máquina: "qual é o IP desse domínio?"

Execute o desafio:

```bash
bash desafios/desafio01_nslookup.sh
```

---

### 🔍 Desafio 2 — dig: consultas avançadas de DNS

Edite o arquivo `desafios/desafio02_dig.sh`.

1. Descubra o IP de `ufpb.br` usando `dig +short` — o `+short` deixa a resposta mais limpa
2. Descubra os servidores de e-mail (registros MX) de `ufpb.br` — isso mostra por onde chegam os e-mails do domínio
3. Salve tudo em `respostas/desafio02.txt`

Execute:

```bash
bash desafios/desafio02_dig.sh
```

---

### 🔍 Desafio 3 — host: DNS reverso

Edite o arquivo `desafios/desafio03_host.sh`.

Use o `host` para fazer uma consulta **reversa**: dado o IP `8.8.8.8`, descubra qual nome de domínio ele pertence e salve em `respostas/desafio03.txt`.

> **Por que isso é útil?** Em segurança e administração de redes, saber a quem pertence um IP é essencial para investigar conexões suspeitas!

Execute:

```bash
bash desafios/desafio03_host.sh
```

---

### 🔍 Desafio 4 — Vendo a configuração DNS da máquina

Edite o arquivo `desafios/desafio04_resolv_conf.sh`.

Use o `cat` para mostrar o conteúdo de `/etc/resolv.conf` e salve em `respostas/desafio04.txt`.

> **O que tem nesse arquivo?** O endereço do servidor DNS que sua máquina usa para resolver nomes. É como o contato da "agenda" que sua máquina liga quando precisa saber um IP.

Execute:

```bash
bash desafios/desafio04_resolv_conf.sh
```

---

## ✅ Verificação final

Terminou tudo? Hora de ver sua nota! 🎉

```bash
bash testes/verificar_desafios.sh
```

---

## ✅ Quiz final: quem cuida dos e-mails?

::multiple-choice::Qual comando mostra os servidores de e-mail (MX) de um domínio?
{
  ~ nslookup
  ~ dig +short MX nome.com = correto
  ~ ping
  ~ traceroute
}
