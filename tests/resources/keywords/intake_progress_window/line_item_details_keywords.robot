*** Settings ***
Resource    ../../utils/selenium_utils.robot
Resource    ../../locators/intake_progress_window/line_item_details_locators.robot
Resource    ../../variables/intake_progress_window/line_item_details_variables.robot
Resource    ../../utils/common_utils.robot
*** Keywords ***
Enter Item Description
    [Arguments]    ${item_description_value}
    ${date}    Get Current Date
   Input Text into Text Area    ${item_description_input}    ${item_description_value}${date}
Select Invoice Type
    [Arguments]    ${invoice_type}
    ${invoice_radio_button}    Construct Xpath    ${invoice_radio_button}    ${invoice_type}
    Click Element At    ${invoice_radio_button}
Enter Amount/Quantity Details
    [Arguments]    ${invoice_type_value}    ${amount_value}    ${quantity_value}
    ...    ${uom_value}    ${unit_price_value}    ${currency_value}
    IF    '${invoice_type_value}'=='Amount'
        Enter Amount    ${amount_value}
    ELSE IF    '${invoice_type_value}'=='Quantity'
        Enter Quantity    ${quantity_value}
        Enter Unit Price    ${unit_price_value}
        Enter Unit of Measure    ${uom_value}
    END
Enter Amount
    [Arguments]    ${amount_value}
    Input Text into Text Area    ${amount_input}    ${amount_value}
Enter Quantity
    [Arguments]    ${quantity_value}
    Input Text into Text Area    ${quantity_input}    ${quantity_value}
Enter Unit Price
    [Arguments]    ${unit_price_value}
    Input Text into Text Area    ${unit_price_input}    ${unit_price_value}
Enter Unit of Measure
    [Arguments]    ${uom_value}
    Click Element At    ${unit_of_measure_button}
    ${unit_of_measure_item}    Construct Xpath    ${unit_of_measure_item}    ${uom_value}
    Wait Until Page Contains Element    ${unit_of_measure_item}
    Click Element At    ${unit_of_measure_item}
Select Currency
    [Arguments]    ${currency_value}
    ${currency_item}    Construct Xpath    ${currency_item}    ${currency_value}
    Click Element At    ${currency_dropdown}
    Wait Until Page Contains Element    ${currency_item}
    Click Element At    ${currency_item}
Select Need By Date
    [Arguments]    ${need_by_date_value}
    Click Element At    ${need_by_date_dropdown}
    #since we are able to type in the date we are sending the input to dropdown
    ${date}    Delay Days By    5 days
    Input Text into Text Area    ${need_by_date_dropdown}    ${date}
Select Service Start Date
    [Arguments]    ${service_start_date_value}
    Click Element At    ${service_start_date_dropdown}
    #since we are able to type in the date we are sending the input to dropdown
    ${date}    Delay Days By    2 days
    Input Text into Text Area    ${service_start_date_dropdown}    ${date}
Select Service End Date
    [Arguments]    ${service_end_date_value}
   Click Element At    ${service_end_date_dropdown}
    #since we are able to type in the date we are sending the input to dropdown
    ${date}    Delay Days By    3 days
    Input Text into Text Area    ${service_end_date_dropdown}    ${date}
Select Installation Service Site
    [Arguments]    ${ship_to_address_value}
    Log    message
Verify Auto Populated Fields
    Log    message
Select Reason for Late Submission
    [Arguments]    ${reason_for_late_submission_value}
    Click Element At    ${reason_for_late_submission_dropdown}
    ${reason_for_late_submission_item}    Construct Xpath    ${reason_for_late_submission_item}    ${reason_for_late_submission_value}
    Wait Until Page Contains Element    ${reason_for_late_submission_item}
    Click Element At    ${reason_for_late_submission_item}
Select Invoice Type for mixlines
    [Arguments]    ${invoice_type}    ${second_invoice_type_value}
    IF     '${second_invoice_type_value}'=='Quantity'

   ${invoice_radio_button}    Construct Xpath    ${invoice_radio_button}    ${second_invoice_type_value}
      Click Element At    ${invoice_radio_button}
    ELSE 
     ${invoice_radio_button}    Construct Xpath    ${invoice_radio_button}    ${invoice_type}
      Click Element At    ${invoice_radio_button}
    END
Enter Amount/Quantity Details for Mix lines
    [Arguments]    ${invoice_type_value}    ${amount_value}    ${quantity_value}    ${second_invoice_type_value}
    ...    ${uom_value}    ${unit_price_value}    ${currency_value}
    IF    '${second_invoice_type_value}'=='Amount'
        Enter Amount    ${amount_value}
    ELSE IF    '${second_invoice_type_value}'=='Quantity'
        Enter Quantity    ${quantity_value}
        Enter Unit Price    ${unit_price_value}
        Enter Unit of Measure    ${uom_value}    
    END  


Select Reason for Donation
    ${Reason_for_Donation_Checkbox}    Construct Xpath    ${Reason_for_Donation_Checkbox}    ${Reason_for_Donation_value}
    Click Element At  ${Reason_for_Donation_Checkbox}

Select Region of recipient
    ${region_for_recipient_item}    Construct Xpath    ${region_for_recipient_item}      ${region_for_recipient_value}
    Click Element At    ${region_for_recipient_dropdown}
    Wait Until Page Contains Element    ${region_for_recipient_item}
    Click Element At    ${region_for_recipient_item}    

Select Business Sponsor's Name
    Input Text into Text Area    ${Business_Sponsor's_Name}     ${Business_Sponsor_Name_Value}

Select the Philanthropy Team help you select or vet the donation?
    ${Did_the_Philanthropy_Team_help_item}      Construct Xpath    ${Did_the_Philanthropy_Team_help_item}      ${Did_the_Philanthropy_Team_help_value}
    Click Element At    ${Did_the_Philanthropy_Team_help_dropdown} 
    Wait Until Page Contains Element    ${Did_the_Philanthropy_Team_help_item} 
    Click Element At    ${Did_the_Philanthropy_Team_help_item} 

Did any of the following groups help you select or vet the donation
    ${group_vet_or_select_donation_checkbox}    Construct Xpath    ${group_vet_or_select_donation_checkbox}     ${group_vet_or_select_donation_value}
      Click Element At      ${group_vet_or_select_donation_checkbox}

Is this donation being used as a substitute for a gift or as an incentive?
    ${substitute_for_a_gift_or_as_an_incentive_item}    Construct Xpath   ${substitute_for_a_gift_or_as_an_incentive_item}     ${substitute_for_a_gift_or_as_an_incentive_value}
    Click Element At    ${substitute_for_a_gift_or_as_an_incentive_dropdown}
    Wait Until Page Contains Element    ${substitute_for_a_gift_or_as_an_incentive_item} 
    Click Element At    ${substitute_for_a_gift_or_as_an_incentive_item} 

SDG Impact Field Checkbox
    ${SDG_Impact_Field_Checkbox_Locator}    Construct Xpath    ${SDG_Impact_Field_Checkbox_Locator}    ${SDG_Impact_Field_Value}
    Click Element At    ${SDG_Impact_Field_Checkbox_Locator}

Are you aware of any restrictions being placed on the use of this grant/donation?
    ${Requirements_and_Obligations_item}    Construct Xpath   ${Requirements_and_Obligations_item}       ${Requirements_and_Obligations_Value}
    Click Element At    ${Requirements_and_Obligations_dropdown}
    Wait Until Page Contains Element    ${Requirements_and_Obligations_item}
    Click Element At    ${Requirements_and_Obligations_item}

Please outline how the recipient can use the funds
    Input Text into Text Area    ${outline_how_the_recipient_can_use}     ${outline_how_the_recipient_can_use_value}

Select Marketing and Publicity
    ${Marketing_and_Publicity_item}     Construct Xpath     ${Marketing_and_Publicity_item}    ${Marketing_and_Publicity_value}
    Click Element At    ${Marketing_and_Publicity_dropdown}
    Wait Until Page Contains Element    ${Marketing_and_Publicity_item} 
    Click Element At   ${Marketing_and_Publicity_item} 

Select Ethics & Integrity Questionnaire
    ${Ethics_&_Integrity_Questionnaire_item}     Construct Xpath     ${Ethics_&_Integrity_Questionnaire_item}    ${Integrity_Questionnaire_Value}
    Click Element At    ${Ethics_&_Integrity_Questionnaire_dropdown}
    Wait Until Page Contains Element    ${Ethics_&_Integrity_Questionnaire_item} 
    Click Element At   ${Ethics_&_Integrity_Questionnaire_item} 

Did anyone solicit this donation on behalf of the recipient to the employee responsible for selecting this charity?
    ${Did_anyone_solicit_this_donation_item}      Construct Xpath     ${Did_anyone_solicit_this_donation_item}    ${Did_anyone_solicit_this_donation_value}
    Click Element At    ${Did_anyone_solicit_this_donation_dropdown}
    Wait Until Page Contains Element    ${Did_anyone_solicit_this_donation_item}  
    Click Element At   ${Did_anyone_solicit_this_donation_item}  
    
Are you aware of any recently negotiated or currently pending deals with the recipient or anyone
    ${Are_you_aware_ofany_currently_pending_item}      Construct Xpath     ${Are_you_aware_ofany_currently_pending_item}    ${Are_you_aware_ofany_currently_pending_value}
    Click Element At   ${Are_you_aware_ofany_currently_pending_dropdown} 
    Wait Until Page Contains Element    ${Are_you_aware_ofany_currently_pending_item}  
    Click Element At   ${Are_you_aware_ofany_currently_pending_item}   

Does anyone else involved in this donation have a business or family connection to the recipient
   ${Donation_have_a_business_or_family_connection_item}       Construct Xpath     ${Donation_have_a_business_or_family_connection_item}       ${Donation_have_a_business_or_family_connection_value}  
    Click Element At  ${Donation_have_a_business_or_family_connection_dropdown} 
    Wait Until Page Contains Element    ${Donation_have_a_business_or_family_connection_item}  
    Click Element At   ${Donation_have_a_business_or_family_connection_item} 

promised or offeredanything inexchange for this donation dropdown
    ${promised_or_offered_anything_in_exchange_for_this_donation_item}        Construct Xpath     ${promised_or_offered_anything_in_exchange_for_this_donation_item}        ${promised_or_offered_anything_in_exchange_for_this_donation_value}   
    Click Element At  ${promised_or_offered_anything_in_exchange_for_this_donation_dropdown}
    Wait Until Page Contains Element    ${promised_or_offered_anything_in_exchange_for_this_donation_item}   
    Click Element At   ${promised_or_offered_anything_in_exchange_for_this_donation_item}    

Certification of acknowledgement
   ${cerification_acknowledgement_item}       Construct Xpath     ${cerification_acknowledgement_item}           ${cerification_acknowledgement_value}
    Click Element At  ${cerification_acknowledgement_dropdown} 
    Wait Until Page Contains Element    ${cerification_acknowledgement_item}   
    Click Element At   ${cerification_acknowledgement_item}