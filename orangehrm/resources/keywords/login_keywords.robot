*** Variables ***
${USERNAME_FIELD}    input[name="username"]
${PASSWORD_FIELD}    input[name="password"]
${LOGIN_BUTTON}      button:has-text("Login")

*** Keywords ***
Abrir a pagina de login
    Abrir Navegador    ${BASE_URL}    ${navegador}

Preencher o campo Username com
    [Arguments]    ${username}     
    Preencher Campo    ${USERNAME_FIELD}     ${username}
    
Preencher o campo Password com
    [Arguments]    ${password}
    Preencher Campo    ${PASSWORD_FIELD}    ${password}

Clicar no botão Login
    Clicar    ${LOGIN_BUTTON}
