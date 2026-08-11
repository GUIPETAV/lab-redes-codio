# 📶 Módulo 9: Wi-Fi e Redes Sem Fio

Neste módulo você vai aprender a inspecionar interfaces Wi-Fi e gerenciar conexões sem fio no Linux usando `iwconfig`, `iw` e `nmcli`.

---

## 📖 Conceitos iniciais

As **redes sem fio** (Wi-Fi) usam ondas de rádio para transmitir dados. No Linux, você pode gerenciá-las pelo terminal.

- **SSID** (Service Set Identifier): o nome da rede Wi-Fi.
- **BSSID**: o endereço MAC do ponto de acesso (roteador).
- **Frequência**: redes Wi-Fi operam em 2.4 GHz ou 5 GHz.
- **Modo**: a interface pode operar como cliente (Managed), ponto de acesso (Master) ou monitor (Monitor).

Ferramentas principais:

- `iwconfig`: exibe informações de interfaces sem fio (SSID, potência do sinal, frequência).
- `iw dev`: versão mais moderna do iwconfig.
- `nmcli`: interface de linha de comando para o NetworkManager, usado para listar redes e gerenciar conexões.

Para listar redes Wi-Fi disponíveis:

```bash
nmcli device wifi list
```

Para ver o status das interfaces de rede:

```bash
nmcli device status
```

---

## ✅ Quiz: ferramenta Wi-Fi

{Quiz 1}(assessment)

---

## 🎯 Desafios

### Desafio 1 — iwconfig

Edite `desafios/desafio01_iwconfig.sh`. Use `iwconfig` para mostrar as informações de todas as interfaces sem fio e salve em `respostas/desafio01.txt`.

Execute:

```bash
bash desafios/desafio01_iwconfig.sh
```

---

### Desafio 2 — iw dev

Edite `desafios/desafio02_iw_dev.sh`. Use `iw dev` para listar as interfaces sem fio e suas informações e salve em `respostas/desafio02.txt`.

Execute:

```bash
bash desafios/desafio02_iw_dev.sh
```

---

### Desafio 3 — nmcli device status

Edite `desafios/desafio03_nmcli_dev.sh`. Use `nmcli device status` para listar todas as interfaces de rede gerenciadas pelo NetworkManager e salve em `respostas/desafio03.txt`.

Execute:

```bash
bash desafios/desafio03_nmcli_dev.sh
```

---

### Desafio 4 — nmcli wifi list

Edite `desafios/desafio04_nmcli_wifi.sh`. Use `nmcli device wifi list` para listar as redes Wi-Fi disponíveis e salve em `respostas/desafio04.txt`.

Execute:

```bash
bash desafios/desafio04_nmcli_wifi.sh
```

---

## ✅ Verificação

Quando terminar todos os desafios:

```bash
bash testes/verificar_desafios.sh
```

---

## ✅ Quiz final: frequência Wi-Fi

{Quiz 2}(assessment)
