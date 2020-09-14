*** Settings ***
Resource        base_test.robot

Test Setup      Nova sessão 
Test Teardown   Encerra sessão 


*** Variables ***
${Minha conta}                  xpath://*[contains(text(),"Minha conta")]



*** Test Cases ***
Acessar Minha conta com e-mail e senha 
    Wait Until Element Is Visible           ${Minha conta}  
    Click Element                           ${Minha conta}
    Input text                              css:input[name=email]   wagner.ferreira@live.com 
    Input text                              css:input[name=senha]   123456
    Click Element                           xpath://*[contains(text(),"Entrar")]
