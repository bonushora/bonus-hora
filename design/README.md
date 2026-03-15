# Design do Aplicativo BonusHora

Esta pasta contém a arquitetura visual e os wireframes do aplicativo BonusHora.

O objetivo destes documentos é demonstrar como a interface do sistema será organizada para os diferentes tipos de usuários.

O sistema possui três níveis de acesso:

- Superadministrador
- Administrador
- Usuário (prestadores e clientes)

Cada tipo de usuário possui um painel próprio com permissões e funcionalidades específicas.

Estrutura desta pasta:

- wireframes → arquitetura e estrutura geral do sistema
- superadmin → telas do painel do superadministrador
- admin → telas do painel do administrador
- usuario → telas do painel dos usuários
- system-flow → fluxos operacionais do aplicativo

# BonusHora

Plataforma digital de trocas comunitárias baseada em tempo de trabalho.

BonusHora é um sistema que permite que pessoas troquem serviços utilizando uma unidade de valor baseada em horas de trabalho, fortalecendo economias locais e redes de cooperação.

---

# Objetivo

O objetivo do BonusHora é criar uma infraestrutura digital para:

- facilitar trocas de serviços entre pessoas
- fortalecer economias comunitárias
- registrar transações de forma transparente
- incentivar colaboração e confiança entre participantes

Cada hora de serviço prestado gera um crédito chamado **BonusHora**, que pode ser utilizado para receber outros serviços dentro da rede.

---

# Como funciona

O funcionamento básico da plataforma segue este fluxo:

1. um usuário solicita um serviço
2. um prestador aceita a solicitação
3. o serviço é realizado
4. o cliente confirma a execução
5. o sistema transfere BonusHora para o prestador

Todas as transações ficam registradas no histórico do sistema.

---

# Tipos de usuários

A plataforma possui três níveis de acesso:

## Superadministrador

Responsável pela governança global do sistema.

Funções:

- aprovar administradores
- visualizar todas as transações
- gerar relatórios globais
- configurar parâmetros da plataforma

---

## Administrador

Responsável pela gestão de uma comunidade de usuários.

Funções:

- aprovar prestadores
- aprovar clientes
- cadastrar serviços disponíveis
- monitorar transações
- gerar relatórios operacionais

---

## Usuários (Prestadores e Clientes)

Usuários podem oferecer ou solicitar serviços.

Funcionalidades principais:

- carteira digital BonusHora
- enviar horas
- receber horas
- solicitar serviços
- oferecer serviços
- visualizar histórico de transações
- avaliar outros usuários

---

# Principais funcionalidades

- carteira digital baseada em horas de trabalho
- registro de serviços prestados
- sistema de confirmação de serviços
- histórico completo de transações
- sistema de reputação entre usuários
- painel administrativo
- governança da plataforma

---

# Estrutura do repositório
