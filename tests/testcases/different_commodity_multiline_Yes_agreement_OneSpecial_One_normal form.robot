*** Settings ***
Library     SeleniumLibrary
Resource    ..//resources//keywords//login_keywords.robot
Resource    ../resources/keywords/home_keywords.robot
Resource   ../resources/utils/setup.robot
Resource    ../resources/keywords/procurement_intake_request_screen_keywords.robot
Resource    ../resources/keywords/review_approval_workitem_keywords.robot
Resource    ../resources/keywords/coupa_requisition_keywords.robot/
Resource    ../resources/variables/variables.robot
Suite Setup    Set Selenium Timeout    60
Test Setup    Set Text Value
# Test Teardown    Close All Browsers
Library    DataDriver    file=${e2e_test_data_excel_file}   encoding=utf-8    dialect=unix    sheet_name=onespecial_onenormal_form
Test Template    Different Comodity Multiline Yes Agreement One Special One Normal Form


*** Test Cases ***
Different Comodity Multiline Yes Agreement One Special One Normal Form
    [Tags]    SB

*** Keywords ***
Different Comodity Multiline Yes Agreement One Special One Normal Form
    [Tags]    SB
    [Arguments]    ${mandatory_commodity_value}    ${chart_of_accounts_value}    ${region_value}
    ...    ${cost_center_value}    ${product_value}    ${industry_value}
    ...    ${market_segment_value}    ${project_value}    ${location_value}
    ...    ${item_description_value}    ${invoice_type_value}    ${amount_value}    ${quantity_value}
    ...    ${uom_value}    ${unit_price_value}    ${currency_value}    ${need_by_date_value}
    ...    ${service_start_date_value}    ${service_end_date_value}
    ...    ${ship_to_address_value}    ${reason_for_late_submission_value}    ${commodity_value}
    ...    ${spend_family_value}    ${spend_group_value}    ${purchase_description_value}    
    ...    ${business_reason_impact_value}    ${negotiation_details_value}    ${active_supplier_value}    
    ...    ${active_supplier_address_value}    ${on_behalf_of}    ${second_commodity_value}    ${second_mandatory_commodity_value}     
    ...    ${second_spend_family_value}    ${second_spend_group_value}    ${Reason_for_Donation_value}    ${region_for_recipient_value}
    ...    ${Business_Sponsor_Name_Value}    ${Did_the_Philanthropy_Team_help_value}    ${group_vet_or_select_donation_value}
    ...    ${substitute_for_a_gift_or_as_an_incentive_value}    ${SDG_Impact_Field_Value}    ${Requirements_and_Obligations_Value}
    ...    ${outline_how_the_recipient_can_use_value}    ${Marketing_and_Publicity_value}    ${Integrity_Questionnaire_Value}
    ...    ${Did_anyone_solicit_this_donation_value}    ${Are_you_aware_ofany_currently_pending_value}    ${Donation_have_a_business_or_family_connection_value}
    ...    ${promised_or_offered_anything_in_exchange_for_this_donation_value}    ${cerification_acknowledgement_value}
    Log    \nTest Name: ${TEST_NAME}\nmandatory_commodity_value: ${mandatory_commodity_value}\nchart_of_accounts_value: ${chart_of_accounts_value}\nregion_value: ${region_value}\ncost_center_value: ${cost_center_value}\nproduct_value: ${product_value}\nindustry_value: ${industry_value}\nmarket_segment_value: ${market_segment_value}\nproject_value: ${project_value}\nlocation_value: ${location_value}\nitem_description_value: ${item_description_value}\namount_value: ${amount_value}\nquantity_value: ${quantity_value}\nunit_price_value: ${unit_price_value}\ncurrency_value: ${currency_value}\nneed_by_date_value: ${need_by_date_value}\nservice_start_date_value: ${service_start_date_value}\nservice_end_date_value: ${service_end_date_value}\nship_to_address_value: ${ship_to_address_value}\nspend_family_value: ${spend_family_value}\n:spend_group_value: ${spend_group_value}\ncommodity_value: ${commodity_value}/nreason_for_late_submission_value: ${reason_for_late_submission_value}\npurchase_description_value: ${purchase_description_value}\nbusiness_reason_impact_value: ${business_reason_impact_value}\nnegotiation_details_value: ${negotiation_details_value}\nactive_supplier_value: ${active_supplier_value}\nactive_supplier_address_value: ${active_supplier_address_value}\non_behalf_of: ${on_behalf_of}\ncommodity1: ${second_commodity_value}\nmandatory_commodity_value_1: ${second_mandatory_commodity_value}
    
    Set Test Variable    ${Reason_for_Donation_value}	${Reason_for_Donation_value}
    Set Test Variable    ${region_for_recipient_value}	${region_for_recipient_value}
    Set Test Variable    ${Business_Sponsor_Name_Value}	${Business_Sponsor_Name_Value}
    Set Test Variable    ${Did_the_Philanthropy_Team_help_value}	${Did_the_Philanthropy_Team_help_value}
    Set Test Variable    ${group_vet_or_select_donation_value}	${group_vet_or_select_donation_value}
    Set Test Variable    ${substitute_for_a_gift_or_as_an_incentive_value}	${substitute_for_a_gift_or_as_an_incentive_value}
    Set Test Variable    ${SDG_Impact_Field_Value}	${SDG_Impact_Field_Value}
    Set Test Variable    ${Requirements_and_Obligations_Value}	${Requirements_and_Obligations_Value}
    Set Test Variable    ${outline_how_the_recipient_can_use_value}	${outline_how_the_recipient_can_use_value}
    Set Test Variable    ${Marketing_and_Publicity_value}	${Marketing_and_Publicity_value}
    Set Test Variable    ${Integrity_Questionnaire_Value}	${Integrity_Questionnaire_Value}
    Set Test Variable    ${Did_anyone_solicit_this_donation_value}	${Did_anyone_solicit_this_donation_value}
    Set Test Variable    ${Are_you_aware_ofany_currently_pending_value}	${Are_you_aware_ofany_currently_pending_value}
    Set Test Variable    ${Donation_have_a_business_or_family_connection_value}	${Donation_have_a_business_or_family_connection_value}
    Set Test Variable    ${promised_or_offered_anything_in_exchange_for_this_donation_value}
    Set Test Variable    ${promised_or_offered_anything_in_exchange_for_this_donation_value}
    Set Test Variable    ${cerification_acknowledgement_value}	${cerification_acknowledgement_value}
    Log    Reason_for_Donation_value:${Reason_for_Donation_value}\nregion_for_recipient_value:${region_for_recipient_value}\nBusiness_Sponsor_Name_Value:${Business_Sponsor_Name_Value}\nDid_the_Philanthropy_Team_help_value:${Did_the_Philanthropy_Team_help_value}\ngroup_vet_or_select_donation_value:${group_vet_or_select_donation_value}\nsubstitute_for_a_gift_or_as_an_incentive_value:${substitute_for_a_gift_or_as_an_incentive_value}\nSDG_Impact_Field_Value:${SDG_Impact_Field_Value}\nRequirements_and_Obligations_Value:${Requirements_and_Obligations_Value}\noutline_how_the_recipient_can_use_value:${outline_how_the_recipient_can_use_value}\nMarketing_and_Publicity_value:${Marketing_and_Publicity_value}\nIntegrity_Questionnaire_Value:${Integrity_Questionnaire_Value}\nDid_anyone_solicit_this_donation_value:${Did_anyone_solicit_this_donation_value}\nAre_you_aware_ofany_currently_pending_value:${Are_you_aware_ofany_currently_pending_value}\nDonation_have_a_business_or_family_connection_value:${Donation_have_a_business_or_family_connection_value}\npromised_or_offered_anything_in_exchange_for_this_donation_value:${promised_or_offered_anything_in_exchange_for_this_donation_value}\ncerification_acknowledgement_value:${cerification_acknowledgement_value}
    
    Given User Launches Finance Force in browser
    Given User Logs into Finance Force as Requester
    When User is clicking on Create New Intake Request

    # SPECIAL FORM
    Enter Details on Request Information Section    ${ship_to_address_value}    ${on_behalf_of}
    Enter Details on Commodity Section    ${mandatory_commodity_value}    ${spend_family_value}    ${spend_group_value}    ${commodity_value}
    Enter Details on Select Supplier Section    ${active_supplier_value}    ${active_supplier_address_value}
    Enter Details on Contact Selection Section
    Enter Details on Line Item Details Section For First Line Item    ${item_description_value}    ${invoice_type_value}    ${amount_value}    ${quantity_value}    ${uom_value}
    ...    ${unit_price_value}    ${currency_value}    ${need_by_date_value}
    ...    ${service_start_date_value}    ${service_end_date_value}
    ...    ${ship_to_address_value}
    User is filling the fields for special form
    Select Reason for Late Submission from the dropdown    ${reason_for_late_submission_value}
    Enter Details on Line Item Accounting Section    ${chart_of_accounts_value}    ${region_value}
    ...    ${cost_center_value}    ${product_value}    ${industry_value}
    ...    ${market_segment_value}    ${project_value}    ${location_value}
    Select Another Line Item Yes
    Click Next Button

    # NORMAL FORM
    Enter Details on Commodity Section    ${second_mandatory_commodity_value}    ${second_spend_family_value}      ${second_spend_group_value}      ${second_commodity_value}            
    Enter Details on Line Item Details Section For Second Line Item    ${item_description_value}    ${invoice_type_value}    ${amount_value}    ${quantity_value}    ${uom_value}
    ...    ${unit_price_value}    ${currency_value}    ${need_by_date_value}
    ...    ${service_start_date_value}    ${service_end_date_value}
    ...    ${ship_to_address_value}
    Select Reason for Late Submission from the dropdown    ${reason_for_late_submission_value}
    Skips Entering Details on Line Item Accounting Section
    Select Another Line Item No
    Click Next Button
    Enter Details on Review Request Section

    Then User logs out as Requester 
    And User logs in as Agreement management user
    When User marks Signed Agreement as Yes
    Then user is verifying that case is created with status New
    And user is verifying that approval records are created 
    When user is approving the approvals
    #Intake validated
    Then user is verifying that case is created with status New 
    And user is Verifying that Second approval records are created
    When user is approving the approvals
    And Select the PIR Created
    And Reload the page untill able to select PIR Number
     #Intake validated
    Then user is verifying that case is created with status New      
    And Refresh Page Until Page Contains Status Approved
    And user is verifying that PR URL is populated
    Then user is verifying that PR Number is populated
    And user is navigating to related tab
    And user also verifying that Agreement is getting created
    Then user is verifying that Purchase is getting created
    Then User Logs into Coupa
    And click on search bar
    And input created PR value and click the PR link    ${pr_number_value}
    Then User approves the PIR in Coupa(Bypass)
    Then User Logs Out of Coupa
    #  Given User Launches Finance Force in browser
    # And User Logs into Finance Force as Requester
    # And Wait Until Page is Loaded
    # And Select the PIR Created
    # And user is Verifying that PO Number is stamped in s360
    # And user is Verify that PO URL is Populated
    # Then User logs out as Requester


