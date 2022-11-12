[Documentation]    Autor: Maria Luiza
...                Descrição: Configurações e funções para automação
...                Criação 11/11/2022 
*** Settings ***
Library                SeleniumLibrary
Library                AutoRecorder
Library                FakerLibrary        locale=pt_BR

*** Variables ***

*** Keywords ***
Print Tela
    SeleniumLibrary.Capture Page Screenshot

Abrir navegador
    [Arguments]                            ${tela}
    Open Browser    ${tela}    chrome
    Maximize Browser Window
    Print Tela

Fechar navegador
    Print Tela
    Close Browser

Aguarda Mais
    Sleep                                  2

Aguarda                    
    Sleep                                  1

Esta Visivel
    [Arguments]                            ${element}
    Wait Until Element Is Visible          ${element}        30

Não Esta Visivel
    [Arguments]                            ${element}
    Wait Until Element Is Visible          ${element}       3

Valida Elemento
    [Arguments]                                    ${element}
    ${status}    Run Keyword And Return Status     Esta Visivel    ${element}
    Aguarda
    Run Keyword If    '${status}' == 'False'    Fatal Error    msg=O Elemento '${element}' não encontrado na tela

Valida que não esta na tela
    [Arguments]                                    ${element}
    ${status}    Run Keyword And Return Status     Não Esta Visivel    ${element}
    Run Keyword If    '${status}' == 'True'        Fatal Error    msg=O Elemento '${element}' não deveria aparecer na tela

Click no Item
    [Arguments]                                    ${item}
    Aguarda
    Valida Elemento                                ${item}
    SeleniumLibrary.Click Element                  ${item}

Preenche Text
    [Arguments]                                    ${input}    ${item}    
    Valida Elemento                                ${input}
    SeleniumLibrary.Input Text                     ${input}    ${item}

Ir Até
    [Arguments]                                    ${element}    
    Valida Elemento                                ${element}
    Scroll Element Into View                       ${element}    
     