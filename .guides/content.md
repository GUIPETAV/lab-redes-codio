# 🌐 Laboratórios de Redes — Bem-vindo, dev! 🚀

Oi! Se você chegou até aqui é porque quer entender como a internet funciona de verdade — não só na teoria, mas no terminal, com comandos reais.

Nesses laboratórios você vai virar um detetive de redes 🕵️: vai descobrir IPs de sites, ver como os pacotes viajam pela internet, verificar portas abertas e muito mais. Tudo usando o terminal Linux, que é a ferramenta favorita de qualquer profissional de TI.

Aqui você encontrará 10 módulos práticos para aprender redes usando o terminal Linux.

---

## 📚 Módulos

### [🌐 Módulo 1: DNS — A agenda da internet](modulo-01-dns)

Sabe quando você digita `youtube.com` e a página abre? Quem faz esse "milagre" é o DNS. Neste módulo você vai descobrir IPs de sites, servidores de e-mail e configurações de DNS usando `nslookup`, `dig` e `host`. Parece mágica, mas é pura rede! 🧙

### [🔗 Módulo 2: HTTP — Como a web funciona](modulo-02-http)

Toda vez que você abre um site ou usa um app, seu celular manda uma requisição HTTP. Aqui você vai entender esses pedidos e respostas, ver os famosos códigos de erro (como o 404!) e praticar com `curl` e `wget`. É a base de tudo na web.

### [🗺️ Módulo 3: Roteamento — Os caminhos da internet](modulo-03-roteamento)

Como um pacote de dados sai do seu computador e chega até um servidor em outro país? Essa é a magia do roteamento! Você vai usar `ip route`, `traceroute` e `ping` para ver exatamente por onde seus dados viajam.

### [🔒 Módulo 4: Segurança de Redes](modulo-04-seguranca)

Quais portas estão abertas no seu servidor? Quem está se conectando a ele? Isso é o que um profissional de segurança precisa saber todo dia. Você vai aprender a inspecionar conexões e serviços com `netstat`, `ss` e `nmap`.

### [📡 Módulo 5: Camada de Enlace](modulo-05-enlace)

Antes do IP, existe o endereço MAC — o "CPF" da sua placa de rede. Neste módulo você vai trabalhar com a camada mais baixa da comunicação em rede: endereços físicos, tabela ARP e interfaces de rede.

### [🧩 Módulo 6: Sockets TCP/UDP com netcat](modulo-06-sockets)

Você vai criar conexões TCP e UDP no terminal, escanear portas e fazer banner grabbing com `nc` (netcat).

### [🛡️ Módulo 7: Firewall e Controle de Tráfego](modulo-07-firewall)

Você vai inspecionar e entender regras de firewall com `iptables` e `ufw`, aprendendo sobre cadeias, políticas e ações.

### [🌐 Módulo 8: Proxy e Variáveis de Ambiente](modulo-08-proxy)

Você vai configurar e usar proxies no terminal Linux por meio de variáveis de ambiente e opções do `curl`.

### [📶 Módulo 9: Wi-Fi e Redes Sem Fio](modulo-09-wifi)

Você vai inspecionar interfaces Wi-Fi e listar redes disponíveis com `iwconfig`, `iw dev` e `nmcli`.

### [🔐 Módulo 10: VPN e Túneis](modulo-10-vpn)

Você vai explorar túneis de rede, verificar seu IP público e entender como VPNs funcionam com `ip tunnel`, `ip route` e `curl ipinfo.io`.

---

## 🖥️ Como funciona na prática

Cada módulo funciona assim:

1. **Leia** as explicações e os desafios no Guide (painel ao lado)
2. **Edite** os scripts na pasta `desafios/` com os comandos pedidos
3. **Execute** cada script no terminal para ver o resultado
4. **Verifique** sua nota rodando:

```bash
bash testes/verificar_desafios.sh
```

Se aparecer `✅ TODOS OS DESAFIOS FORAM CONCLUÍDOS` — parabéns, você arrasou! 🎉

---

Bons estudos e bora explorar as redes! 🌍

