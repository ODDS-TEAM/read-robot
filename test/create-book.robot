*** Settings ***
Library             Selenium2Library
Library             OperatingSystem
Library             BuiltIn
Library             DateTime
Resource            ./keywords/create-book-keyword.robot
Resource            ./keywords/common-keyword.robot

Test Setup          Run Keywords        Go to Home Page
    ...             AND                 Click button add book
Test Teardown      Close All Browsers

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
    Wait time 2s
    Fill in Tags : math
    Fill in Tags : คณิตศาสตร์

กรณีกรอก ISBN : 1234567890 แต่ไม่มีข้อมูลหนังสือ 
    [Tags]      AddBooks1
    Search ISBN 1234
    Show message error : Not Found ISNB No. 1234
    # Fill in ISBN : 1234
    Fill in Title : Bridging the communication gap
    Fill in Author : wowwww
    Fill in Publishers : yeah!
    Fill in Tags : tester
    Fill in Tags : Bra~
