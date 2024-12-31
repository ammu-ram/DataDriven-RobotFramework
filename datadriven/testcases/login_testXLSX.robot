*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/loginKeyword.robot
Library         DataDriver   ../testdata/datadriven.xlsx    sheet_name=Sheet1

Suite Setup     Initializing the browser    ${url}    ${browser}
Suite Teardown  disconnecting the browser
Test Template   Scenarios
*** Variables ***
${url}      https://practicetestautomation.com/practice-test-login/
${browser}      chrome

*** Test Cases ***
Valid ScenarioXLSX     ${username}     ${password}

*** Keywords ***
Scenarios
            verifying the availablity of input elements
            [Arguments]     ${username}         ${password}
            signing into the application    ${username}    ${password}
            verifiying the title of the page
