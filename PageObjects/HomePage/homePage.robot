*** Settings ***
Documentation            Home page keywords related
Variables                home-page-locators.yaml

*** Keywords ***
Verify Home Screen Appears
    Wait Until Element Is Visible    locator=${app_icon_image}

Click Sign In Button On Home Screen
    Click Element            locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]