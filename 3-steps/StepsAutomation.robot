Documentation]    Autor: Maria Luiza
...               Descrição: Implementação das keywords dos testes
...               Criação 11/11/2022 


*** Settings ***
Resource                ../1- framework/FrameworkAutomation.robot
Resource                ../2- page/PageAutomation.robot


*** Keywords ***
 Dado que acesso o site Orangehrm
    Aguarda
    Print Tela
    Valida Elemento    ${ValidaTelaLogin}

Quando preencho username "${user}" e password "${senha}"
    Preenche Text            ${InputUserName}       ${user}
    Preenche Text            ${InputPassword}       ${senha}
    Print Tela

Então aperto o botão e valido que o login foi realizado com sucesso
    Click no Item            ${PressBtn}
    Aguarda 
    Print Tela
    Valida Elemento        ${ValidaLogin}

Então aperto o botão e valido a mensagem de erro "${msg}"
    Click no Item            ${PressBtn}
    Aguarda 
    Print Tela
    Valida Elemento        ${UsernameInvalid}
 

    
    



    






