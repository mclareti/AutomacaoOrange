Documentation]    Autor: Maria Luiza
...               Descrição: Classe PageObject contendo os locators da pagina
...               Criação 11/11/2022 

*** Variables ***
${ValidaTelaLogin}                xpath=//img[contains(@alt,'company-branding')]
${ValidaLogin}                    xpath=//img[contains(@alt,'client brand banner')]
${InputUserName}                  xpath=//input[contains(@name,'username')]
${InputPassword}                  xpath=//input[contains(@type,'password')]
${PressBtn}                       xpath=//button[@type='submit'][contains(.,'Login')]
${UsernameInvalid}                xpath=//p[@class='oxd-text oxd-text--p oxd-alert-content-text'][contains(.,'Invalid credentials')]