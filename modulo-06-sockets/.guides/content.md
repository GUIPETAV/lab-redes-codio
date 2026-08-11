# 🔌 Módulo 6: Sockets TCP/UDP com netcat

Neste módulo você vai aprender a criar conexões TCP e UDP no terminal Linux usando o `nc` (netcat), o "canivete suíço" das redes.

---

## 📖 Conceitos iniciais

Um **socket** é o ponto de comunicação entre dois processos em uma rede. Para cada conexão, existe um socket do lado cliente e um do lado servidor.

- **TCP** (Transmission Control Protocol): orientado a conexão, confiável, garante a entrega dos dados na ordem correta.
- **UDP** (User Datagram Protocol): sem conexão, mais rápido, sem garantia de entrega — usado em streaming e jogos.

O `nc` (netcat) é uma ferramenta que cria conexões TCP e UDP direto no terminal:

- `nc host porta` — conecta como cliente TCP
- `nc -l -p porta` — escuta como servidor TCP
- `nc -u host porta` — conecta via UDP
- `nc -z host porta` — verifica se a porta está aberta (scan)

Uma **porta** é um número de 0 a 65535 que identifica qual serviço está sendo acessado. Por exemplo: 80 (HTTP), 443 (HTTPS), 22 (SSH), 53 (DNS).

---

## ✅ Quiz: protocolo de transporte

{Quiz 1|assessment}(multiple-choice-7635473142)

---

## 🎯 Desafios

### Desafio 1 — Varredura de portas com nc

Edite `desafios/desafio01_nc_scan.sh`. Use `nc -z -v` para verificar se as portas 80 e 443 estão abertas em `google.com` e salve a saída em `respostas/desafio01.txt`.

Execute:

```bash
bash desafios/desafio01_nc_scan.sh
```

---

### Desafio 2 — Banner grabbing

Edite `desafios/desafio02_nc_banner.sh`. Use `nc` com timeout para conectar na porta 80 de `example.com`, envie uma requisição HTTP básica e salve a resposta em `respostas/desafio02.txt`.

Execute:

```bash
bash desafios/desafio02_nc_banner.sh
```

---

### Desafio 3 — Informações de portas locais

Edite `desafios/desafio03_nc_udp.sh`. Use `nc -z -v` para verificar portas comuns (22, 80, 443) no host `localhost` e salve o resultado em `respostas/desafio03.txt`.

Execute:

```bash
bash desafios/desafio03_nc_udp.sh
```

---

### Desafio 4 — Verificar porta com nc e registrar resultado

Edite `desafios/desafio04_nc_http.sh`. Use `nc -z` para verificar a porta 53 em `8.8.8.8` (DNS do Google) e salve o resultado em `respostas/desafio04.txt` indicando se a porta está aberta ou fechada.

Execute:

```bash
bash desafios/desafio04_nc_http.sh
```

---

## ✅ Verificação

Quando terminar todos os desafios:

```bash
bash testes/verificar_desafios.sh
```

---

## ✅ Quiz final: portas

{Quiz 2|assessment}(multiple-choice-6241752544)
