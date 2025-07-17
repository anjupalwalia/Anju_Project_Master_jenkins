*** Settings ***
Resource    ../../utils/selenium_utils.robot
Resource    ../../locators/intake_progress_window/select_supplier_locators.robot
*** Keywords ***
Select Active Supplier
    [Arguments]    ${active_supplier_value}    ${active_supplier_address_value}
    Select Active Supplier from DropDown    ${active_supplier_value}
    Wait Until Page Contains    ${active_supplier_address_value}

Select Active Supplier from DropDown
    [Arguments]    ${active_supplier_value}
    Select Value from Dynamic DropDown    ${active_supplier_dropdown}    ${active_supplier_value}
    ${active_supplier_dropdown_item}    Construct Xpath    ${active_supplier_dropdown_item}     ${active_supplier_value}
    Click Element At    ${active_supplier_dropdown_item}