*** Settings ***
Library    ../lib/json_files.py

*** Test Cases ***
Reading a file
    ${path}=    set variable    /Users/ashish/PycharmProjects/pythonProject/RobotFrameworkIntro/Resources/data.json
    ${output}=    Read A Json File   ${path}
    log to console    ${\n}${output}

adding n numbers
    ${total}=    adding n numbers    ${a}   ${b}    ${c}    ${d}
    log to console    \nsum of n numbers is ${\n}${total}


*** Variables ***
${a}=    1
${b}=    2
${c}=    3
${d}=    4