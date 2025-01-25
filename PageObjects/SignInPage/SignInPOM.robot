*** Settings ***
Library    AppiumLibrary

*** Variables ***
${LOGIN_BUTTON}    xpath=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]
${USERNAME_FIELD}    xpath=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]

*** Keywords ***
Open Application
    [Arguments]    ${remote_url}    ${platform_name}    ${platform_version}    ${device_name}    ${app_package}    ${app_activity}
    Open Application    ${remote_url}    platformName=${platform_name}    platformVersion=${platform_version}    deviceName=${device_name}    appPackage=${app_package}    appActivity=${app_activity}

Click Login Button
    Click Element    ${LOGIN_BUTTON}

Type Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_FIELD}    ${username}