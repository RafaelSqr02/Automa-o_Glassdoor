*** Settings ***
Documentation    Acesso ao Site Glassdoor
Resource         aut_glassdoor.robot
#Test Setup       Dado que um usuário entre no site Glassdoor



*** Test Cases ***
Caso de teste 01 - Acesso ao site Glassdoor
    Dado que um usuário entre no site Glassdoor
    Então logue no sistema
    
Caso de teste 02 - Pesquise a empresa Google
    E pesquise no site a empresa Google
    E clique no botão de buscar
    E clicar na aba Empresas
    Então dedvo digitar novamente Google e buscar