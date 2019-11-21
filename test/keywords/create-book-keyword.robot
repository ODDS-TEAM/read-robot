*** Keywords ***
# Click button add book 
#     Page Should Contain         ISBN
#     Click Button                name=isbn

Search ISBN ${isbn_no}
    Wait Until Element Is Visible       name=isbn
    Input Text                          name=isbn        ${isbn_no}
    Click Element                        //*[@id="root"]/div/div/div/div[2]/button

Verify ISBN : ${isbn}
    Wait Until Element Is Visible       name=isbn
    ${response}         Get Value       name=isbn
    Log to console      ${response}
    Should Be Equal     ${response}     ${isbn}

Verify Title book : ${title}
    Wait Until Element Is Visible        //*[@id="root"]/div/div/div/div[3]/div[2]/div[2]/div[1]/input
    ${response}         Get Value        //*[@id="root"]/div/div/div/div[3]/div[2]/div[2]/div[1]/input
    Log to console      ${response}
    Should Be Equal     ${response}     ${title}
    
    
Verify Authors No.1 : ${author1}
    Wait Until Element Is Visible       //*[@id="root"]/div/div/div/div[3]/div[2]/div[2]/div[2]/div[2]/input[1]
    ${response}         Get Value       //*[@id="root"]/div/div/div/div[3]/div[2]/div[2]/div[2]/div[2]/input[1]  
    Log to console      ${response}  
    Should Be Equal     ${response}     ${author1}

Verify Authors No.2 : ${author2}
    Wait Until Element Is Visible       //*[@id="root"]/div/div/div/div[3]/div[2]/div[2]/div[2]/div[2]/input[2]
    ${response}         Get Value       //*[@id="root"]/div/div/div/div[3]/div[2]/div[2]/div[2]/div[2]/input[2] 
    Log to console      ${response}
    Should Be Equal     ${response}     ${author2}

Verify Authors No.3 : ${author3}
    Wait Until Element Is Visible       //*[@id="root"]/div/div/div/div[3]/div[2]/div[2]/div[2]/div[2]/input[3]
    ${response}         Get Value       //*[@id="root"]/div/div/div/div[3]/div[2]/div[2]/div[2]/div[2]/input[3] 
    Log to console      ${response}  
    Should Be Equal     ${response}     ${author3} 

Verify Publishers : ${publishers}
    Wait Until Element Is Visible       //*[@id="root"]/div/div/div/div[3]/div[2]/div[2]/div[3]/div[2]/input
    ${response}         Get Value       //*[@id="root"]/div/div/div/div[3]/div[2]/div[2]/div[3]/div[2]/input
    Log to console      ${response}
    Should Be Equal     ${response}     ${publishers}

Verify Tags : "${tags}"
    Wait Until Element Is Visible       name=tagName
    ${response}         Get Value       name=tagName
    Should Be Equal     ${response}     ${tags}

Fill in Tags : ${tag}
    Wait Until Element Is Visible           name=tagName
    input text                              name=tagName        ${tag}
    press key                               name=tagName        \\13
