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

::multiple-choice::O código HTTP 404 significa:
{
  ~ Servidor sobrecarregado
  ~ Página não encontrada = correto
  ~ Redirecionamento permanente
  ~ Acesso não autorizado
}

---

## 🎯 Desafios

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

```bash
bash testes/verificar_desafios.sh
```

---

## ✅ Quiz final: método para enviar dados

::multiple-choice::Qual método HTTP é usado para enviar dados para um servidor?
{
  ~ GET
  ~ POST = correto
  ~ DELETE
  ~ HEAD
}
