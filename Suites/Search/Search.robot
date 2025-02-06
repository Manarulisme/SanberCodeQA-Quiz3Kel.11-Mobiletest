# Booking Id 
# CADX2214
# Featur by Fahry


*** Settings ***
Library    AppiumLibrary

*** Variables ***

*** Keywords ***
Open My App
    Open Application    remote_url=http://127.0.0.1:4723/wd/hub    
    ...    platformName=Android    
    ...    platformVersion=10.0    
    ...    deviceName=629b2467
    ...    automationName=UiAutomator2
    ...    appPackage=com.example.myapplication
    ...    appActivity=com.example.myapplication.MainActivity

Verify Home Screen Appears
    Wait Until Page Contains Element    //android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]

Click Sign In Button On Home Screen
    Wait Until Element Is Visible    //android.widget.Button[@resource-id="com.example.myapplication:id/login"]    timeout=10s
    Click Element    //android.widget.Button[@resource-id="com.example.myapplication:id/login"]

Click Form Name
    Input Text    //android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    support@ngedigital.com
    Input Password    //android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    abc123

Click Sign In Button
    Click Element    //android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]


Click Button Search Flight
    Click Element    //android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]

Close flight Application 
    Close Application

*** Test Cases ***

Login
    Open My App
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Click Form Name
    Click Sign In Button
    Click Button Search Flight
    Close flight Application