*** Settings ***
Library           RequestsLibrary

*** Variables ***
${BASE_URL}       http://localhost:3000
${CHALLENGE_NAME}    score-board

*** Test Cases ***
Score Board endpoint returns 200
    [Documentation]    Call /api/Challenges with name 'Score Board' and expect HTTP 200
    Create Session    juice    ${BASE_URL}
    ${params}=    Create Dictionary    name=${CHALLENGE_NAME}
    ${resp}=    Get On Session    juice    /api/Challenges/    params=${params}
    Should Be Equal As Integers    ${resp.status_code}    200
