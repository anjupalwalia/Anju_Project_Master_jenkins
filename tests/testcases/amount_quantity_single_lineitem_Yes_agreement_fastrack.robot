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
Library    DataDriver    file=${e2e_test_data_excel_file}    encoding=utf-8    dialect=unix    sheet_name=Single-Yes-Fastrack
Test Template    Amount Based - Yes Agreement - Single Fastrack

*** Test Cases ***
Amount Based - Yes Agreement - Single Fastrack
    [Tags]    Agreement_Yes    Fastrack    Single       AP

*** Keywords ***
Amount Based - Yes Agreement - Single Fastrack
    [Tags]    Agreement_Yes    Fastrack    Single    AP
    [Arguments]    ${mandatory_commodity_value}    ${chart_of_accounts_value}    ${region_value}
    ...    ${cost_center_value}    ${product_value}    ${industry_value}
    ...    ${market_segment_value}    ${project_value}    ${location_value}
    ...    ${item_description_value}    ${invoice_type_value}    ${amount_value}    ${quantity_value}
    ...    ${uom_value}    ${unit_price_value}    ${currency_value}    ${need_by_date_value}
    ...    ${service_start_date_value}    ${service_end_date_value}
    ...    ${ship_to_address_value}    ${reason_for_late_submission_value}    ${commodity_value}
    ...    ${spend_family_value}    ${spend_group_value}    ${purchase_description_value}    
    ...    ${business_reason_impact_value}    ${negotiation_details_value}    ${active_supplier_value}    
    ...    ${active_supplier_address_value}    ${on_behalf_of}      
    Log    ${TEST_NAME}\n${mandatory_commodity_value}\n${chart_of_accounts_value}\n${region_value}\n${cost_center_value}\n${product_value}\n${industry_value}\n${market_segment_value}\n${project_value}\n${location_value}\n${item_description_value}\n${amount_value}\n${quantity_value}\n${unit_price_value}\n${currency_value}\n${need_by_date_value}\n${service_start_date_value}\n${service_end_date_value}\n${ship_to_address_value}\n${spend_family_value}\n${spend_group_value}\n${commodity_value}
    Given User Launches Finance Force in browser
    And User Logs into Finance Force as Requester
    When User is clicking on Create New Intake Request
    And User is filling the fields and submit the PIR for adding No Line Iteam    ${mandatory_commodity_value}    ${chart_of_accounts_value}    ${region_value}    
    ...    ${cost_center_value}    ${product_value}    ${industry_value}    ${market_segment_value}    
    ...    ${project_value}    ${location_value}    ${item_description_value}     ${invoice_type_value}  
    ...    ${amount_value}    ${quantity_value}    ${uom_value}    ${unit_price_value}    
    ...    ${currency_value}    ${need_by_date_value}    ${service_start_date_value}    
    ...    ${service_end_date_value}    ${ship_to_address_value}    ${reason_for_late_submission_value}  
    ...    ${commodity_value}     ${spend_family_value}    ${spend_group_value}       ${purchase_description_value}    
    ...    ${business_reason_impact_value}    ${negotiation_details_value}    ${active_supplier_value}    
    ...    ${active_supplier_address_value}    ${on_behalf_of}   
    Then User logs out as Requester 
    And User logs in as Agreement management user
    When User marks Signed Agreement as Yes
    Then user is verifying that case is created with status New
    And user is verifying that approval records are created 
    When user is approving the approvals
    And Select the PIR Created
    And Reload the page untill able to select PIR Number
    Then user is verifying that case is updated with status as Intake validated      
    And Refresh Page Until Page Contains Status Approved
    And user is verifying that PR URL is populated
    Then user is verifying that PR Number is populated
    And Reload the page untill able to select PIR Number
   When User navigates to related tab
    And user also verifying that Agreement record is getting created
    Then user is verifying that Automation type is fasttrack
    When User navigates to related tab
    Then user is verifying that Purchase record is getting created
    Then user is verifying that Record Type is fasttrack
    Then User logs out as Agreement management user 
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
    #  Then User logs out as Requester




     





