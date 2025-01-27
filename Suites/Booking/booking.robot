*** Settings ***
Resource            ../../PageObjects/base.robot
Resource            ../../PageObjects/HomePage/homePage.robot
Resource            ../../PageObjects/SignInPage/SignIn_Keywords.robot
Resource            ../../PageObjects/BookingPage/bookingPage.robot
# Test Setup            Run Keywords            Open Flight Application    AND    Verify Home Screen Appears
# Test Teardown        Close Flight Application

*** Test Cases ***
User should not be able to Booking Flight without Sign In
    Open Flight Application
    Verify Home Screen Appears
    Click Book Button
    Close Flight Application

User should be able to Booking Flight ONE WAY with valid data and additional of flight option
    Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Type Username    username=support@ngendigital.com
    Type Password    password=abc123
    Click Sign In Button
    Verify Welcome Text
    Click Book Button Login
    Click From City Button    city_name=Chicago    # New York, Chichago, Toronto
    Click To City Button    city_name=Ottawa    # London, Paris, Ottawa
    Click Class Button    class_name=Business    # Economy, First, Business
    Fill Start Date    start_date=01 August 2019    # format (month/date/year), but parsing with like this. eg: 06 August 2019
    Fill End Date    end_date=17 August 2019    # format (month/date/year), but parsing with like this. eg: 06 August 2019
    Click Flight Radio Button
    Click Booking Button
    Choose Price to Booking Confirmation    price=3    # the option has 1-9
    Check Already Booking
    Close Flight Application

User should be able to Booking Flight ONE WAY with valid data and additional of flight option also +/- 1 Day
    Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Type Username    username=support@ngendigital.com
    Type Password    password=abc123
    Click Sign In Button
    Verify Welcome Text
    Click Book Button Login
    Click From City Button    city_name=Chicago    # New York, Chichago, Toronto
    Click To City Button    city_name=Ottawa    # London, Paris, Ottawa
    Click Class Button    class_name=Business    # Economy, First, Business
    Fill Start Date    start_date=01 August 2019    # format (month/date/year), but parsing with like this. eg: 06 August 2019
    Fill End Date    end_date=17 August 2019    # format (month/date/year), but parsing with like this. eg: 06 August 2019
    Click Flight Radio Button
    Click 1 Day Checkbox Button
    Click Booking Button
    Choose Price to Booking Confirmation    price=5    # the option has 1-9
    Check Already Booking
    Close Flight Application

User should be able to Booking Flight ONE WAY with valid data and additional of flight and hotel option
    Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Type Username    username=support@ngendigital.com
    Type Password    password=abc123
    Click Sign In Button
    Verify Welcome Text
    Click Book Button Login
    Click From City Button    city_name=Chicago    # New York, Chichago, Toronto
    Click To City Button    city_name=Ottawa    # London, Paris, Ottawa
    Click Class Button    class_name=Business    # Economy, First, Business
    Fill Start Date    start_date=01 August 2019    # format (month/date/year), but parsing with like this. eg: 06 August 2019
    Fill End Date    end_date=17 August 2019    # format (month/date/year), but parsing with like this. eg: 06 August 2019
    Click Flight Hotel Radio Button
    Click Booking Button
    Choose Price to Booking Confirmation    price=7    # the option has 1-9
    Check Already Booking
    Close Flight Application

User should be able to Booking Flight ONE WAY with valid data and additional of flight and hotel option also +/- 1 Day
    Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Type Username    username=support@ngendigital.com
    Type Password    password=abc123
    Click Sign In Button
    Verify Welcome Text
    Click Book Button Login
    Click From City Button    city_name=Chicago    # New York, Chichago, Toronto
    Click To City Button    city_name=Ottawa    # London, Paris, Ottawa
    Click Class Button    class_name=Business    # Economy, First, Business
    Fill Start Date    start_date=01 August 2019    # format (month/date/year), but parsing with like this. eg: 06 August 2019
    Fill End Date    end_date=17 August 2019    # format (month/date/year), but parsing with like this. eg: 06 August 2019
    Click Flight Hotel Radio Button
    Click 1 Day Checkbox Button
    Click Booking Button
    Close Flight Application