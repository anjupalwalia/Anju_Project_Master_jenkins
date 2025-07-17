*** Settings ***
Resource    ../../locators/intake_progress_window/commodity_selection_locators.robot
Resource    ../../variables/intake_progress_window/commodity_selection_variables.robot
Resource    ../../utils/selenium_utils.robot

*** Keywords ***
Select Mandatory Commodity
    [Arguments]    ${mandatory_commodity_value}
    Select Value from Dynamic DropDown    ${mandatory_commodity_dropdown}    ${mandatory_commodity_value}

Select Commodity
    [Arguments]    ${commodity_value}
    Wait Until Page Contains    ${commodity_value}
Select Spend Family
    [Arguments]    ${spend_family_value}
    Wait Until Page Contains    ${spend_family_value}
Select Spend Group
    [Arguments]    ${spend_group_value}
    Wait Until Page Contains    ${spend_group_value}