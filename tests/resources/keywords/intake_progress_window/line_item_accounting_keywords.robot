*** Settings ***
Resource    ../../locators/intake_progress_window/line_item_accounting_locators.robot
Resource    ../../variables/intake_progress_window/line_item_accounting_variables.robot
Resource    ../../utils/selenium_utils.robot

*** Keywords ***
Select Chart of Accounts
    [Arguments]     ${chart_of_accounts_value}
    Click Element At    ${chart_of_accounts_dropdown}
    Input Text into Text Area    ${chart_of_accounts_dropdown}    ${chart_of_accounts_value}
    Press Keys    ${chart_of_accounts_dropdown}    BACKSPACE
    Clear Element Text    ${chart_of_accounts_dropdown}
    Input Text into Text Area    ${chart_of_accounts_dropdown}    ${chart_of_accounts_value}
    ${chart_of_accounts_item}    Construct Xpath    ${chart_of_accounts_item}    ${chart_of_accounts_value}
    Wait Until Page Contains Element    ${chart_of_accounts_item}
    Click Element At    ${chart_of_accounts_item}
Select Region
    [Arguments]    ${region_value}
    Select from Dynamic DropDown    ${region_dropdown}    ${region_item}    ${region_value}

Select Cost Center
    [Arguments]    ${cost_center_value}
    Select from Dynamic DropDown    ${cost_center_dropdown}    ${cost_center_item}    ${cost_center_value}

Select Product
    [Arguments]    ${product_value}
    Select from Dynamic DropDown    ${product_dropdown}    ${product_item}    ${product_value}

Select Industry
    [Arguments]    ${industry_value}
    Select from Dynamic DropDown    ${industry_dropdown}    ${industry_item}    ${industry_value}

Select Market Segment
    [Arguments]    ${market_segment_value}
    Select from Dynamic DropDown    ${market_segment_dropdown}    ${market_segment_item}    ${market_segment_value}

Select Project
    [Arguments]    ${project_value}
    Select from Dynamic DropDown    ${project_dropdown}    ${project_item}    ${project_value}

Select Location
    [Arguments]    ${location_value}
    Select from Dynamic DropDown    ${location_dropdown}    ${location_item}    ${location_value}

Select from Dynamic DropDown
     [Arguments]    ${dd_locator}    ${item_locator}    ${input_value}
    Clear Element Text    ${dd_locator}
    Click Element At    ${dd_locator}
    Input Text    ${dd_locator}    ${input_value}
    ${item_locator}    Construct Xpath    ${item_locator}    ${input_value}
    Wait Until Page Contains Element    ${item_locator}
    Click Element At    ${item_locator}