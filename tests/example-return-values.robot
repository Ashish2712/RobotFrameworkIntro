*** Settings ***


*** Test Cases ***
My Addition Test
    ${sum}=    Add    2    3
    should be equal as integers    5    ${sum}

My Test Case
    ${nickName}=    set variable    Ashish
    Print Profile    ${nickName}    Singh    Kushwah    Software Engineer   ashish2712
    ${nickName}=    Change Nickname    ${nickName}    Davie
    Print Profile    ${nickName}    Singh    Kushwah    Software Engineer    ashish2712

*** Keywords ***
Add
    [Arguments]    ${value1}    ${value2}
    ${value}=    Evaluate    ${value1} + ${value2}
    [Return]    ${value}

Change Nickname
    [Arguments]    ${original}    ${new}
    [Return]    ${new}

Print Profile
    [Arguments]    ${firstName}    ${middleName}    ${lastname}    ${title}    ${twitterHandle}
    log to console    \n__profile__
    log to console    First Name: "${firstName}"
    log to console    Last Name: "${lastName}"
    log to console    Title: "${title}"
    log to console    Twitter Handle: "${twitterHandle}"