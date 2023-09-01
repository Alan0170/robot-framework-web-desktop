*** Settings ***
Resource        ../../Settings/main.robot
Resource        keywords.robot


Test Setup      Inicia sessão 
Test Teardown   Encerra sessão

*** Test Cases ***

Login com sucesso na instância utilizando o Tsplus Remote App
    [tags]                            essential

    Dado que eu esteja na tela de login de usuário

    E preencho os dados de login    ${USER_ROBOT}    ${PASS_ROBOT}

    E seleciono o cliente para conexão

    Então valido o processo de conexão com o Tsplus Remote App