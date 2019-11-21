*** Keywords ***
Click button add book 
    Wait Until Element Is Visible       //*[@id="root"]/div[1]/a[2]/img
    Click Element                        //*[@id="root"]/div[1]/a[2]/img

Search ISBN ${isbn_no}
    Wait Until Element Is Visible       name=isbn
    Input Text                          name=isbn        ${isbn_no}
    Click Element                        //*[@id="root"]/div[2]/div/div/div/div[2]/button

Verify ISBN : ${isbn}
    Wait Until Element Is Visible       name=isbn
    ${response}         Get Value       name=isbn
    Log to console      ${response}
    Should Be Equal     ${response}     ${isbn}

Verify Title book : ${title}
    Wait Until Element Is Visible        name=title
    ${response}         Get Value        name=title
    Log to console      ${response}
    Should Be Equal     ${response}     ${title}
    
    
Verify Authors No.1 : ${author1}
    Wait Until Element Is Visible       //*[@id="root"]/div[2]/div/div/div/div[3]/div[2]/div[2]/div[2]/div[2]/input[1]
    ${response}         Get Value       //*[@id="root"]/div[2]/div/div/div/div[3]/div[2]/div[2]/div[2]/div[2]/input[1]
    Log to console      ${response}  
    Should Be Equal     ${response}     ${author1}

Verify Authors No.2 : ${author2}
    Wait Until Element Is Visible       //*[@id="root"]/div[2]/div/div/div/div[3]/div[2]/div[2]/div[2]/div[2]/input[2]
    ${response}         Get Value       //*[@id="root"]/div[2]/div/div/div/div[3]/div[2]/div[2]/div[2]/div[2]/input[2]
    Log to console      ${response}
    Should Be Equal     ${response}     ${author2}

Verify Authors No.3 : ${author3}
    Wait Until Element Is Visible       //*[@id="root"]/div[2]/div/div/div/div[3]/div[2]/div[2]/div[2]/div[2]/input[3]
    ${response}         Get Value       //*[@id="root"]/div[2]/div/div/div/div[3]/div[2]/div[2]/div[2]/div[2]/input[3]
    Log to console      ${response}  
    Should Be Equal     ${response}     ${author3} 

Verify Publishers : ${publishers}
    Wait Until Element Is Visible       //*[@id="root"]/div[2]/div/div/div/div[3]/div[2]/div[2]/div[3]/div[2]/input
    ${response}         Get Value       //*[@id="root"]/div[2]/div/div/div/div[3]/div[2]/div[2]/div[3]/div[2]/input
    Log to console      ${response}
    Should Be Equal     ${response}     ${publishers}

Verify Tags : "${tags}"
    Wait Until Element Is Visible       name=tagName
    ${response}         Get Value       name=tagName
    Should Be Equal     ${response}     ${tags}

Show message error : ${message}
    Wait time 3s
    Element Should Contain              //*[@id="root"]/div[2]/div/div/div/div[3]/div[1]        ${message}

# name duplicate
Fill in ISBN : ${isbn_no}
    Wait Until Element Is Visible       name=isbn        
    Input Text                          name=isbn        ${isbn_no}        

Fill in Title : ${title}
    Wait Until Element Is Visible       name=title
    Input Text                          name=title        ${title}        

Fill in Author : ${author}
    Wait Until Element Is Visible       name=author        
    Input Text                          name=author        ${author}
    press key                           name=author        \\13

Fill in Publishers : ${publishers}
    Wait Until Element Is Visible       //*[@id="root"]/div[2]/div/div/div/div[3]/div[2]/div[2]/div[2]/div[3]/div[2]/input
    Input Text                          //*[@id="root"]/div[2]/div/div/div/div[3]/div[2]/div[2]/div[2]/div[3]/div[2]/input          ${publishers}

Fill in Tags : ${tag}
    Wait Until Element Is Visible           name=tagName
    input text                              name=tagName        ${tag}
    press key                               name=tagName        \\13
