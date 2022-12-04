*** Settings ***
Library    DateTime


*** Test Cases ***
Employee Info
    log to console    \n${Name} is working in ${CompanyType}, and he lives in ${Country}

Display Date and Time
    ${date}=      Get Current Date      UTC      exclude_millis=yes
    ${convert}=      Convert Date      ${date}      result_format=%a %B %d %H:%M:%S UTC %Y
    Log      ${convert}      console=yes

Variable inside the test case
    ${name}    set variable    Ashish Singh Kushwah
    ${age}     set variable    29
    ${city}    set variable    Gwalior
    ${state}   set variable    Madhya pradesh
    log to console    \nEmploye name is ${name} and he is ${age} year's old ${\n}and lives in the ${city} and belong to ${state} state.


*** Variables ***
${Name}=    Ashish
${CompanyType}=    IT
${Country}=    India