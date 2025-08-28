*** Variables ***
${PIM_MENU}          span.oxd-main-menu-item--name:has-text("PIM")
${ADD_EMPLOYEE_BUTTON}      a:has-text("Add Employee")
${first_name_field}    input[name="firstName"]
${middle_name_field}   input[name="middleName"]
${last_name_field}     input[name="lastName"]
${SAVE_BUTTON}         button:has-text("Save")

*** Keywords ***

Clicar no menu PIM
    Clicar      ${PIM_MENU}        
    
Clicar no botão Add Employee
    Clicar      ${ADD_EMPLOYEE_BUTTON}

Preencher o campo First Name com
    [Arguments]    ${first_name}
    Preencher Campo    ${first_name_field}    ${first_name}

Preencher o campo Middle Name com
    [Arguments]    ${middle_name}
    Preencher Campo    ${middle_name_field}    ${middle_name}

Preencher o campo Last Name com
    [Arguments]    ${last_name}
    Preencher Campo    ${last_name_field}    ${last_name}

Clicar no botão Save
    Clicar      ${SAVE_BUTTON}