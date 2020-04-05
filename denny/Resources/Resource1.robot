*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${Browser}    headlessFirefox
${URL}    https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    admin    admin123
&{LOGINDATA}    username=admin    pass=admin123

*** Keywords ***
LoginKW
    Open Browser    ${URL}    ${Browser}
    Set Browser Implicit Wait    3
    Input Text    name=txtUsername    @{CREDENTIALS}[0]
    Input Text    name=txtPassword    &{LOGINDATA}[pass]    
    Click Button    id=btnLogin


