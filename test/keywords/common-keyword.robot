*** Variables ***
# ${url}              http://read.odds.team/
${url}              http://localhost:3000/findbook
${browser}          chrome

*** Keywords ***

Go to Home Page
    Open Browser            ${url}       ${browser}
    Set Selenium Speed      0.1seconds
    Maximize Browser Window

Wait time ${time}
    Sleep                   ${time}