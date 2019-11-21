*** Variables ***
${url}              http://read.odds.team/
${browser}          chrome

*** Keywords ***

Go to Home Page
    Open Browser            ${url}       ${browser}
    Set Selenium Speed      0.1seconds
    Maximize Browser Window

Wait time ${time}
    Sleep                   ${time}