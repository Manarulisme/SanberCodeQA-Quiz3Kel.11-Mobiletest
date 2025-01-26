*** Settings ***
Resource    ../../PageObjects/SignInPage/SignIn_Keywords.robot

*** Variables ***
${REMOTE_URL}    http://localhost:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    12
${DEVICE_NAME}    Android Emulator
${APP_PACKAGE}    com.example.myapplication
${APP_ACTIVITY}    com.example.myapplication.MainActivity

*** Test Cases ***
Buka Aplikasi dan Klik Sign In
    [Documentation]    Membuka aplikasi dan memverifikasi bahwa aplikasi terbuka dengan benar
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}
    Sleep    5s
    Wait Until Element Is Visible    xpath=//android.widget.Button[@text='Sign In']    10s
    Page Should Contain Text    Sign In

Akses Menu Sign In
    [Documentation]    Mengklik tombol login
    Click Login Button


Positif Sign In Test
    [Documentation]    Mengetik username "support@ngendigital.com" dan password "abc123"
    Sleep    2s
    Type Username    support@ngendigital.com
    Type Password    abc123
    Click Sign In Button
    Verify Welcome Text

Negatif Sign In Test - Username Benar Password Salah
    [Documentation]    Mengetik username "support@ngendigital.com" dan password "abc123"
    Sleep    2s
    Type Username    support@ngendigital.com
    Type Password    def123
    Click Sign In Button
    Page Should Contain Text    Invalid credentials

Negatif Sign In Test - Username Salah Password Benar
    [Documentation]    Mengetik username "nosupport@ngendigital.com" dan password "abc123"
    Sleep    2s
    Type Username    nosupport@ngendigital.com
    Type Password    abc123
    Click Sign In Button
    Page Should Contain Text    Invalid credentials

Negatif Sign In Test - Username Salah Password Salah
    [Documentation]    Mengetik username "abc@ngendigital.com" dan password "def123"
    Sleep    2s
    Type Username    abc@ngendigital.com
    Type Password    def123
    Click Sign In Button
    Page Should Contain Text    Invalid credentials

Negatif Sign In Test - Username Kosong Password Benar
    [Documentation]    Mengetik username "" dan password "abc123"
    Sleep    2s
    Type Username    ${EMPTY}
    Type Password    abc123
    Click Sign In Button
    Page Should Contain Text    Invalid credentials

Negatif Sign In Test - Username Benar Password Kosong
    [Documentation]    Mengetik username "support@ngendigital.com" dan password ""
    Sleep    2s
    Type Username    support@ngendigital.com
    Type Password    ${EMPTY}
    Click Sign In Button
    Page Should Contain Text    Invalid credentials

Negatif Sign In Test - Username Kosong Password Kosong
    [Documentation]    Mengetik username "" dan password ""
    Sleep    2s
    Type Username    ${EMPTY}
    Type Password    ${EMPTY}
    Click Sign In Button
    Page Should Contain Text    Invalid credentials
