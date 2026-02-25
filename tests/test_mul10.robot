*** Setting ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${BASE_URL}    http://192.168.49.2:30080

*** Test Cases ***

Test Mul10 With 5
    [Documentation]   Test the /mul10 endpoint with input 5
    Create Session    api    ${BASE_URL}
    ${response}=    GET On Session    api    /mul10/5
    Should Be Equal As Numbers    ${response.json()}[result]    50

Test Mul10 With Negative
    [Documentation]   Test the /mul10 endpoint with input -5
    Create Session    api    ${BASE_URL}
    ${response}=    GET On Session    api    /mul10/-5
    Should Be Equal As Numbers    ${response.json()}[result]    -50