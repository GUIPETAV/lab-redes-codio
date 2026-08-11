# 🌐 Módulo 8: Proxy e Variáveis de Ambiente

Neste módulo você vai aprender como configurar e usar proxies no Linux usando variáveis de ambiente e o comando `curl`.

---

## 📖 Conceitos iniciais

Um **proxy** é um servidor intermediário que recebe requisições de clientes e as repassa para outros servidores. Ele pode ser usado para:

- Controle de acesso à internet em empresas
- Cache de requisições (melhora performance)
- Anonimização de tráfego
- Filtragem de conteúdo

No Linux, as variáveis de ambiente controlam o uso do proxy por aplicações de linha de comando:

- `http_proxy` ou `HTTP_PROXY`: proxy para tráfego HTTP
- `https_proxy` ou `HTTPS_PROXY`: proxy para tráfego HTTPS
- `no_proxy` ou `NO_PROXY`: lista de hosts que não devem usar proxy

Formato da variável: `******servidor:porta`

O `curl` respeita essas variáveis automaticamente, ou você pode especificar um proxy manualmente com `--proxy` ou `-x`:

```bash
curl --proxy http://proxy.exemplo.com:3128 https://site.com
```

Para verificar as variáveis de proxy ativas:

```bash
env | grep -i proxy
```

---

## ✅ Quiz: variável de proxy

{Quiz 1|assessment}(multiple-choice-8293453178)

---

## 🎯 Desafios

### Desafio 1 — Listar variáveis de proxy

Edite `desafios/desafio01_env_proxy.sh`. Use `env` para listar todas as variáveis de ambiente relacionadas a proxy e salve em `respostas/desafio01.txt`.

Execute:

```bash
bash desafios/desafio01_env_proxy.sh
```

---

### Desafio 2 — Requisição curl com informações de IP

Edite `desafios/desafio02_curl_proxy.sh`. Use `curl` para obter informações sobre o IP público atual via `https://ifconfig.me` e salve em `respostas/desafio02.txt`.

Execute:

```bash
bash desafios/desafio02_curl_proxy.sh
```

---

### Desafio 3 — Requisição sem proxy

Edite `desafios/desafio03_curl_noproxy.sh`. Use `curl --noproxy "*"` para fazer uma requisição ignorando qualquer proxy configurado e salve em `respostas/desafio03.txt`.

Execute:

```bash
bash desafios/desafio03_curl_noproxy.sh
```

---

### Desafio 4 — Informações de ambiente de rede

Edite `desafios/desafio04_proxy_info.sh`. Exporte a variável `http_proxy` com um valor de exemplo, execute `env | grep -i proxy` e salve em `respostas/desafio04.txt`.

Execute:

```bash
bash desafios/desafio04_proxy_info.sh
```

---

## ✅ Verificação

Quando terminar todos os desafios:

```bash
bash testes/verificar_desafios.sh
```

---

## ✅ Quiz final: opção curl

{Quiz 2|assessment}(multiple-choice-6756332150)
