*** Settings ***
Library    SeleniumLibrary
Resource    request_information_procurement_request_keywords.robot
Resource    commodity_selection_keywords.robot
Resource    select_supplier_keywords.robot
Resource    contact_selection_keywords.robot
Resource    line_item_details_keywords.robot
Resource    ../../utils/selenium_utils.robot
Resource    line_item_review_request_keywords.robot
Resource    line_item_accounting_keywords.robot

*** Keywords ***


User is filling the fields and submit the PIR for adding No Line Iteam
    [Arguments]    ${mandatory_commodity_value}    ${chart_of_accounts_value}    ${region_value}    
    ...    ${cost_center_value}    ${product_value}    ${industry_value}    ${market_segment_value}    
    ...    ${project_value}    ${location_value}    ${item_description_value}     ${invoice_type_value}  
    ...    ${amount_value}    ${quantity_value}    ${uom_value}    ${unit_price_value}    
    ...    ${currency_value}    ${need_by_date_value}    ${service_start_date_value}    
    ...    ${service_end_date_value}    ${ship_to_address_value}    ${reason_for_late_submission_value}  
    ...    ${commodity_value}     ${spend_family_value}    ${spend_group_value}       ${purchase_description_value}    
    ...    ${business_reason_impact_value}    ${negotiation_details_value}    ${active_supplier_value}    
    ...    ${active_supplier_address_value}    ${on_behalf_of}
    User is filling the fields till Line Iteam review page When Line Iteam Added     ${mandatory_commodity_value}    ${chart_of_accounts_value}    ${region_value}    
    ...    ${cost_center_value}    ${product_value}    ${industry_value}    ${market_segment_value}    
    ...    ${project_value}    ${location_value}    ${item_description_value}     ${invoice_type_value}  
    ...    ${amount_value}    ${quantity_value}    ${uom_value}    ${unit_price_value}    
    ...    ${currency_value}    ${need_by_date_value}    ${service_start_date_value}    
    ...    ${service_end_date_value}    ${ship_to_address_value}    ${reason_for_late_submission_value}  
    ...    ${commodity_value}     ${spend_family_value}    ${spend_group_value}       ${purchase_description_value}    
    ...    ${business_reason_impact_value}    ${negotiation_details_value}    ${active_supplier_value}    
    ...    ${active_supplier_address_value}    ${on_behalf_of}
    Select Another Line Item No
    Click Next Button
    Enter Details on Review Request Section

User is filling the fields till Line Iteam review page When Line Iteam Added
    [Arguments]    ${mandatory_commodity_value}    ${chart_of_accounts_value}    ${region_value}    
    ...    ${cost_center_value}    ${product_value}    ${industry_value}    ${market_segment_value}    
    ...    ${project_value}    ${location_value}    ${item_description_value}     ${invoice_type_value}  
    ...    ${amount_value}    ${quantity_value}    ${uom_value}    ${unit_price_value}    
    ...    ${currency_value}    ${need_by_date_value}    ${service_start_date_value}    
    ...    ${service_end_date_value}    ${ship_to_address_value}    ${reason_for_late_submission_value}  
    ...    ${commodity_value}     ${spend_family_value}    ${spend_group_value}       ${purchase_description_value}    
    ...    ${business_reason_impact_value}    ${negotiation_details_value}    ${active_supplier_value}    
    ...    ${active_supplier_address_value}     ${on_behalf_of}
    Enter Details on Request Information Section    ${ship_to_address_value}    ${on_behalf_of}
    Enter Details on Commodity Section    ${mandatory_commodity_value}    ${spend_family_value}    ${spend_group_value}    ${commodity_value}
    Enter Details on Select Supplier Section    ${active_supplier_value}    ${active_supplier_address_value}
    Enter Details on Contact Selection Section
    Enter Details on Line Item Details Section    ${item_description_value}    ${invoice_type_value}    ${amount_value}    ${quantity_value}    ${uom_value}
    ...    ${unit_price_value}    ${currency_value}    ${need_by_date_value}
    ...    ${service_start_date_value}    ${service_end_date_value}
    ...    ${ship_to_address_value}    ${reason_for_late_submission_value}
    Enter Details on Line Item Accounting Section    ${chart_of_accounts_value}    ${region_value}
    ...    ${cost_center_value}    ${product_value}    ${industry_value}
    ...    ${market_segment_value}    ${project_value}    ${location_value}




Enter Details on Request Information Section
    [Arguments]    ${ship_to_address_value}    ${on_behalf_of}
    IF    '${on_behalf_of}' != ''
        Enter On Behalf Of Details    ${on_behalf_of}
    END
    Enter PIR name
    Select Ship To Address    ${ship_to_address_value}
    Enter Individual Name
    Enter Purchase Description
    Enter Business Reason & Impact
    Enter Negotiation Details
    Click Next Button

Enter Details on Commodity Section
    [Arguments]    ${mandatory_commodity_value}    ${spend_family_value}    ${spend_group_value}    ${commodity_value}
    Select Mandatory Commodity    ${mandatory_commodity_value}
    Sleep    10s
    Select Spend Family    ${spend_family_value}
    Select Spend Group    ${spend_group_value}
    Select Commodity    ${commodity_value}
    Click Next Button
    #Verify Auto Populated Sections
    
Enter Details on Select Supplier Section
    [Arguments]    ${active_supplier_value}    ${active_supplier_address_value}
    Select Active Supplier    ${active_supplier_value}    ${active_supplier_address_value}
    #Verify Auto Populated Supplier Sites
    Click Next Button
    

Enter Details on Contact Selection Section
    Select Supplier Signatory
    Select Negotiation Contact
    Click Next Button

Enter Details on Line Item Details Section
    [Arguments]    ${item_description_value}    ${invoice_type_value}    ${amount_value}    ${quantity_value}    ${uom_value}
    ...    ${unit_price_value}    ${currency_value}    ${need_by_date_value}
    ...    ${service_start_date_value}    ${service_end_date_value}
    ...    ${ship_to_address_value}    ${reason_for_late_submission_value}       
    ...    ${skip_currency}=0
    Enter Item Description    ${item_description_value}
    Select Invoice Type    ${invoice_type_value}
    Enter Amount/Quantity Details    ${invoice_type_value}    ${amount_value}    ${quantity_value}
    ...    ${uom_value}    ${unit_price_value}    ${currency_value}
    Run Keyword If    ${skip_currency} == 0
    ...    Select Currency  ${currency_value}

    Select Need By Date    ${need_by_date_value}
    Select Service Start Date    ${service_start_date_value} 
    Select Service End Date    ${service_end_date_value}
    Select Installation Service Site    ${ship_to_address_value}
    # Verify Auto Populated Fields
    Sleep    10s
    Click Next Button
    Select Reason for Late Submission    ${reason_for_late_submission_value}
    Click Next Button
    
Enter Details on Line Item Accounting Section
    [Arguments]    ${chart_of_accounts_value}    ${region_value}
    ...    ${cost_center_value}    ${product_value}    ${industry_value}
    ...    ${market_segment_value}    ${project_value}    ${location_value}
    Select Chart of Accounts    ${chart_of_accounts_value}
    Select Region    ${region_value}
    Select Cost Center    ${cost_center_value} 
    Select Product    ${product_value}
    Select Industry    ${industry_value}
    Select Market Segment    ${market_segment_value}
    Select Project    ${project_value}
    Select Location    ${location_value}
    Click Next Button

Enter Details on Review Request Section
    Upload File
    Enter Attachment URL
    Select Send Attachment to Supplier Checkbox
    Select Send URL Attachment to Supplier
    Enter Attachment Text
    Select Text Attachment to Supplier
    Click Submit Button
    Check for PIR Submission Success message
    Select User Sentiment
    Enter User Feedback
    Click Finish Button
    Check if PIR Screen is Open

User is filling the fields and submit the PIR with multiple Line Item 
    [Arguments]    ${mandatory_commodity_value}    ${chart_of_accounts_value}    ${region_value}    
    ...    ${cost_center_value}    ${product_value}    ${industry_value}    ${market_segment_value}  ${project_value}    ${location_value}    ${item_description_value}     ${invoice_type_value}  
    ...    ${amount_value}    ${quantity_value}    ${uom_value}    ${unit_price_value}    
    ...    ${currency_value}    ${need_by_date_value}    ${service_start_date_value}    
    ...    ${service_end_date_value}    ${ship_to_address_value}    ${reason_for_late_submission_value}  
    ...    ${commodity_value}     ${spend_family_value}    ${spend_group_value}       ${purchase_description_value}    
    ...    ${business_reason_impact_value}    ${negotiation_details_value}    ${active_supplier_value}    
    ...    ${active_supplier_address_value}    ${on_behalf_of}    ${second_commodity_value}    ${second_mandatory_commodity_value}    ${second_spend_family_value}	${second_spend_group_value}
       
     User is filling the fields till Line Iteam review page When Line Iteam Added     ${mandatory_commodity_value}    ${chart_of_accounts_value}    ${region_value}    
    ...    ${cost_center_value}    ${product_value}    ${industry_value}    ${market_segment_value}    
    ...    ${project_value}    ${location_value}    ${item_description_value}     ${invoice_type_value}  
    ...    ${amount_value}    ${quantity_value}    ${uom_value}    ${unit_price_value}    
    ...    ${currency_value}    ${need_by_date_value}    ${service_start_date_value}    
    ...    ${service_end_date_value}    ${ship_to_address_value}    ${reason_for_late_submission_value}  
    ...    ${commodity_value}     ${spend_family_value}    ${spend_group_value}       ${purchase_description_value}    
    ...    ${business_reason_impact_value}    ${negotiation_details_value}    ${active_supplier_value}    
    ...    ${active_supplier_address_value}    ${on_behalf_of} 
    Select Another Line Item Yes
    Click Next Button
    Enter Details on Commodity Section    ${second_mandatory_commodity_value}    ${second_spend_family_value}      ${second_spend_group_value}      ${second_commodity_value}            
    #Enter Details on Select Supplier Section    ${active_supplier_value}    ${active_supplier_address_value}
    #Enter Details on Contact Selection Section
    Enter Details on Line Item Details Section    ${item_description_value}    ${invoice_type_value}    ${amount_value}    ${quantity_value}    ${uom_value}
    ...    ${unit_price_value}    ${currency_value}    ${need_by_date_value}
    ...    ${service_start_date_value}    ${service_end_date_value}
    ...    ${ship_to_address_value}    ${reason_for_late_submission_value}    1
    # Skip Line Item Accounting Section
    #Click Next Button
    Sleep    10
    Scroll Element Into View         ${next_button}
    Run Keyword And Ignore Error     Wait Until Element Is Not Visible    css=footer    timeout=5s
    Click Element At Coordinates    ${next_button}    5    5

    

    
    Select Another Line Item No
    Click Next Button
    Enter Details on Review Request Section


user is clicking on Intake Continue button
        Click Button    //button[contains(text(),'Continue Intake')]  
        Sleep    2s  


# resubmitted the PIR     
# ...     [Arguments]  ${Second_Amount}
#     user is editing the PIR    ${Second_Amount}


user is editing and resubmitting the PIR
    [Arguments]    ${Second_Amount}
    Enter Purchase Description
    Click Next Button
    # All Prefield value is calling : Getting custom validate input exception
    # if we are not wihtout using the sleep with  10 second
      Sleep    10s
    Click Next Button
    # All commodity section is calling : Getting custom validate input exception
    #  if we are not wihtout using the sleep with  10 second
    Sleep    10s
    Click Next Button
    Click Next Button
    Enter Amount    ${Second_Amount}
    Click Next Button
    Click Next Button
     # Chart Acount  section is calling : Getting custom validate input exception
     # if we are not wihtout using the sleep with  10 second
    Sleep    5s
    Click Next Button
    Click Next Button
    Click Submit Button
    Wait Until Element Is Not Visible    //lightning-spinner
    Scroll Element Into View    ${finish_button}
    Set Focus To Element    ${finish_button}
    Wait Until Element Is Visible    ${finish_button}
    Click Button    ${finish_button}
    Wait Until Page is Loaded

User is filling the fields and submit the PIR with mix Line Item 
    [Arguments]    ${mandatory_commodity_value}    ${chart_of_accounts_value}    ${region_value}    
    ...    ${cost_center_value}    ${product_value}    ${industry_value}    ${market_segment_value}  ${project_value}    ${location_value}    ${item_description_value}     ${invoice_type_value}  
    ...    ${amount_value}    ${quantity_value}    ${uom_value}    ${unit_price_value}    
    ...    ${currency_value}    ${need_by_date_value}    ${service_start_date_value}    
    ...    ${service_end_date_value}    ${ship_to_address_value}    ${reason_for_late_submission_value}  
    ...    ${commodity_value}     ${spend_family_value}    ${spend_group_value}       ${purchase_description_value}    
    ...    ${business_reason_impact_value}    ${negotiation_details_value}    ${active_supplier_value}    
    ...    ${active_supplier_address_value}    ${on_behalf_of}    ${second_commodity_value}    ${second_mandatory_commodity_value}    ${second_spend_family_value}	${second_spend_group_value}        ${second_invoice_type_value}
       
     User is filling the fields till Line Iteam review page When Line Iteam Added     ${mandatory_commodity_value}    ${chart_of_accounts_value}    ${region_value}    
    ...    ${cost_center_value}    ${product_value}    ${industry_value}    ${market_segment_value}    
    ...    ${project_value}    ${location_value}    ${item_description_value}     ${invoice_type_value}  
    ...    ${amount_value}    ${quantity_value}    ${uom_value}    ${unit_price_value}    
    ...    ${currency_value}    ${need_by_date_value}    ${service_start_date_value}    
    ...    ${service_end_date_value}    ${ship_to_address_value}    ${reason_for_late_submission_value}  
    ...    ${commodity_value}     ${spend_family_value}    ${spend_group_value}       ${purchase_description_value}    
    ...    ${business_reason_impact_value}    ${negotiation_details_value}    ${active_supplier_value}    
    ...    ${active_supplier_address_value}    ${on_behalf_of}     
    Select Another Line Item Yes
    Click Next Button
    Enter Details on Commodity Section    ${second_mandatory_commodity_value}    ${second_spend_family_value}      ${second_spend_group_value}      ${second_commodity_value}            
    Enter Details on Line Item Details Section with mix of lines    ${item_description_value}    ${invoice_type_value}    ${amount_value}    ${quantity_value}    ${uom_value}
    ...    ${unit_price_value}    ${currency_value}    ${need_by_date_value}
    ...    ${service_start_date_value}    ${service_end_date_value}
    ...    ${ship_to_address_value}    ${reason_for_late_submission_value}     ${second_invoice_type_value}    1
    # Skip Line Item Accounting Section
    #Click Next Button
    # As per Dev confirmation due to multiple API calls, 10s pause is required to complete all API calls
    Sleep    10
    Scroll Element Into View         ${next_button}
    Run Keyword And Ignore Error     Wait Until Element Is Not Visible    css=footer    timeout=5s
    Click Element At Coordinates    ${next_button}    5    5
    Select Another Line Item No
    Click Next Button
    Enter Details on Review Request Section

Enter Details on Line Item Details Section with mix of lines
    [Arguments]    ${item_description_value}    ${invoice_type_value}    ${amount_value}    ${quantity_value}    ${uom_value}
    ...    ${unit_price_value}    ${currency_value}    ${need_by_date_value}
    ...    ${service_start_date_value}    ${service_end_date_value}
    ...    ${ship_to_address_value}    ${reason_for_late_submission_value}    ${second_invoice_type_value}       
    ...    ${skip_currency}=0        
    Enter Item Description    ${item_description_value}
    Select Invoice Type for mixlines    ${invoice_type_value}    ${second_invoice_type_value}
    Enter Amount/Quantity Details for Mix lines    ${invoice_type_value}    ${amount_value}    ${quantity_value}    ${second_invoice_type_value}
    ...    ${uom_value}    ${unit_price_value}    ${currency_value}
    Run Keyword If    ${skip_currency} == 0
    ...    Select Currency  ${currency_value}

    Select Need By Date    ${need_by_date_value}
    Select Service Start Date    ${service_start_date_value} 
    Select Service End Date    ${service_end_date_value}
    Select Installation Service Site    ${ship_to_address_value}
    # Verify Auto Populated Fields
    Click Next Button
    Select Reason for Late Submission    ${reason_for_late_submission_value}
    Click Next Button    

User is filling the fields and submit the PIR with multiple Line Item for changing Need by date
    [Arguments]    ${mandatory_commodity_value}    ${chart_of_accounts_value}    ${region_value}    
    ...    ${cost_center_value}    ${product_value}    ${industry_value}    ${market_segment_value}  ${project_value}    ${location_value}    ${item_description_value}     ${invoice_type_value}  
    ...    ${amount_value}    ${quantity_value}    ${uom_value}    ${unit_price_value}    
    ...    ${currency_value}    ${need_by_date_value}    ${service_start_date_value}    
    ...    ${service_end_date_value}    ${ship_to_address_value}    ${reason_for_late_submission_value}  
    ...    ${commodity_value}     ${spend_family_value}    ${spend_group_value}       ${purchase_description_value}    
    ...    ${business_reason_impact_value}    ${negotiation_details_value}    ${active_supplier_value}    
    ...    ${active_supplier_address_value}    ${on_behalf_of}    ${second_commodity_value}    ${second_mandatory_commodity_value}    ${second_spend_family_value}	${second_spend_group_value}  
    ...    ${second_need_by_date_value}    ${second_service_end_date_value}      
       
     User is filling the fields till Line Iteam review page When Line Iteam Added     ${mandatory_commodity_value}    ${chart_of_accounts_value}    ${region_value}    
    ...    ${cost_center_value}    ${product_value}    ${industry_value}    ${market_segment_value}    
    ...    ${project_value}    ${location_value}    ${item_description_value}     ${invoice_type_value}  
    ...    ${amount_value}    ${quantity_value}    ${uom_value}    ${unit_price_value}    
    ...    ${currency_value}    ${need_by_date_value}    ${service_start_date_value}    
    ...    ${service_end_date_value}    ${ship_to_address_value}    ${reason_for_late_submission_value}  
    ...    ${commodity_value}     ${spend_family_value}    ${spend_group_value}       ${purchase_description_value}    
    ...    ${business_reason_impact_value}    ${negotiation_details_value}    ${active_supplier_value}    
    ...    ${active_supplier_address_value}    ${on_behalf_of}     
    Select Another Line Item Yes
    Click Next Button
    Enter Details on Commodity Section    ${second_mandatory_commodity_value}    ${second_spend_family_value}      ${second_spend_group_value}      ${second_commodity_value}            
    Enter Details on Line Item Details Section for changing Need by date     ${item_description_value}    ${invoice_type_value}    ${amount_value}    ${quantity_value}    ${uom_value}
    ...    ${unit_price_value}    ${currency_value}    ${second_need_by_date_value}    
    ...    ${service_start_date_value}    ${second_service_end_date_value}
    ...    ${ship_to_address_value}    ${reason_for_late_submission_value}    1
    Scroll Element Into View         ${next_button}
    Run Keyword And Ignore Error     Wait Until Element Is Not Visible    css=footer    timeout=5s
    Execute JavaScript    window.scrollBy(0,900)
    Click Next Button
    Select Another Line Item No
    Execute JavaScript    window.scrollBy(0,700)
    Click Next Button
    Enter Details on Review Request Section

Enter Details on Line Item Details Section for changing Need by date
    [Arguments]    ${item_description_value}    ${invoice_type_value}    ${amount_value}    ${quantity_value}    ${uom_value}
    ...    ${unit_price_value}    ${currency_value}    ${second_need_by_date_value}
    ...    ${service_start_date_value}    ${second_service_end_date_value}
    ...    ${ship_to_address_value}    ${reason_for_late_submission_value}           
    ...    ${skip_currency}=0
    Enter Item Description    ${item_description_value}
    Select Invoice Type    ${invoice_type_value}
    Enter Amount/Quantity Details    ${invoice_type_value}    ${amount_value}    ${quantity_value}
    ...    ${uom_value}    ${unit_price_value}    ${currency_value}
    Run Keyword If    ${skip_currency} == 0
    ...    Select Currency  ${currency_value}

    Select Need By Date    ${second_need_by_date_value}
    Select Service Start Date    ${service_start_date_value} 
    Select Service End Date    ${second_service_end_date_value}
    Select Installation Service Site    ${ship_to_address_value}
    Click Next Button
    Select Reason for Late Submission    ${reason_for_late_submission_value}
    Click Next Button

Enter Details on Line Item Details Section For First Line Item
    [Arguments]    ${item_description_value}    ${invoice_type_value}    ${amount_value}    ${quantity_value}    ${uom_value}
    ...    ${unit_price_value}    ${currency_value}    ${need_by_date_value}
    ...    ${service_start_date_value}    ${service_end_date_value}
    ...    ${ship_to_address_value}   
    Enter Item Description    ${item_description_value}
    Select Invoice Type    ${invoice_type_value}
    Enter Amount/Quantity Details    ${invoice_type_value}    ${amount_value}    ${quantity_value}
    ...    ${uom_value}    ${unit_price_value}    ${currency_value}
    Select Currency  ${currency_value}
    Select Need By Date    ${need_by_date_value}
    Select Service Start Date    ${service_start_date_value} 
    Select Service End Date    ${service_end_date_value}
    Select Installation Service Site    ${ship_to_address_value}
    Click Next Button

Enter Details on Line Item Details Section For Second Line Item
    [Arguments]    ${item_description_value}    ${invoice_type_value}    ${amount_value}    ${quantity_value}    ${uom_value}
    ...    ${unit_price_value}    ${currency_value}    ${need_by_date_value}
    ...    ${service_start_date_value}    ${service_end_date_value}
    ...    ${ship_to_address_value}   
    Enter Item Description    ${item_description_value}
    Select Invoice Type    ${invoice_type_value}
    Enter Amount/Quantity Details    ${invoice_type_value}    ${amount_value}    ${quantity_value}
    ...    ${uom_value}    ${unit_price_value}    ${currency_value}
    Element Should Be Disabled    ${currency_dropdown}
    Select Need By Date    ${need_by_date_value}
    Select Service Start Date    ${service_start_date_value} 
    Select Service End Date    ${service_end_date_value}
    Select Installation Service Site    ${ship_to_address_value}
    Click Next Button

Select Reason for Late Submission from the dropdown
    [Arguments]    ${reason_for_late_submission_value}
    Select Reason for Late Submission    ${reason_for_late_submission_value}
    Click Next Button

Skips Entering Details on Line Item Accounting Section
    Click Element At    ${chart_of_accounts_dropdown}
    Click Element At    ${region_dropdown}
    Click Element At    ${cost_center_dropdown}
    Click Element At    ${product_dropdown}
    Click Element At    ${industry_dropdown}
    Click Element At    ${market_segment_dropdown}
    Click Element At    ${project_dropdown}
    Click Element At    ${location_dropdown}
    Click Next Button

User is filling the fields for special form
    Select Reason for Donation
    Select Region of recipient
    Select Business Sponsor's Name
    Select the Philanthropy Team help you select or vet the donation?
    Did any of the following groups help you select or vet the donation
    Is this donation being used as a substitute for a gift or as an incentive?
    SDG Impact Field Checkbox
    Are you aware of any restrictions being placed on the use of this grant/donation?
    Please outline how the recipient can use the funds
    Select Marketing and Publicity
    Select Ethics & Integrity Questionnaire
    Did anyone solicit this donation on behalf of the recipient to the employee responsible for selecting this charity?
    Are you aware of any recently negotiated or currently pending deals with the recipient or anyone
    Does anyone else involved in this donation have a business or family connection to the recipient
    promised or offeredanything inexchange for this donation dropdown
    Certification of acknowledgement
    Click Next Button

user is Verifying that Second approval records are created

            Scroll Element Into View     ${related_field}
            Click Element At    ${related_tab}
            Execute Javascript    window.scrollTo(0,400)
            Click Element At    ${approve_here_link}  
            Wait Until Element Contains    ${review_button_second}   Review
            Click Element At    ${review_button_second}

