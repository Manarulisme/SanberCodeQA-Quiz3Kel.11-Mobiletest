*** Settings ***
Library    AppiumLibrary

*** Variables ***
${elements}    Load YAML    ${CURDIR}/../../PageObjects/SignInPage/SignIn_Page.yaml
${login_button}    Set Variable    ${elements['elements']['login_button']}
${username_field}    Set Variable    ${elements['elements']['username_field']}
${password_field}    Set Variable    ${elements['elements']['password_field']}
${sign_in_button}    Set Variable    ${elements['elements']['sign_in_button']}
${welcome_text}    Set Variable    ${elements['elements']['welcome_text']}
