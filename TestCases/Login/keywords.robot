*** Settings ***
Resource        ..//TestCases//Login//elements.robot
Resource        ../../Settings/main.robot

*** Variables ***


*** Keywords ***

# keywords do caso de testes
Dado que eu esteja na tela de login de usuário
    Go To                             ${url} 

  
E preencho os dados de login
    [Arguments]                      ${name}    ${pass}

    SeleniumLibrary.Input Text       email    ${name}
    SeleniumLibrary.Input Text       senha    ${pass}
    SeleniumLibrary.Click Button                     ${btnSubmit}


E seleciono o cliente para conexão
    SeleniumLibrary.Wait Until Element Is Visible    ${btnSelectClient}    10s
    SeleniumLibrary.Click Element                    ${btnSelectClient}
    SeleniumLibrary.Wait Until Element Is Visible    ${clientTestLogin}    10s
    SeleniumLibrary.Click Element                    ${clientTestLogin}
    SeleniumLibrary.Wait Until Element Is Visible    ${btnSubmit}
    SeleniumLibrary.Click Button                     ${btnSubmit}

    Clicar no botão de opção do remote App

    Validar se o ambiente possui instância disponível

    ${isBtnFirstAccessVisible}=    Run Keyword and Return Status    Verificar se o botão de primeiro acesso foi exibido
    Run Keyword If    ${isBtnFirstAccessVisible}  Clicar no botão primeiro acesso 


Então valido o processo de conexão com o Tsplus Remote App
    Carregar as imagens do fluxo de conexão do Plugin
    SikuliLibrary.Click                            ${btnOpenPluginFirefox}
    SikuliLibrary.Wait Until Screen Contain        ${InitRemoteAppIcon}    40    
    SikuliLibrary.Wait Until Screen Contain        ${loadingAppsImage}    40
    SikuliLibrary.Wait Until Screen Contain        ${windowAppsRoboMicroPiloto}    60
    SikuliLibrary.Wait Until Screen Contain        ${notepadApp}    60
    SikuliLibrary.Double Click                     ${notepadApp}
    SikuliLibrary.Wait Until Screen Contain        ${notepadOpened}    60
    SikuliLibrary.Wait Until Screen Contain        ${btnCloseNotepad}    60
    SikuliLibrary.Click                            ${btnCloseNotepad}    
    SikuliLibrary.Wait Until Screen Contain        ${btnClosePlatform}    40
    SikuliLibrary.Click                            ${btnClosePlatform}
    SikuliLibrary.Wait Until Screen Contain        ${btnConfirmClosePlatform}    40
    SikuliLibrary.Click                            ${btnConfirmClosePlatform}
    

# Keywords gerais
Carregar as imagens do fluxo de conexão do Plugin
    SikuliLibrary.Add Image Path    ${EXECDIR}${sikuliImagesPath}

Verificar se o botão de primeiro acesso foi exibido
    SeleniumLibrary.Element Should Be Visible    ${btnNotFirstAccess}

Clicar no botão primeiro acesso
    SeleniumLibrary.Click Button    ${btnNotFirstAccess}

Clicar no botão de opção do remote App
    SeleniumLibrary.Click Button    ${btnSelectTsplusRemoteApp}


Validar se o ambiente possui instância disponível
    # Verifica se o elemento com a contagem de tempo ${timerClockInstance} existe
    ${elementExists}=    Run Keyword And Return Status    Element Should Be Visible    ${timerClockInstance}

    # Se o elemento existe, executa a próxima Keyword e espera até que a página não contenha mais o elemento
    Run Keyword If    ${elementExists}    Wait Until Page Does Not Contain Element    ${timerClockInstance}    600
    
    # Realiza a ação de clicar na opção remote app
    Run Keyword If    ${elementExists}    Clicar no botão de opção do remote App
