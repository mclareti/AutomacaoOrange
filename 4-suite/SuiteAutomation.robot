Documentation]    Autor: Maria Luiza
...               Descrição: Suites com implementacao dos casos de testes em gherkin
...               Criação 11/11/2022 


*** Settings ***
Documentation                 Essa suite testa o site OrangeHRM
Resource                      ../1- framework/FrameworkAutomation.robot                                
Resource                      ../2- page/PageAutomation.robot
Resource                      ../3-steps/StepsAutomation.robot

Test Setup                    Abrir navegador    ${URL}  
Test Teardown                 Fechar navegador


*** Variables ***
${URL}              https://opensource-demo.orangehrmlive.com/web/index.php/auth/login


*** Test Cases ***
# robot -t "CT01-Login Com Sucesso" -d ./5-reports/CT01 "4-suite\SuiteAutomation.robot"
CT01-Login Com Sucesso
    Dado que acesso o site Orangehrm
    Quando preencho username "Admin" e password "admin123"
    Então aperto o botão e valido que o login foi realizado com sucesso

# robot -t "CT02- Tentativa de Login Usuario Invalido" -d ./5-reports/CT02 "4-suite\SuiteAutomation.robot"
CT02- Tentativa de Login Usuario Invalido
    Dado que acesso o site Orangehrm
    Quando preencho username "Luiza" e password "admin123"
    Então aperto o botão e valido a mensagem de erro "Invalid credentials"

    