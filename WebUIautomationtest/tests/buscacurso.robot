*** Settings ***
Resource        base_test.robot

Test Setup      Nova sessão 
Test Teardown   Encerra sessão 



*** Variables ***
${buscaprofessor}               xpath://*[contains(text(),"Por professor")]
${profena}                      xpath://*[contains(text(),"Ena Loiola")]
${Assinatura2anos}              xpath://*[contains(text(),"Básica 2 Anos")]
${valorparcelado}               xpath://*[contains(text(),"12x de R$ 139,90")]
${valortotal}                   xpath://*[contains(text(),"R$ 1.678,80")]


*** Test Cases ***
Utilizar a busca "Por Professor"
    Wait Until Element Is Visible           ${buscaprofessor}  
    Click Element                           ${buscaprofessor}  

Acessar os cursos da professora "Ena Loiola"
    Wait Until Element Is Visible           ${buscaprofessor}  
    Click Element                           ${buscaprofessor}     
    Wait Until Element Is Visible           ${profena} 
    Click Element                           ${profena}      

Validação do valor do curso da listagem de cursos bate com o valor da página de detalhes
    Wait Until Element Is Visible           ${buscaprofessor}  
    Click Element                           ${buscaprofessor}     
    Wait Until Element Is Visible           ${profena} 
    Click Element                           ${profena}                     
    Wait Until Element Is Visible           ${Assinatura2anos}
    Click Element                           ${Assinatura2anos}
    Element Should Be Visible               ${valortotal}

Validação do valor parcelado do curso bate com o valor total do curso
    Wait Until Element Is Visible           ${buscaprofessor}  
    Click Element                           ${buscaprofessor}     
    Wait Until Element Is Visible           ${profena} 
    Click Element                           ${profena}                     
    Wait Until Element Is Visible           ${Assinatura2anos}
    Click Element                           ${Assinatura2anos}
    Element Should Be Visible               ${valorparcelado}