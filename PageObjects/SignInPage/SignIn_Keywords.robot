*** Settings ***
Library    AppiumLibrary
Library    yaml

*** Variables ***
${elements}    Load YAML    ${CURDIR}/../../PageObjects/SignInPage/SignIn_Page.yaml
${login_button}    Set Variable    ${elements['elements']['login_button']}
${username_field}    Set Variable    ${elements['elements']['username_field']}
${password_field}    Set Variable    ${elements['elements']['password_field']}
${sign_in_button}    Set Variable    ${elements['elements']['sign_in_button']}
${welcome_text}    Set Variable    ${elements['elements']['welcome_text']}

*** Keywords ***
Click Login Button
    Log    ${elements}    # Optional: Log the content of ${elements} for debugging
    Click Element    ${login_button}

Type Username
    [Arguments]    ${username}
    Input Text    ${username_field}    ${username}

Type Password
    [Arguments]    ${password}
    Input Text    ${password_field}    ${password}

Click Sign In Button
    Click Element    ${sign_in_button}

Verify Welcome Text
    Wait Until Element Is Visible    ${welcome_text}    10s
    Page Should Contain Element    ${welcome_text}