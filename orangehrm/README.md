# Projeto de Automação OrangeHRM

## Visão Geral

Este projeto automatiza os principais fluxos do sistema OrangeHRM usando Robot Framework com a biblioteca Browser. O foco está nos módulos Login e PIM (Personal Information Management), garantindo que os principais processos de RH funcionem corretamente em cenários happy path e sad path.

## Tecnologias Utilizadas

* Robot Framework
* Browser Library (Playwright)
* Python
* Git


## Fluxos Automatizados

### Módulo Login

* # Login com credenciais válidas
* # Login com senha incorreta
* # Login com usuário incorreto
* # Login com campos vazios
* # Login com senha maiúscula (case sensitive)

### Módulo PIM

* # Adicionar novo empregado com sucesso
* # Adicionar novo empregado sem preencher campos obrigatórios
* # Adicionar empregado com nome muito longo
* # Adicionar empregado com sobrenome muito longo
* # Adicionar empregado com nome do meio muito longo

Cada caso de teste valida visualmente a tela após ações críticas, garantindo que mensagens de erro ou sucesso sejam exibidas corretamente.

## Como Rodar os Testes

1. # Instalar dependências:

```
pip install robotframework
pip install robotframework-browser
rfbrowser init
```

2. # Executar todos os testes:

```
robot tests/
```

3. # Executar testes de um módulo específico:

```
robot tests/login_tests.robot
robot tests/pim_tests.robot
```

4. # Relatórios gerados automaticamente:

* # report.html → Relatório completo
* # log.html → Log detalhado
* # output.xml → Arquivo de saída padrão

## Estrutura de Tags

* # happy\_path → Testes de fluxo positivo
* # sad\_path → Testes de fluxo negativo
* # login → Testes do módulo Login
* # pim → Testes do módulo PIM

As tags permitem execução seletiva dos casos de teste.

## Boas Práticas do Projeto

* # Separação de keywords, variáveis e test cases.
* # Validação de elementos antes e depois de ações críticas.
* # Padronização de nomes de testes e tags.
* # Mensagens claras e assertivas para facilitar debugging.

## Próximos Passos

* # Automatizar Employee List, Edit Employee, Delete Employee e Reports.
* # Implementar testes de integração entre módulos.
* # Adicionar testes de API para cobertura completa de backend.
