*** Settings ***
Library    SeleniumLibrary
Library    DateTime
Resource    ../../locators/intake_progress_window/request_information_procurement_request_locators.robot
Resource    ../../utils/selenium_utils.robot


*** Keywords ***
Enter On Behalf Of Details    
    [Arguments]    ${on_behalf_of}
    Select Yes for On Behalf of DropDown
    Enter On Behalf of Name    ${on_behalf_of}
Enter PIR name
    # Capture Page Screenshot
    Input Text into Text Area    ${pir_name}    ${text}

Select Ship To Address
    [Arguments]    ${ship_to_address_value}
    # Capture Page Screenshot
    Click Element At    ${ship_to_address}
    Input Text into Text Area    ${ship_to_address}    ${ship_to_address_value}
    Page Should Not Contain    //div[@class='status']
    ${ship_to_address_dropdown}    Construct Xpath    ${ship_to_address_dropdown}    ${ship_to_address_value}
    Wait Until Page Contains Element    ${ship_to_address_dropdown}
    Mouse Over    ${ship_to_address_dropdown}
    Mouse Down    ${ship_to_address_dropdown}
    Press Keys    ${ship_to_address}    ARROW_DOWN
    Press Keys    ${ship_to_address}    RETURN    
Enter Individual Name
    # Capture Page Screenshot
    Log    Selenium
Enter Purchase Description
    # Capture Page Screenshot
    Input Text into Text Area    ${purchase_description}    ${text}
Enter Business Reason & Impact
    # Capture Page Screenshot
    Input Text into Text Area    ${business_reason_impact}    ${text}
Enter Negotiation Details
    # Capture Page Screenshot
    Input Text into Text Area    ${negotiation_details}    ${text}

Select Yes for On Behalf of DropDown
    Click Element At    ${on_behalf_of_dropdown}
    Click Element At    ${on_behalf_of_yes}
    
Enter On Behalf of Name    
    [Arguments]    ${on_behalf_of}
    Input Text into Text Area    ${on_behalf_of_user_search_input}    ${on_behalf_of}
    ${on_behalf_of_user_search_results_value}    Construct Xpath    ${on_behalf_of_user_search_results_value}    ${on_behalf_of}
    Click Element At    ${on_behalf_of_user_search_results_value}