*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://www.glassdoor.com.br/
${Browser}    firefox

*** Keywords ***
Dado que um usuário entre no site Glassdoor
    Open Browser    ${URL}   
    Maximize Browser Window
Então logue no sistema
    Wait Until Element Is Visible    //*[@id="inlineUserEmail"]    8s
    Input Text                       //*[@id="inlineUserEmail"]    rafa123456.sqr@hotmail.com
    Wait Until Element Is Visible    //*[@id="InlineLoginModule"]/div/div[1]/div/div/div/div/form/div[2]/button    8s
    Click Element                    //*[@id="InlineLoginModule"]/div/div[1]/div/div/div/div/form/div[2]/button
    Wait Until Element Is Visible    //*[@id="inlineUserPassword"]    8s
    Input Text                       //*[@id="inlineUserPassword"]   XXXXYYYYY
    Wait Until Element Is Visible    //*[@id="InlineLoginModule"]/div/div[1]/div/div/div/div/form/div[2]/button/span    8s
    Click Element                    //*[@id="InlineLoginModule"]/div/div[1]/div/div/div/div/form/div[2]/button/span

E pesquise no site a empresa Google
    Wait Until Element Is Visible    //*[@id="sc.keyword"]    8s
    Input Text                       //*[@id="sc.keyword"]    Google
E clique no botão de buscar
    Wait Until Element Is Visible    //*[@id="scBar"]/div/button    5s
    Click Element                    //*[@id="scBar"]/div/button
E clicar na aba Empresas
    Wait Until Element Is Visible    //*[@id="SiteNav"]/nav[2]/div/div[1]/div[2]/div/a   5s
    Click Element                    //*[@id="SiteNav"]/nav[2]/div/div[1]/div[2]/div/a
Então dedvo digitar novamente Google e buscar
    Wait Until Element Is Visible    //*[@id="companyAutocomplete-companyDiscover-employerSearch"]   5s
    Input Text                       //*[@id="companyAutocomplete-companyDiscover-employerSearch"]    Google
    Wait Until Element Is Visible    //*[@id="companyAutocomplete-companyDiscover-employerSearch"]   5s
    Click Element                    //*[@id="Explore"]/div[2]/div/div/div[2]/button
    Wait Until Element Is Visible    //*[@id="MainCol"]/div/div[1]/div/div[1]/div/div[2]/h2/a   5s
    Click Element                    //*[@id="MainCol"]/div/div[1]/div/div[1]/div/div[2]/h2/a




    
   





