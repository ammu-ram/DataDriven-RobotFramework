*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/loginKeyword.robot
Suite Setup     Initializing the browser    ${url}    ${browser}
Suite Teardown  disconnecting the browser
Test Template   Scenarios
*** Variables ***
${url}      https://practicetestautomation.com/practice-test-login/
${browser}      chrome

*** Test Cases ***      ${username}     ${password}
Valid Scenario        student         Password123

*** Keywords ***
Scenarios
            verifying the availablity of input elements
            [Arguments]     ${username}         ${password}
            signing into the application    ${username}    ${password}
            verifiying the title of the page
