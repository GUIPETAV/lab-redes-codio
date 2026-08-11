<<<<<<< HEAD
# 🔗 Módulo 2: HTTP — Como a web funciona por baixo dos panos

Toda vez que você abre um site, assiste a um vídeo ou usa um app, tem uma conversa acontecendo nos bastidores entre o seu dispositivo e um servidor. Essa conversa segue as regras do **HTTP** (HyperText Transfer Protocol).

Neste módulo você vai sair do navegador e fazer essas requisições direto no terminal — igual um dev de verdade! Você vai entender os códigos de resposta, os cabeçalhos e até mandar dados para um servidor. 💪

---

## 📖 Conceitos que você precisa saber

O HTTP funciona no modelo **requisição → resposta**:

- O **cliente** (seu navegador, app ou `curl`) faz um pedido
- O **servidor** responde com dados + um código de status

Os principais **métodos HTTP** são:
- **GET** → "me dá esse conteúdo" (usado quando você abre uma página)
- **POST** → "aqui estão dados para você processar" (formulários, logins)
- **PUT** → "atualize esse dado no servidor"
- **DELETE** → "remova esse dado"

Os **códigos de status** mais famosos:
- `200 OK` — deu tudo certo! ✅
- `301 Moved Permanently` — o conteúdo mudou de endereço
- `404 Not Found` — o famoso "página não encontrada" 😢
- `500 Internal Server Error` — problema no servidor

---

## ✅ Quiz rápido: o famoso 404
=======
# 🌐 Módulo 2: HTTP e Camada de Aplicação

Neste módulo você vai aprender sobre o protocolo HTTP usando comandos do terminal.

---

## 📖 Conceitos iniciais

HTTP (HyperText Transfer Protocol) é o protocolo usado para transferir páginas web, APIs e arquivos.

Principais métodos:
- **GET** → pede um recurso
- **POST** → envia dados
- **PUT** → atualiza dados
- **DELETE** → remove dados

Códigos de status comuns:
- `200 OK`
- `301 Moved Permanently`
- `404 Not Found`
- `500 Internal Server Error`

---

## ✅ Quiz: significado do 404
>>>>>>> origin/main

::multiple-choice::O código HTTP 404 significa:
{
  ~ Servidor sobrecarregado
  ~ Página não encontrada = correto
  ~ Redirecionamento permanente
  ~ Acesso não autorizado
}

---

## 🎯 Desafios

<<<<<<< HEAD
### 🔍 Desafio 1 — Descobrindo o código de status

Edite `desafios/desafio01_curl_status.sh`.

Use `curl` para descobrir o código de status da URL `https://httpbin.org/status/404` e salve em `respostas/desafio01.txt`.

> **Dica:** use `curl -s -o /dev/null -w "%{http_code}"` — o `-s` silencia o progresso, o `-o /dev/null` descarta o corpo e o `-w` mostra só o código.

---

### 🔍 Desafio 2 — Cabeçalhos HTTP

Edite `desafios/desafio02_curl_headers.sh`.

Use `curl -I https://httpbin.org/get` para buscar apenas os **cabeçalhos** da resposta e salve em `respostas/desafio02.txt`.

> **Por que cabeçalhos importam?** Eles trazem informações como tipo de conteúdo, tamanho, cookies e data — são os "metadados" da resposta HTTP.

---

### 🔍 Desafio 3 — Baixando arquivo com wget

Edite `desafios/desafio03_wget_download.sh`.

Use `wget` para baixar o arquivo de `https://httpbin.org/json` e salve como `respostas/desafio03.json`.

> **O que o wget faz?** Ele baixa arquivos da internet pela linha de comando — útil para automação e scripts!

---

### 🔍 Desafio 4 — Enviando dados com POST

Edite `desafios/desafio04_post_json.sh`.

Use `curl` com o método **POST** para enviar um JSON para `https://httpbin.org/post`:

```bash
curl -X POST -H "Content-Type: application/json" -d '{"nome":"aluno","curso":"redes"}' https://httpbin.org/post
```

Salve a resposta em `respostas/desafio04.json`.

> **Isso é igual ao que acontece** quando você faz login em um app: seu dispositivo manda seus dados pro servidor usando POST!

---

## ✅ Verificação final

Terminou tudo? Hora de ver sua nota! 🎉
=======
### Desafio 1 — Status HTTP

Edite `desafios/desafio01_curl_status.sh`.

Use `curl -I` ou `curl -s -o /dev/null -w "%{http_code}"` para descobrir o código de status de `https://httpbin.org/status/404` e salve em `respostas/desafio01.txt`.

---

### Desafio 2 — Cabeçalhos HTTP

Edite `desafios/desafio02_curl_headers.sh`.

Use `curl -I https://httpbin.org/get` para obter os cabeçalhos HTTP e salve em `respostas/desafio02.txt`.

---

### Desafio 3 — Download com wget

Edite `desafios/desafio03_wget_download.sh`.

Use `wget` para baixar o arquivo `https://httpbin.org/json` e salve como `respostas/desafio03.json`.

---

### Desafio 4 — POST JSON

Edite `desafios/desafio04_post_json.sh`.

Use `curl -X POST -H "Content-Type: application/json" -d '{"nome":"aluno","curso":"redes"}'` para enviar dados para `https://httpbin.org/post` e salve a resposta em `respostas/desafio04.json`.

---

## ✅ Verificação
>>>>>>> origin/main

```bash
bash testes/verificar_desafios.sh
```

---

<<<<<<< HEAD
## ✅ Quiz final: enviando dados
=======
## ✅ Quiz final: método para enviar dados
>>>>>>> origin/main

::multiple-choice::Qual método HTTP é usado para enviar dados para um servidor?
{
  ~ GET
  ~ POST = correto
  ~ DELETE
  ~ HEAD
}
