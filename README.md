# 🌐 Laboratórios de Redes para Codio

Repositório com laboratórios interativos de Redes de Computadores para uso na plataforma [Codio](https://codio.com).

Os alunos resolvem desafios práticos usando **apenas comandos bash no terminal Linux**, como no Git Bash, e os scripts de verificação corrigem automaticamente.

## 📚 Módulos disponíveis

| Módulo | Tema | Comandos principais |
|--------|------|---------------------|
| [modulo-01-dns](modulo-01-dns) | DNS e resolução de nomes | `nslookup`, `dig`, `host`, `/etc/resolv.conf` |
| [modulo-02-http](modulo-02-http) | HTTP e camada de aplicação | `curl`, `wget` |
| [modulo-03-roteamento](modulo-03-roteamento) | Roteamento e camada de rede | `ip addr`, `ip route`, `traceroute`, `ping` |

## 🚀 Como usar

1. Importe cada pasta de módulo como um projeto separado no Codio
2. O arquivo `.codio` configura o layout automático (guide + terminal + editor)
3. Os alunos leem as instruções no Guide e executam os desafios no terminal
4. Ao final, executam `bash testes/verificar_desafios.sh` para verificar a nota

## 🛠️ Estrutura de cada módulo

```
modulo-XX-nome/
├── .codio                    # Layout automático da tela
├── .guides/content.md        # Material didático interativo
├── README.md                 # Instruções do módulo
├── desafios/                 # Scripts bash para os alunos completarem
├── respostas/                # Arquivos gerados pelos alunos
└── testes/verificar_desafios.sh  # Correção automática
```

## ✅ Critério de aprovação

O script de verificação deve exibir:

```bash
✅ TODOS OS DESAFIOS FORAM CONCLUÍDOS
Pontuação: 4/4
```

## 🎓 Público-alvo

Estudantes de cursos técnicos e superiores de Redes de Computadores que estejam aprendendo a usar o terminal Linux e comandos de rede.

---

Desenvolvido por GUIPETAV
