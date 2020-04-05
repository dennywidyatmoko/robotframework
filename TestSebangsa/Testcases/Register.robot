*** Settings ***
Library    SeleniumLibrary
Library    String    

*** Test Cases ***
Register
    Open Browser    http://sebangsa.com    firefox
    Set Browser Implicit Wait    2
    Click Button    id=dropbtn-register    
    Set Browser Implicit Wait    3
    ${username} =  Generate Random String    10  [LETTERS]
    Input Text    id=reg_username    ${username}
    ${email} =  Generate Random String    10  [LETTERS]
    Input Text    id=reg_email    ${email}@mailinator.com
    Input Text    id=reg_password    123456    
    Input Text    id=password_conf   123456
    Click Element    xpath=/html/body/div[1]/div[1]/div[3]/div[1]/div[1]/div/div[2]/div/div/div/div/form/p[2]/button
    Set Browser Implicit Wait    3
    Close Browser
    
    
