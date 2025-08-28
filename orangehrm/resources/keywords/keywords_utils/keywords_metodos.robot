*** Keywords ***
Abrir Navegador
    [Arguments]   ${BASE_URL}    ${navegador}
    New Browser    ${navegador}      headless=${True}    
    New Context
    New Page    ${BASE_URL}

Clicar
    [Arguments]   ${elemento}
    Wait For Elements State    ${elemento}    visible    timeout=10s
    Click    ${elemento}

Preencher Campo
    [Arguments]   ${elemento}    ${texto}
    Wait For Elements State    ${elemento}    visible    timeout=10s
    Fill Text    ${elemento}    ${texto}

Fechar Navegador
    Close Browser

Validar Texto
    [Arguments]   ${elemento}    ${texto}
    Wait For Elements State    ${elemento}    visible    timeout=10s
    Element Text Should Be    ${elemento}    ${texto}

Verificar Existencia de Texto
    [Arguments]   ${texto}
    ${elementos}=    Get Elements    text=${texto}
    ${quantidade}=   Get Length      ${elementos}
    Run Keyword If   ${quantidade} >= 1    Log    "${quantidade} elemento(s) encontrado(s) com o texto '${texto}'"
    Run Keyword If   ${quantidade} < 1     Fail   "Nenhum elemento encontrado com o texto '${texto}'"

Verificar Existencia de elemento
    [Arguments]   ${elemento}
    Wait For Elements State    ${elemento}    visible    timeout=10s

Fazer Login
    Abrir a pagina de login
    Preencher o campo Username com     Admin
    Preencher o campo Password com     admin123
    Clicar no botão Login