*** Settings ***
Library           SeleniumLibrary
Library           SikuliLibrary

*** Variables ***
${url}                 %{ROBOT_URL}
${USER_ROBOT}          %{USER_ROBOT}    
${PASS_ROBOT}          %{PASS_ROBOT}
${sikuliImagesPath}    %{ROBOT_IMAGE_PATH}


*** Keywords ***
Inicia sessão
    Open Browser      ${url}    

Encerra sessão
    Close Browser

