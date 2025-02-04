*** Settings ***
Resource        ../../PageObjects/SearchPage/searchPage.robot
Resource        ../../PageObjects/SignInPage/SignIn_Keywords.robot

*** Variables ***
${REMOTE_URL}    http://localhost:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    9
${DEVICE_NAME}    emulator-5554
${APP_PACKAGE}    com.example.myapplication
${APP_ACTIVITY}    com.example.myapplication.MainActivity

*** Keywords ***

# Open Flight Application
# Verify Screen Appears
# Click Search
# Close Application

Open Flight Application
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...    platformName=Android    
    ...    platformVersion=9    
    ...    deviceName=emulator-5554    
    ...    appPackage=com.example.myapplication    
    ...    appActivity=com.example.myapplication.MainActivity

Verify Home Screen Appears
    Wait Until Element Is Visible    locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]

Click Sign In Button
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

Click Search
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/button6" and @text="Search"]

Close Flight Application
    Close All Applications
    


*** Test Cases ***

User perform searches without Sign In
    Open Flight Application
    Verify Home Screen Appears
    Click Search
    Close Flight Application

User perform searches with Sign In
    Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button
    Type Username    username=support@ngendigital.com
    Type Password    password=abc123
    Click Search
    Close Flight Application