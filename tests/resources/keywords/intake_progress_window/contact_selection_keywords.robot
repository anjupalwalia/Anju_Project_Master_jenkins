*** Settings ***
Resource    ../../utils/selenium_utils.robot
Resource    ../../locators/intake_progress_window/contact_selection_locators.robot
*** Keywords ***
Select Supplier Signatory
    Click Element At   ${supplier_signatory_dropdown}
    Wait Until Page Contains Element    ${supplier_signatory_item}
    Click Element    ${supplier_signatory_item}
    Press Keys    ${supplier_signatory_dropdown}    RETURN

Select Negotiation Contact
    Click Element At   ${negotiation_contact_dropdown}
    Wait Until Page Contains Element    ${negotiation_contact_item}
    Click Element    ${negotiation_contact_item}
    Press Keys    ${negotiation_contact_dropdown}    RETURN