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

## 🛠️ Estrutura de cada módulo

```
modulo-XX-nome/
├── .codio                    # Configura o layout da tela no Codio
├── .guides/content.md        # Material didático com quizzes e desafios
├── README.md                 # Resumo e instruções do módulo
├── desafios/                 # Scripts que você vai completar
├── respostas/                # Onde as saídas dos desafios são salvas
└── testes/verificar_desafios.sh  # Correção automática — roda ao final
```

## ✅ Como saber se passou

Quando todos os desafios estiverem certos, o terminal vai mostrar:

```bash
✅ TODOS OS DESAFIOS FORAM CONCLUÍDOS
Pontuação: 4/4
```

Se aparecer algo errado, releia o desafio, ajuste o script e tente de novo — faz parte do aprendizado! 💪

## 🎓 Para quem é isso aqui?

Para quem está começando no mundo de Redes de Computadores no curso técnico ou tecnólogo e quer aprender na prática como a internet realmente funciona. Se você usa Wi-Fi, apps ou joga online, tem muito a ver com o que você vai ver aqui!

---

Desenvolvido por GUIPETAV — bons estudos! 🖥️
