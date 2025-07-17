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
Library    DataDriver        file=${e2e_test_data_excel_file}          encoding=utf-8       dialect=unix        sheet_name=mixlines
Test Template    same_commodity_mixlines_No_agreement

*** Test Cases ***
same_commodity_mixlines_No_agreement
    [Tags]    AP

*** Keywords ***
same_commodity_mixlines_No_agreement
    [Tags]    AP
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
    ...    ${second_spend_family_value}	${second_spend_group_value}    ${second_invoice_type_value}
    Log    ${TEST_NAME}\n${mandatory_commodity_value}\n${chart_of_accounts_value}\n${region_value}\n${cost_center_value}\n${product_value}\n${industry_value}\n${market_segment_value}\n${project_value}\n${location_value}\n${item_description_value}\n${amount_value}\n${quantity_value}\n${unit_price_value}\n${currency_value}\n${need_by_date_value}\n${service_start_date_value}\n${service_end_date_value}\n${ship_to_address_value}\n${spend_family_value}\n${spend_group_value}\n${commodity_value}
    User Launches Finance Force in browser
    Given User Logs into Finance Force as Requester
    When User is clicking on Create New Intake Request
    And User is filling the fields and submit the PIR with mix Line Item     ${mandatory_commodity_value}    ${chart_of_accounts_value}    ${region_value}    
    ...    ${cost_center_value}    ${product_value}    ${industry_value}    ${market_segment_value}    
    ...    ${project_value}    ${location_value}    ${item_description_value}     ${invoice_type_value}  
    ...    ${amount_value}    ${quantity_value}    ${uom_value}    ${unit_price_value}    
    ...    ${currency_value}    ${need_by_date_value}    ${service_start_date_value}    
    ...    ${service_end_date_value}    ${ship_to_address_value}    ${reason_for_late_submission_value}  
    ...    ${commodity_value}     ${spend_family_value}    ${spend_group_value}       ${purchase_description_value}    
    ...    ${business_reason_impact_value}    ${negotiation_details_value}    ${active_supplier_value}    
    ...    ${active_supplier_address_value}    ${on_behalf_of}    ${second_commodity_value}    ${second_mandatory_commodity_value}     
    ...    ${second_spend_family_value}	${second_spend_group_value}    ${second_invoice_type_value}
    
    Then User logs out as Requester
    And User logs in as Agreement management user
    When User marks Signed Agreement as No
    Then user is verifying that case is created with status New
    And user is verifying that approval records are created
    When user is approving the approvals
    And Select the PIR Created
    And Reload the page untill able to select PIR Number
    Then user is verifying that case is created with status New
    And Refresh Page Until Page Contains Status Approved
    And user is verifying that PR URL is populated
    Then user is verifying that PR Number is populated
    When User navigates to related tab
    And user also verifying that multiple procurement line items created
    And user also verifying that Agreement is not created
    Then User logs out as Agreement management user
   Then User Logs into Coupa
    And click on search bar
    And input created PR value and click the PR link    ${pr_number_value}
    Then User approves the PIR in Coupa(Bypass)
    # Then User Logs Out of Coupa
    # And User Logs into Finance Force as Requester
    # And Wait till page load completely
    # And Select the PIR Created
    # And user is Verifying that PO Number is stamped in s360
    # And user is Verify that PO URL is Populated
    #  Then User logs out as Requester


