*** Settings ***
Library    SeleniumLibrary
 
*** Variables ***
${URL}    http://sebangsa.com
${Browser}    headlessfirefox 
@{CREDENTIALS}    testrobot    testrobot123
&{LOGINDATA}    username=testrobot    pass=testrobot123

*** Test Cases ***
LoginSBS
   Open Browser    ${URL}    ${Browser}
   Set Browser Implicit Wait    3
   Click Element    id=dropbtn-login 
   Set Browser Implicit Wait    3   
   Input Text    id=username    @{CREDENTIALS}[0]
   Input Text    id=password    &{LOGINDATA}[pass]
   Click Element   xpath=/html/body/div[1]/div[1]/div[3]/div[1]/div[1]/div/div[1]/div/div/div/div/form/p[2]/button
   Set Browser Implicit Wait    3
   Log    login sukses       
   Close Browser    
         

  