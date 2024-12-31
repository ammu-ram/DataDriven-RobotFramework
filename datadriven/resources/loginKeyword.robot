*** Settings ***
Library     SeleniumLibrary
Variables   ../pom/loginPage.py

*** Keywords ***
Initializing the browser
        [Arguments]     ${url}      ${browser}
        Open Browser    ${url}      ${browser}
verifying the availablity of input elements
        Page Should Contain Element    ${ele1}
        Page Should Contain Element    ${ele2}
signing into the application
        [Arguments]     ${username}     ${password}
        Input Text    ${ele1}    ${username}
        Input Text    ${ele2}    ${password}
        Click Element    ${ele3}
verifiying the title of the page
        Title Should Be    Logged In Successfully | Practice Test Automation
logging out from the application
        Click Element    ${ele4}
disconnecting the browser
        Close All Browsers
