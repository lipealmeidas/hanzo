*** Settings ***
Documentation       Test Keywords File

Resource            ../config/package.resource


*** Keywords ***
Clear Input Fields
    [Documentation]    Limpa os campos de primeiro e segundo número.
    Clear Text  ${fist_number}
    Clear Text  ${second_number}

Given The Calculator App Is Open
    [Documentation]    Short description.
    Wait Until Element Is Visible  ${homepage_app}

And I Input The First Number As "${number}"
    [Documentation]    Short description.
    ...
    ...  Args:
    ...    ${number}: <description>
    Input Text  ${fist_number}  ${number}

And I Input The Second Number As "${number}"
    [Documentation]    Short description.
    ...
    ...  Args:
    ...    ${number}: <description>
    Input Text  ${second_number}    ${number}

When I Press The "SUM" Button
    [Documentation]    Short description.
    Click Element       ${sum}
    Clear Input Fields

Then The Result Should Display "${expected_result}"
    [Documentation]    Short description.
    ...
    ...  Args:
    ...    ${expected_result}: <description>
    ${value}    Get Text    ${results}
    Should Be Equal As Numbers  ${value}  ${expected_result}

When I Press The "SUBTRACT" Button
    [Documentation]    Short description.
    Click Element       ${subtract}
    Clear Input Fields

When I Press The "MULTIPLY" Button
    [Documentation]    Short description.
    Click Element       ${multiply}
    Clear Input Fields

When I Press The "DIVIDE" Button
    [Documentation]    Short description.
    Click Element       ${divide}
    Clear Input Fields

Then The App Should Display An Appropriate Error Message Or Handle The Division By Zero Case Correctly
    [Documentation]    Short description.
    ${value}            Get Text    ${results}
    Should Be Equal     ${value}    ${cannot_divide}

Then The App Should Display An Appropriate Error Message Or Handle The Empty Input Fields Correctly
    [Documentation]    Short description.
    Page Should Contain Element  ${empty_message}
