# 🗺️ Módulo 3: Roteamento — Os caminhos da internet

Quando você manda uma mensagem para um amigo em outro país, essa mensagem não vai direta — ela passa por vários **roteadores** no caminho, como se fosse uma corrida de revezamento! Cada roteador olha o destino e decide para onde mandar o pacote a seguir.

Neste módulo você vai ver esses caminhos com os seus próprios olhos, usando comandos do terminal. Prepare-se para descobrir que a internet é uma rede de estradas invisíveis! 🌍

---

## 📖 Conceitos que você precisa saber

A **camada de rede** é responsável por levar pacotes de dados de uma origem até um destino, mesmo que eles estejam em países diferentes.

Para isso, cada máquina tem uma **tabela de roteamento**: uma lista de regras que diz "para chegar no destino X, mande o pacote para Y".

O IP (Internet Protocol) é o endereço usado nessa camada — diferente do MAC, que só vale dentro da rede local.

---

## ✅ Quiz rápido: tabela de roteamento

{Quiz 1}(assessment)

---

## 🎯 Desafios

### 🔍 Desafio 1 — Vendo as interfaces de rede

Edite `desafios/desafio01_ip_addr.sh`.

Use `ip addr` para listar todas as interfaces de rede da sua máquina e salve em `respostas/desafio01.txt`.

> **O que você vai ver?** As interfaces de rede (como `eth0`, `lo`) com seus endereços IP e MAC. É como ver a "lista de plaquinhas" da sua máquina na rede.

Execute:

```bash
bash desafios/desafio01_ip_addr.sh
```

---

### 🔍 Desafio 2 — Tabela de roteamento

Edite `desafios/desafio02_ip_route.sh`.

Use `ip route` para mostrar a tabela de roteamento e salve em `respostas/desafio02.txt`.

> **O que você vai ver?** As rotas configuradas — incluindo a **rota padrão** (default), que é o caminho para quando o destino não está na rede local (basicamente o "sai pela internet por aqui").

Execute:

```bash
bash desafios/desafio02_ip_route.sh
```

---

### 🔍 Desafio 3 — Rastreando a rota com traceroute

Edite `desafios/desafio03_traceroute.sh`.

Use `traceroute -m 10` para ver cada roteador pelo qual seus dados passam até chegar em `google.com` e salve em `respostas/desafio03.txt`.

> **Legal demais:** você vai conseguir ver os IPs de roteadores de operadoras e data centers ao longo do caminho! O `-m 10` limita a 10 saltos pra não demorar muito.

Execute:

```bash
bash desafios/desafio03_traceroute.sh
```

---

### 🔍 Desafio 4 — Testando vários hosts com ping

Edite `desafios/desafio04_ping_multiplo.sh`.

Use `ping -c 3` para testar a conectividade com `google.com`, `github.com` e `ufpb.br` e salve os resultados em `respostas/desafio04.txt`.

> **O que o `-c 3` faz?** Limita o ping a 3 envios — sem ele, o ping fica mandando pacotes pra sempre até você apertar Ctrl+C.

Execute:

```bash
bash desafios/desafio04_ping_multiplo.sh
```

---

## ✅ Verificação final

Terminou tudo? Hora de ver sua nota! 🎉

```bash
bash testes/verificar_desafios.sh
```

---

## ✅ Quiz final: testando conexão

{Quiz 2}(assessment)
