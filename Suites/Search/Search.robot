# Booking Id : DA935
# Featur by Muhammad-Fahry


*** Settings ***
Library    AppiumLibrary

*** Variables ***

*** Keywords ***
Open My App
    Open Application    remote_url=http://127.0.0.1:4723/wd/hub    
    ...    platformName=Android    
    ...    platformVersion=11.0    
    ...    deviceName=M2101K7BNY
    ...    automationName=UiAutomator2
    ...    appPackage=com.example.myapplication
    ...    appActivity=com.example.myapplication.MainActivity

Verify Home Screen Appears
    Wait Until Page Contains Element    //android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]

Click Sign In Button On Home Screen
    Wait Until Element Is Visible    //android.widget.Button[@resource-id="com.example.myapplication:id/login"]    timeout=10s
    Click Element    //android.widget.Button[@resource-id="com.example.myapplication:id/login"]

Input Form Name
    wait until page contains element    //android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    timeout=15s
    Input Text    //android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    support@ngendigital.com
    Input Password   //android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    abc123

Click Sign In Button
    wait until page contains element    //android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]    timeout=15s
    Click Element    //android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]
    

Click Button Search Flight
    wait until page contains element    //android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]    timeout=15s
    Click Element    //android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]

Input Search Flight
    wait until page contains element    //android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]    timeout=15s
    Input Text    //android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]    DA935

Click Button Search
    wait until page contains element    //android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]    timeout=15s
    Click Element    //android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]

Close flight Application 
    Close Application

*** Test Cases ***

Login
    Open My App
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Form Name
    Click Sign In Button
    Click Button Search Flight
    Close flight Application

Search
    Open My App
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Form Name
    Click Sign In Button
    Click Button Search Flight
    Input Search Flight
    Click Button Search
    Close flight Application