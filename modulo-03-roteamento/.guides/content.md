# 🌐 Módulo 3: Roteamento e Camada de Rede

Neste módulo você vai aprender a visualizar interfaces, rotas e conectividade usando comandos Linux.

---

## 📖 Conceitos iniciais

A camada de rede é responsável por levar pacotes de uma origem até um destino, possivelmente passando por vários roteadores.

Comandos importantes:
- `ip addr` → mostra interfaces de rede
- `ip route` → mostra a tabela de roteamento
- `traceroute` → mostra a rota até o destino
- `ping` → testa conectividade

---

## ✅ Quiz: comando de rota

::multiple-choice::Qual comando mostra a tabela de roteamento no Linux moderno?
{
  ~ route
  ~ netstat -r
  ~ ip route = correto
  ~ ifconfig
}

---

## 🎯 Desafios

### Desafio 1 — Interfaces de rede

Edite `desafios/desafio01_ip_addr.sh`.

Use `ip addr` para listar as interfaces de rede e salve em `respostas/desafio01.txt`.

---

### Desafio 2 — Tabela de roteamento

Edite `desafios/desafio02_ip_route.sh`.

Use `ip route` para mostrar a tabela de roteamento e salve em `respostas/desafio02.txt`.

---

### Desafio 3 — Traceroute

Edite `desafios/desafio03_traceroute.sh`.

Use `traceroute -m 10` para ver a rota até `google.com` e salve em `respostas/desafio03.txt`.

---

### Desafio 4 — Ping múltiplo

Edite `desafios/desafio04_ping_multiplo.sh`.

Use `ping -c 3` para testar `google.com`, `github.com` e `ufpb.br` e salve os resultados em `respostas/desafio04.txt`.

---

## ✅ Verificação

```bash
bash testes/verificar_desafios.sh
```

---

## ✅ Quiz final: teste de conectividade

::multiple-choice::Qual comando testa conectividade com outro host na rede?
{
  ~ ip addr
  ~ traceroute
  ~ ping = correto
  ~ curl
}
