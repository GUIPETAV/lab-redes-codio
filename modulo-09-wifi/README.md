# Módulo 9: Wi-Fi e Redes Sem Fio

Laboratório prático de redes usando apenas comandos bash.

## Comandos utilizados

- `iwconfig`
- `iw`
- `nmcli`

## Como executar

Edite os arquivos em `desafios/` e execute um por um:

```bash
bash desafios/desafio01_iwconfig.sh
bash desafios/desafio02_iw_dev.sh
bash desafios/desafio03_nmcli_dev.sh
bash desafios/desafio04_nmcli_wifi.sh
```

Depois execute a verificação:

```bash
bash testes/verificar_desafios.sh
```

## 💡 Dica

Instale as ferramentas necessárias se precisar:

```bash
sudo apt-get install wireless-tools iw network-manager -y
```
