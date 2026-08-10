# Módulo 4: Segurança de Redes

Laboratório prático de segurança usando apenas comandos bash.

## Comandos utilizados

- `netstat`
- `ss`
- `nmap`
- `ps`

## Como executar

Edite os arquivos em `desafios/` e execute um por um:

```bash
bash desafios/desafio01_netstat.sh
bash desafios/desafio02_ss.sh
bash desafios/desafio03_nmap.sh
bash desafios/desafio04_ssh.sh
```

Depois execute a verificação:

```bash
bash testes/verificar_desafios.sh
```

## 💡 Dica

Se o `nmap` não estiver instalado no ambiente Codio, execute:

```bash
sudo apt update && sudo apt install -y nmap
```
