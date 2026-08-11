<<<<<<< HEAD
# 🌐 Laboratórios de Redes — Aprenda de Verdade no Terminal!

Fala, pessoal! 👋 Bem-vindos ao repositório de laboratórios de Redes de Computadores para a plataforma [Codio](https://codio.com).

Aqui você não vai só ler teoria — você vai **colocar a mão na massa** usando comandos reais no terminal Linux. É o tipo de coisa que profissionais de TI usam todo dia no trabalho. Bora aprender junto? 🚀

## 📚 Módulos disponíveis

| Módulo | Tema | O que você vai fazer |
|--------|------|----------------------|
| [modulo-01-dns](modulo-01-dns) | DNS — a "agenda" da internet | Descobrir IPs de sites com `nslookup`, `dig`, `host` |
| [modulo-02-http](modulo-02-http) | HTTP — como a web funciona | Fazer requisições com `curl` e `wget`, entender status codes |
| [modulo-03-roteamento](modulo-03-roteamento) | Roteamento — caminhos da internet | Ver rotas e testar conexões com `ip route`, `traceroute`, `ping` |
| [modulo-04-seguranca](modulo-04-seguranca) | Segurança de redes | Inspecionar portas e serviços com `netstat`, `ss`, `nmap` |
| [modulo-05-enlace](modulo-05-enlace) | Camada de enlace — a base física | Trabalhar com endereços MAC e tabela ARP com `ip link`, `arp` |

## 🚀 Como funciona cada módulo

1. **Abra o módulo** desejado no Codio — o layout já fica organizado automaticamente
2. **Leia o Guide** (painel ao lado) com as explicações e os desafios
3. **Edite os scripts** na pasta `desafios/` e execute no terminal
4. **Verifique sua nota** rodando o script de correção automática:

```bash
bash testes/verificar_desafios.sh
```
=======
# 🌐 Laboratórios de Redes para Codio

Repositório com laboratórios interativos de Redes de Computadores para uso na plataforma [Codio](https://codio.com).

Os alunos resolvem desafios práticos usando **apenas comandos bash no terminal Linux**, como no Git Bash, e os scripts de verificação corrigem automaticamente.

## 📚 Módulos disponíveis

| Módulo | Tema | Comandos principais |
|--------|------|---------------------|
| [modulo-01-dns](modulo-01-dns) | DNS e resolução de nomes | `nslookup`, `dig`, `host`, `/etc/resolv.conf` |
| [modulo-02-http](modulo-02-http) | HTTP e camada de aplicação | `curl`, `wget` |
| [modulo-03-roteamento](modulo-03-roteamento) | Roteamento e camada de rede | `ip addr`, `ip route`, `traceroute`, `ping` |
| [modulo-04-seguranca](modulo-04-seguranca) | Segurança de redes | `netstat`, `ss`, `nmap`, `ps` |
| [modulo-05-enlace](modulo-05-enlace) | Camada de enlace | `ip link`, `arp`, `ifconfig`, MAC address |
| [modulo-06-sockets](modulo-06-sockets) | Sockets TCP/UDP com netcat | `nc` |
| [modulo-07-firewall](modulo-07-firewall) | Firewall e controle de tráfego | `iptables`, `ufw` |
| [modulo-08-proxy](modulo-08-proxy) | Proxy e variáveis de ambiente | `curl`, `http_proxy`, `https_proxy` |
| [modulo-09-wifi](modulo-09-wifi) | Wi-Fi e redes sem fio | `iwconfig`, `iw`, `nmcli` |
| [modulo-10-vpn](modulo-10-vpn) | VPN e túneis | `ip tunnel`, `curl ipinfo.io` |

## 🚀 Como usar

1. Importe cada pasta de módulo como um projeto separado no Codio
2. O arquivo `.codio` configura o layout automático (guide + terminal + editor)
3. Os alunos leem as instruções no Guide e executam os desafios no terminal
4. Ao final, executam `bash testes/verificar_desafios.sh` para verificar a nota
>>>>>>> origin/main

## 🛠️ Estrutura de cada módulo

```
modulo-XX-nome/
<<<<<<< HEAD
├── .codio                    # Configura o layout da tela no Codio
├── .guides/content.md        # Material didático com quizzes e desafios
├── README.md                 # Resumo e instruções do módulo
├── desafios/                 # Scripts que você vai completar
├── respostas/                # Onde as saídas dos desafios são salvas
└── testes/verificar_desafios.sh  # Correção automática — roda ao final
```

## ✅ Como saber se passou

Quando todos os desafios estiverem certos, o terminal vai mostrar:
=======
├── .codio                    # Layout automático da tela
├── .guides/content.md        # Material didático interativo
├── README.md                 # Instruções do módulo
├── desafios/                 # Scripts bash para os alunos completarem
├── respostas/                # Arquivos gerados pelos alunos
└── testes/verificar_desafios.sh  # Correção automática
```

## ✅ Critério de aprovação

O script de verificação deve exibir:
>>>>>>> origin/main

```bash
✅ TODOS OS DESAFIOS FORAM CONCLUÍDOS
Pontuação: 4/4
```

<<<<<<< HEAD
Se aparecer algo errado, releia o desafio, ajuste o script e tente de novo — faz parte do aprendizado! 💪

## 🎓 Para quem é isso aqui?

Para quem está começando no mundo de Redes de Computadores no curso técnico ou tecnólogo e quer aprender na prática como a internet realmente funciona. Se você usa Wi-Fi, apps ou joga online, tem muito a ver com o que você vai ver aqui!

---

Desenvolvido por GUIPETAV — bons estudos! 🖥️
=======
## 🎓 Público-alvo

Estudantes de cursos técnicos e superiores de Redes de Computadores que estejam aprendendo a usar o terminal Linux e comandos de rede.

---

Desenvolvido por GUIPETAV
>>>>>>> origin/main
