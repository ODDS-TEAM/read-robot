*** Settings ***
Library             SeleniumLibrary
Library             OperatingSystem
Library             BuiltIn
Library             DateTime
Resource            ./keywords/create-book-keyword.robot
Resource            ./keywords/common-keyword.robot

Suite Setup         Go to Home Page
Suite Teardown      Close All Browsers

*** Test Cases ***
Verify when search ISBN : 0201558025 just show detail
    [Tags]      Verify
    Search ISBN 0201558025
    Verify ISBN : 0201558025
    Verify Title book : Concrete mathematics
    Verify Authors No.1 : Ronald L. Graham
    Verify Authors No.2 : Donald Knuth
    Verify Authors No.3 : Oren Patashnik
    Verify Publishers : Addison-Wesley
    Verify Tags : ""

Add book ISBN : 0201558025 for Read Odds
    [Tags]      AddBooks
    Search ISBN 0201558025
    Fill in Tags : math
    Fill in Tags : คณิตศาสตร์
