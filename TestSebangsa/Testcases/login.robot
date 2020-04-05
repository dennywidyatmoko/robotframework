*** Settings ***
Library    SeleniumLibrary    
Resource    ../ResourceSbs.robot

*** Test Cases ***
Login
    LoginSBS
    Set Browser Implicit Wait   3
    Close Browser
    
