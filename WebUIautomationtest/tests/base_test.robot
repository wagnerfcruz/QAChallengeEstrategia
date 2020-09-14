*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}          https://www.estrategiaconcursos.com.br/ 

*** Keywords ***

Nova sessão 
        Open Browser                    ${url}      chrome
        Wait Until Element Is Visible       onesignal-slidedown-allow-button
        Wait Until Page Contains Element    onesignal-slidedown-allow-button
        Click Element                       onesignal-slidedown-allow-button
        
Encerra sessão         
        Capture Page Screenshot
        Close Browser
