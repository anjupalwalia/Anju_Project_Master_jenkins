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
Test Teardown    Close All Browsers
Library    DataDriver    file=${e2e_test_data_excel_file}   encoding=utf-8    dialect=unix    sheet_name=multiline_different_commodity
Test Template    different_commodity_multiline_Yes_agreement_Localization

*** Test Cases ***
different_commodity_multiline_Yes_agreement_Localization
    [Tags]    SB

*** Keywords ***
different_commodity_multiline_Yes_agreement_Localization
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
    ...    ${second_spend_family_value}    ${second_spend_group_value}
    Log    \nTest Name: ${TEST_NAME}\nmandatory_commodity_value: ${mandatory_commodity_value}\nchart_of_accounts_value: ${chart_of_accounts_value}\nregion_value: ${region_value}\ncost_center_value: ${cost_center_value}\nproduct_value: ${product_value}\nindustry_value: ${industry_value}\nmarket_segment_value: ${market_segment_value}\nproject_value: ${project_value}\nlocation_value: ${location_value}\nitem_description_value: ${item_description_value}\namount_value: ${amount_value}\nquantity_value: ${quantity_value}\nunit_price_value: ${unit_price_value}\ncurrency_value: ${currency_value}\nneed_by_date_value: ${need_by_date_value}\nservice_start_date_value: ${service_start_date_value}\nservice_end_date_value: ${service_end_date_value}\nship_to_address_value: ${ship_to_address_value}\nspend_family_value: ${spend_family_value}\n:spend_group_value: ${spend_group_value}\ncommodity_value: ${commodity_value}/nreason_for_late_submission_value: ${reason_for_late_submission_value}\npurchase_description_value: ${purchase_description_value}\nbusiness_reason_impact_value: ${business_reason_impact_value}\nnegotiation_details_value: ${negotiation_details_value}\nactive_supplier_value: ${active_supplier_value}\nactive_supplier_address_value: ${active_supplier_address_value}\non_behalf_of: ${on_behalf_of}\ncommodity1: ${second_commodity_value}\nmandatory_commodity_value_1: ${second_mandatory_commodity_value}
    User Launches Finance Force in browser
    Given User Logs into Finance Force as Requester
    When User is clicking on Create New Intake Request
    And User is filling the fields and submit the PIR with multiple Line Item     ${mandatory_commodity_value}    ${chart_of_accounts_value}    ${region_value}    
    ...    ${cost_center_value}    ${product_value}    ${industry_value}    ${market_segment_value}    
    ...    ${project_value}    ${location_value}    ${item_description_value}     ${invoice_type_value}  
    ...    ${amount_value}    ${quantity_value}    ${uom_value}    ${unit_price_value}    
    ...    ${currency_value}    ${need_by_date_value}    ${service_start_date_value}    
    ...    ${service_end_date_value}    ${ship_to_address_value}    ${reason_for_late_submission_value}  
    ...    ${commodity_value}     ${spend_family_value}    ${spend_group_value}       ${purchase_description_value}    
    ...    ${business_reason_impact_value}    ${negotiation_details_value}    ${active_supplier_value}    
    ...    ${active_supplier_address_value}    ${on_behalf_of}    ${second_commodity_value}    ${second_mandatory_commodity_value}    
    ...    ${second_spend_family_value}    ${second_spend_group_value}
    
    Then User logs out as Requester 
    And User logs in as Agreement management user
    When User marks Signed Agreement as Yes
    Then user is verifying that case is created with status New
    And user is verifying that approval records are created 
    When user is approving the approvals
    And Select the PIR Created
    And Reload the page untill able to select PIR Number
    Then user is verifying that case is created with status New      
    And Refresh Page Until Page Contains Status Approved
    And user is verifying that PR URL is populated
    Then user is verifying that PR Number is populated
    And User navigates to related tab
    And user also verifying that Agreement is getting created
    Then user is verifying that Purchase is getting created
    Then User Logs into Coupa
    And click on search bar
    And input created PR value and click the PR link    ${pr_number_value}
    Then User approves the PIR in Coupa(Bypass)
    Then User Logs Out of Coupa
    # Given User Launches Finance Force in browser
    # And User Logs into Finance Force as Requester
    # And Wait Until Page is Loaded
    # And Select the PIR Created
    # And user is Verifying that PO Number is stamped in s360
    # And user is Verify that PO URL is Populated
    # Then User logs out as Requester


