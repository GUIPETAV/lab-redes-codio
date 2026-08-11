# Módulo 7: Firewall e Controle de Tráfego

Laboratório prático de redes usando apenas comandos bash.

## Comandos utilizados

- `iptables`
- `iptables -L` (listar regras)
- `ufw` (Uncomplicated Firewall)
- `ufw status`

## Como executar

Edite os arquivos em `desafios/` e execute um por um:

```bash
bash desafios/desafio01_iptables_list.sh
bash desafios/desafio02_ufw_status.sh
bash desafios/desafio03_iptables_policy.sh
bash desafios/desafio04_ufw_rules.sh
```

Depois execute a verificação:

```bash
bash testes/verificar_desafios.sh
```

## 💡 Dica

Alguns comandos requerem permissão de administrador. Caso não tenha `sudo`, verifique com:

```bash
sudo -l
```

Para instalar o ufw:

```bash
sudo apt-get install ufw -y
```
