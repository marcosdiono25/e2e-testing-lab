*** Settings ***
Resource    ../../resources/central/resources.robot

*** Test Cases ***
Adicionar um novo empregado com sucesso
    [Tags]    happy_path    CT_006   pim
    Fazer Login
    Clicar no menu PIM
    Clicar no botão Add Employee
    Preencher o campo First Name com     Marcos
    Preencher o campo Middle Name com    Dion
    Preencher o campo Last Name com      Silva
    Clicar no botão Save
    Verificar Existencia de elemento    h6:has-text("Personal Details")
    Fechar Navegador

Adicionar um novo empregado sem preencher campos obrigatórios
    [Tags]    sad_path    CT_007   pim
    Fazer Login
    Clicar no menu PIM
    Clicar no botão Add Employee
    Clicar no botão Save
    Verificar Existencia de Texto    Required
    Fechar Navegador

Adicionar um novo empregado com primeiro nome muito longo
    [Tags]    sad_path    CT_008   pim
    Fazer Login
    Clicar no menu PIM
    Clicar no botão Add Employee
    Preencher o campo First Name com     Marcosmarcosmarcosmarcosmarcosmarcosmarcosmarcos
    Preencher o campo Middle Name com    Dion
    Preencher o campo Last Name com      Silva
    Clicar no botão Save
    Verificar Existencia de Texto    Should not exceed 30 characters
    Fechar Navegador

Adicionar um novo empregado com sobrenome muito longo
    [Tags]    sad_path    CT_009   pim
    Fazer Login
    Clicar no menu PIM
    Clicar no botão Add Employee
    Preencher o campo First Name com     Marcos
    Preencher o campo Middle Name com    Dion
    Preencher o campo Last Name com      Silvasilvasilvasilvasilvasilvasilva
    Clicar no botão Save
    Verificar Existencia de Texto    Should not exceed 30 characters
    Fechar Navegador

Adicionar um novo empregado com nome do meio muito longo
    [Tags]    sad_path    CT_010   pim
    Fazer Login
    Clicar no menu PIM
    Clicar no botão Add Employee
    Preencher o campo First Name com     Marcos
    Preencher o campo Middle Name com    Diondiondiondiondiondiondiondion
    Preencher o campo Last Name com      Silva
    Clicar no botão Save
    Verificar Existencia de Texto    Should not exceed 30 characters
    Fechar Navegador    