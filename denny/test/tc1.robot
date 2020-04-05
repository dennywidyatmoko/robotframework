*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resource1.robot

Suite Setup    Log    saya ada di Suite setup    
Suite Teardown    Log    saya ada di suite teardown    
Test Setup    Log    Saya ada di test setup    
Test Teardown    Log    saya ada di test teardown     

*** Test Cases ***
Login
    Log    hello  
FirstSelenium
    LoginKW
    Set Browser Implicit Wait    3
    Element Text Should Be    id=welcome    Welcome Admin
    Sleep    3    
    Click Element      id=welcome
    Set Browser Implicit Wait    3
    Click Element    link=Logout             
    Log    sukses ini running headless hlo    
    Close Browser
    #Log    ditest oleh    %{username} dan %{OS}
SecondTest
    Log    halo ini test keempat    

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