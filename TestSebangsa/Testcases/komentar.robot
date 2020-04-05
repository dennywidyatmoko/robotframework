*** Settings ***
Library    SeleniumLibrary
Resource    ../ResourceSbs.robot
Library    String

    
*** Test Cases ***
Komentar
    LoginSBS

    Set Browser Implicit Wait    3
    Click Element    xpath=/html/body/div[1]/div[1]/div[4]/div/div/div[2]/div[2]/div[3]/a
    Set Browser Implicit Wait    3
    ${RANTXT} =  Generate Random String    10  [LETTERS]
    Input Text    id=home_timeline    ${RANTXT}
    Set Browser Implicit Wait    3
    Click Button    id=btn_save_home_timeline    
    Set Browser Implicit Wait    3  
    Get Title     
    Log    sukses post 
    Close Browser

*** Variables ***

   
