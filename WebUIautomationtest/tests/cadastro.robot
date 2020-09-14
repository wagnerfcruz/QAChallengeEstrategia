*** Settings ***
Resource        base_test.robot

Test Setup      Nova sessão 
Test Teardown   Encerra sessão 

Library    Dialogs


*** Variables ***
${Minha conta}                  xpath://*[contains(text(),"Minha conta")]



*** Test Cases ***
Cadastro de novo usuário
    Wait Until Element Is Visible           ${Minha conta}  
    Click Element                           ${Minha conta}
    Click Element                           xpath://*[contains(text(),"Cadastre-se agora!")]
    Input text                              id:cadastro_nome                    Wagner Ferreira Cruz
    Input text                              id:cadastro_email                   Wagner.ferreira@live.com
    Input text                              id:cadastro_senha                   123456
    Input text                              id:cadastro_senha_confirma          123456
    Pause Execution                         QA, Realize o CAPTCHA manualmente e clique em OK para continuar o teste.
    Click Element                           css:input[name=csrf_form_token]
 
