*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}    http://localhost:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    12
${DEVICE_NAME}    Android Emulator
${APP_PACKAGE}    com.example.myapplication
${APP_ACTIVITY}    com.example.myapplication.MainActivity

*** Test Cases ***
Open Application
    [Documentation]    Membuka aplikasi dan memverifikasi bahwa aplikasi terbuka dengan benar
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}
    Sleep    5s
    Page Should Contain Element    xpath=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

Click Login Button
    [Documentation]    Mengklik tombol login
    Click Element    xpath=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

Type Username
    [Documentation]    Mengetik username "Manarul"
    Sleep    2s
    Input Text    xpath=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    Manarul

*** Keywords ***
Open My Application
    [Arguments]    ${url}    ${platformName}    ${platformVersion}    ${deviceName}    ${appPackage}    ${appActivity}
    Open Application    ${url}    platformName=${platformName}    platformVersion=${platformVersion}    deviceName=${deviceName}    appPackage=${appPackage}    appActivity=${appActivity}