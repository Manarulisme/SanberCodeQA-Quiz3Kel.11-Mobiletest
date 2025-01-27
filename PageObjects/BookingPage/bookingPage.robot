*** Settings ***
Documentation            Booking page keywords related
Variables                booking-page-locators.yaml

*** Keywords ***
Click Book Button
    Click Element            ${booking_btn}

Click Book Button Login
    Click Element            ${booking_btn_login}

Click From City Button
    [Arguments]            ${city_name}
    Wait Until Element Is Visible            ${from_city_field}
    Click Element            ${from_city_field}
    ${dynamic_locator}=    Set Variable    ${from_city_choose_field.replace('{value}', '${city_name}')}
    Wait Until Element Is Visible            ${dynamic_locator}
    Click Element            ${dynamic_locator}

Click To City Button
    [Arguments]            ${city_name}
    Wait Until Element Is Visible            ${to_city_field}
    Click Element            ${to_city_field}
    ${dynamic_locator}=    Set Variable    ${to_city_choose_field.replace('{value}', '${city_name}')}
    Wait Until Element Is Visible            ${dynamic_locator}
    Click Element            ${dynamic_locator}

Click Class Button
    [Arguments]            ${class_name}
    Wait Until Element Is Visible            ${class_field}
    Click Element            ${class_field}
    ${dynamic_locator}=    Set Variable    ${class_choose_field.replace('{value}', '${class_name}')}
    Wait Until Element Is Visible            ${dynamic_locator}
    Click Element            ${dynamic_locator}

Fill Start Date
    [Arguments]            ${start_date}
    Wait Until Page Contains Element            ${start_date_field}
    Click Element            ${start_date_field}
    ${dynamic_locator}=    Set Variable    ${set_start_date_field.replace('{value}', '${start_date}')}
    Wait Until Page Contains Element            ${dynamic_locator}
    Click Element            ${dynamic_locator}
    Click Element            ${ok_date_button_field}

Fill End Date
    [Arguments]            ${end_date}
    Wait Until Page Contains Element            ${end_date_field}
    Click Element            ${end_date_field}
    ${dynamic_locator}=    Set Variable    ${set_end_date_field.replace('{value}', '${end_date}')}
    Wait Until Page Contains Element            ${dynamic_locator}
    Click Element            ${dynamic_locator}
    Click Element            ${ok_date_button_field}

Click Flight Radio Button
    Click Element            ${option_flight_radio_field}

Click Flight Hotel Radio Button
    Click Element            ${option_flight_hotel_radio_field}

Click 1 Day Checkbox Button
    Click Element            ${option_plus_minus_1_day_checkbox_field}

Click Booking Button
    Click Element            ${book_btn_field}

Choose Price to Booking Confirmation
    [Arguments]            ${price}
    Wait Until Element Is Visible            ${confirm_booking_form_view}
    ${dynamic_locator}=    Set Variable    ${set_price_booking_confirmation.replace('{value}', '${price}')}
    Wait Until Page Contains Element            ${dynamic_locator}
    Click Element            ${dynamic_locator}
    Click Element            ${confirm_booking_confirmation}

Check Already Booking
    Wait Until Element Is Visible            ${after_booking_form_view}