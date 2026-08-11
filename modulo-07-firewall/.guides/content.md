# 🔥 Módulo 7: Firewall e Controle de Tráfego

Neste módulo você vai aprender a inspecionar e gerenciar regras de firewall no Linux usando `iptables` e `ufw`.

---

## 📖 Conceitos iniciais

Um **firewall** é um sistema que controla o tráfego de rede com base em regras definidas pelo administrador.

- **iptables**: ferramenta clássica do Linux para filtrar pacotes. Trabalha com tabelas (filter, nat, mangle) e cadeias (INPUT, OUTPUT, FORWARD).
- **ufw** (Uncomplicated Firewall): interface simplificada para o iptables, mais fácil de usar.

As principais ações de uma regra de firewall são:

- **ACCEPT**: permite o pacote passar
- **DROP**: descarta o pacote silenciosamente
- **REJECT**: descarta e envia mensagem de erro ao remetente

Conceitos importantes:

- **INPUT**: pacotes destinados ao próprio host
- **OUTPUT**: pacotes gerados pelo próprio host
- **FORWARD**: pacotes que passam pelo host como roteador

O `ufw` simplifica o gerenciamento: `ufw allow 22` permite a porta SSH, `ufw deny 23` bloqueia Telnet.

---

## ✅ Quiz: ação de firewall

::multiple-choice::Qual ação do iptables descarta o pacote SEM enviar mensagem de erro ao remetente?
{
  ~ REJECT
  ~ ACCEPT
  ~ DROP = correto
  ~ LOG
}

---

## 🎯 Desafios

### Desafio 1 — Listar regras do iptables

Edite `desafios/desafio01_iptables_list.sh`. Use `iptables -L -n -v` para listar todas as regras de firewall e salve em `respostas/desafio01.txt`.

Execute:

```bash
bash desafios/desafio01_iptables_list.sh
```

---

### Desafio 2 — Status do ufw

Edite `desafios/desafio02_ufw_status.sh`. Use `ufw status verbose` para verificar o estado do firewall ufw e salve em `respostas/desafio02.txt`.

Execute:

```bash
bash desafios/desafio02_ufw_status.sh
```

---

### Desafio 3 — Políticas padrão do iptables

Edite `desafios/desafio03_iptables_policy.sh`. Use `iptables -L | grep -E "Chain|policy"` para listar as políticas padrão das cadeias e salve em `respostas/desafio03.txt`.

Execute:

```bash
bash desafios/desafio03_iptables_policy.sh
```

---

### Desafio 4 — Contagem de regras

Edite `desafios/desafio04_ufw_rules.sh`. Use `iptables -L --line-numbers` para listar regras com números de linha e salve em `respostas/desafio04.txt`.

Execute:

```bash
bash desafios/desafio04_ufw_rules.sh
```

---

## ✅ Verificação

Quando terminar todos os desafios:

```bash
bash testes/verificar_desafios.sh
```

---

## ✅ Quiz final: cadeia do iptables

::multiple-choice::Qual cadeia do iptables processa os pacotes destinados ao próprio host?
{
  ~ FORWARD
  ~ OUTPUT
  ~ INPUT = correto
  ~ PREROUTING
}
