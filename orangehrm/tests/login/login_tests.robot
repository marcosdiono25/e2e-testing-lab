*** Settings ***
Resource    ../../resources/central/resources.robot

*** Test Cases ***
Login com credenciais válidas
    [Tags]    happy_path    CT_001     login
    Abrir a pagina de login
    Preencher o campo Username com     Admin
    Preencher o campo Password com     admin123
    Clicar no botão Login
    Verificar Existencia de elemento    span.oxd-main-menu-item--name:has-text("Dashboard")
    Fechar Navegador

Login com senha incorreta
    [Tags]    sad_path    CT_002    login
    Abrir a pagina de login
    Preencher o campo Username com     Admin
    Preencher o campo Password com     admin456
    Clicar no botão Login
    Verificar Existencia de Texto    Invalid credentials
    Fechar Navegador

Login com usuario incorreto
    [Tags]    sad_path    CT_003    login
    Abrir a pagina de login
    Preencher o campo Username com     Marcos
    Preencher o campo Password com     admin123
    Clicar no botão Login
    Verificar Existencia de Texto    Invalid credentials
    Fechar Navegador

Login com campos vazios
    [Tags]    sad_path    CT_004    login
    Abrir a pagina de login
    Clicar no botão Login
    Verificar Existencia de Texto    Required
    Fechar Navegador

Login com senha maiúscula (case sensitive)
    [Tags]    sad_path    CT_005    login
    Abrir a pagina de login
    Preencher o campo Username com     Admin
    Preencher o campo Password com     ADMIN123
    Clicar no botão Login
    Verificar Existencia de Texto    Invalid credentials
    Fechar Navegador