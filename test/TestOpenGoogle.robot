
*** Settings ***
Library         Selenium2Library
Test Teardown   Close All Browsers

*** Variables ***
${browser}          chrome

*** Test Cases ***
Open Google
    [Tags]  Smoke
    Open Browser        https://www.google.com/     ${browser}