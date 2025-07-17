*** Settings ***
Library    SeleniumLibrary
Resource    ../locators/procurement_intake_request_screen_locators.robot
Resource    ../variables/procurement_intake_request_screen_variables.robot
Resource    ../utils/selenium_utils.robot
Resource    ../utils/setup.robot


*** Keywords ***
User marks Signed Agreement as No
    Wait Until Page Contains    Launchpad
    # Navigate to Procurement Intake Requests Tab
    Select the PIR Created
    Set and Save Signed Agreement Required to No
    Review and Approve PIR

User marks Signed Agreement as Yes
    Wait Until Page Contains    Launchpad
    # Navigate to Procurement Intake Requests Tab
    Select the PIR Created
    Set and Save Signed Agreement Required to Yes
    Review and Approve PIR

user is verifying that case is created with status New
    Navigate to Procurement Intake Requests Tab
    Select the PIR Created

user is verifying that case is created with status Approved
    Navigate to Procurement Intake Requests Tab
    Select the PIR Created

Navigate to Procurement Intake Requests Tab
    # Sleep   20
    Click Element At    ${procurement_intake_request_tab}
    
Set and Save Signed Agreement Required to No
    Click Element At    ${edit_agreement_pencil}
    Click Element At    ${edit_agreement_button}
    Click Element At    ${edit_agreement_no_item}
    Click Element At    ${save_button}    
    Capture Page Screenshot
    Wait Until Page is Loaded
    Execute JavaScript    window.scrollBy(0,0)
    # Click Element At    ${related_tab}
    # Click Element At    ${approve_here_link}

Reload the page untill able to select PIR Number
     Reload Page
    Click Element At    ${related_field}
    Wait Until Element Is Not Visible    ${lightning_spinner}
    Execute Javascript    window.scrollTo(0,550)
    Wait Until Element Is Not Visible   ${lightning_spinner}
    Execute Javascript    window.scrollTo(0,550)


Set and Save Signed Agreement Required to Yes
    Click Element At    ${edit_agreement_pencil}
    Click Element At    ${edit_agreement_button}
    Click Element At    ${edit_agreement_Yes_item} 
    Click Element At    ${save_button}    
    Capture Page Screenshot
    Wait Until Page is Loaded
    Execute JavaScript    window.scrollBy(0,0)
   

Review and Approve PIR
     Reload Page
    Click Element At    ${related_field}
    Wait Until Element Is Not Visible   ${lightning_spinner}
    Execute Javascript    window.scrollTo(0,550)
    Wait Until Element Is Not Visible    ${lightning_spinner}
    Execute Javascript    window.scrollTo(0,550)
    Wait Until Page Contains Element    ${cases_link}
    Click Link At    ${cases_link}
    
    Click Element At    ${case_number}
    Wait Until Element Contains   ${case_status_New}     New
                                    
user is Verifying that approval records are created

    Scroll Element Into View     ${related_field}
    Click Element At    ${related_tab}
    Execute Javascript    window.scrollTo(0,400)
    Click Link At    ${approve_here_link}
    Wait Until Element Contains    ${review_button}    Review
    Click Element At    ${review_button}

user is verifying that PR URL is populated
    Execute Javascript    window.scrollTo(0,850)
    ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  ${pr_url}
    ${threshold_timer}=   Set Variable   0
    WHILE  ${Reload} != ${TRUE} and ${threshold_timer} < 181
        Reload Page
        Execute Javascript    window.scrollTo(0,850)
        ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  ${pr_url} 
        ${threshold_timer}=   Evaluate   ${threshold_timer} + 30
        Sleep    30s
        Log   Threshold Timer So Far: ${threshold_timer} seconds
    
    END
     
    Execute Javascript    window.scrollTo(0,850)
    ${pr_url_value}    Get Element Attribute from    ${pr_url}    ${href}
    Log    ${pr_url_value}

user is verifying that PR Number is populated
    ${pr_number_value}    Get Text From    ${pr_number}
    Log    ${pr_number_value}
    Set Global Variable    ${pr_number_value}
     Capture Page Screenshot

user is verifying that Purchase is not created
    
    Scroll Element Into View     ${related_field}
    Reload Page
    #Sleep    10
    Click Element At    ${related_tab}
    Execute Javascript    window.scrollTo(0,800)
    Wait Until Page Contains Element    ${purchase_value_is_zero} 

user is verifying that Purchase is getting created
    Wait Until Page Contains Element    ${purches_table}
    Scroll Element Into View    ${purches_table}
    Wait Until Page Contains Element    ${purches_row}
    Scroll Element Into View    ${purches_row}
    Capture Page Screenshot
    
user also verifying that Agreement is not created
    Execute Javascript    window.scrollTo(0,850)
    Wait Until Page Contains Element    ${agreement_is_not_created}

user is navigating to related tab
    Scroll Element Into View     ${related_field}
    Click Element At    ${related_tab}

user also verifying that Agreement is getting created    
    Wait Until Page Contains Element       ${agreement_table}   
    Scroll Element Into View     ${agreement_table}
    Wait Until Page Contains Element       ${agreement_row}   
    Scroll Element Into View     ${agreement_row}
    Capture Page Screenshot

Select the PIR Created
    # ${pir_link}    Construct Xpath    ${pir_link}    ${text}
    # Log    ${pir_link}
    # Click Element At    ${universal_search}
    # ${is_search_all_present}    Run Keyword And Return Status    Page Should Contain Element    ${universal_search_all}
    # IF    ${is_search_all_present}==${FALSE}
    #     Click Element At    ${universal_search}
    # END
    # # Click Element At    ${universal_search}
    # Input Text into Text Area    ${universal_search_input}        ${text}
    # Press Keys    ${universal_search_input}    RETURN
    # Click Element At    ${pir_link}
    ${pir_link}    Construct Xpath    ${pir_link}    ${text}
    Log    ${pir_link}
    Click Element At    ${universal_search}
    ${error_message}    Set Variable    Element '//input[@placeholder="Search..."]' not visible after 1 minute.
    ${is_search_all_present}    Run Keyword And Return Status    Page Should Contain Element    ${universal_search_all}
    IF    ${is_search_all_present}==${FALSE}
        Click Element At    ${universal_search}
    END
    # Click Element At    ${universal_search}
    TRY
        Input Text into Text Area    ${universal_search_input}        ${text}
        Press Keys    ${universal_search_input}    RETURN
        Click Element At    ${pir_link}
    EXCEPT    ${error_message}
        Click Element At    ${universal_search}
        Input Text into Text Area    ${universal_search_input}        ${text}
        Press Keys    ${universal_search_input}    RETURN
        Click Element At    ${pir_link}
    END




    

Refresh Page Until Page Contains Status Approved
    ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  ${status_Approve} 
    ${threshold_timer}=   Set Variable   0
    WHILE  ${Reload} != ${TRUE} and ${threshold_timer} < 181
        Reload Page
        ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  ${status_Approve} 
        ${threshold_timer}=   Evaluate   ${threshold_timer} + 60
        Sleep    60s
        Log   Threshold Timer So Far: ${threshold_timer} seconds
    END

User navigates to related tab
    Navigate to Procurement Intake Requests Tab
    Select the PIR Created
    Scroll Element Into View     ${related_field}
    Reload Page
    Click Element At    ${related_tab}





user also verifying that Agreement record is getting created
    Execute Javascript    window.scrollTo(0,1150)
    Wait Until Page Contains Element    ${agreement_number}
    Wait Until Page Does Not Contain    ${lightning_spinner}
    Sleep    5s
    Click Element    ${agreement_number}
    Capture Page Screenshot
user is verifying that Automation type is fasttrack
    # Wait till page load completely
    # Execute Javascript    window.scrollTo(0,850)
    # Click Element At    ${agreement_number}
    # Capture Page Screenshot
    Sleep    5s
    Execute Javascript    window.scrollTo(0,500)
    Wait Until Page Contains Element    ${agreement_recordtype_value}
    Capture Page Screenshot
user is verifying that Purchase record is getting created
    Execute Javascript    window.scrollTo(0,880)
    Wait Until Page Contains Element    ${purchases_number}
    Wait Until Page Does Not Contain    ${lightning_spinner}
    Sleep    5s
    Click Element    ${purchases_number}
    Capture Page Screenshot
user is verifying that Record Type is fasttrack
    Sleep    5s
    Execute Javascript    window.scrollTo(0,800)
    Wait Until Page Contains Element    ${purchases_recordtype_value}
    Capture Page Screenshot


user is verifying that Status Category and Status is Request
    Wait Until Page Contains Element     ${agreement_status_request}
    Capture Page Screenshot

     


user is clicking on Recall Option
    clicked RecallOption

Status of PIR should be Recalled
    PIR status as Recalled

Case status should be as Pending PIR Resubmission  
    Case Status Verifying as Pending PIR Resubmission   


Case Status Verifying as Pending PIR Resubmission
     Execute Javascript    window.scrollTo(0,580)
    Wait Until Page Contains Element    ${cases_link}
    Click Link At    ${cases_link}
    
    Click Element At    ${case_number}
    Wait Until Element Contains    ${pending_pir_resubmission}   ${pending_PIR_resubmission_value}
    Capture Page Screenshot

clicked RecallOption
    Wait Until Page Contains Element     ${recall_option}
    Click Element At   ${recall_option}
    Sleep    4s
    Click Element At    ${recall_and_cancel_link}
    Click Element At     ${save}
    Sleep    2s
    Wait Until Page Contains Element    ${recall_message_successfully}
    Sleep     5s
    Click Element At    ${cancel_and_close}



PIR status as Recalled
    Sleep    2s
     Execute Javascript    window.scrollTo(0,0)
     Wait Until Element Is Not Visible    //lightning-spinner
    Wait Until Element Is Visible   ${pir_status_recalled}
    Capture Page Screenshot




Agreement management status should be changed as Cancelled
            Execute Javascript    window.scrollTo(0,1100)
             Wait Until Element Is Not Visible    //lightning-spinner
             Wait Until Page Contains Element    ${pir_status_cancelled} 
             Capture Page Screenshot

User marks Signed Agreement as Yes for resubmitted Request
     Wait Until Page Contains    Launchpad
    # Navigate to Procurement Intake Requests Tab
    Select the PIR Created
    Set and Save Signed Agreement Required to Yes


Review and Approve PIR for resubmitted Request
    Reload Page
    # Scroll Element Into View    ${related_field}
    Click Element At    ${related_field}
    # Reload Page
    Wait Until Element Is Not Visible   //lightning-spinner
    Execute Javascript    window.scrollTo(0,550)
    Wait Until Element Is Not Visible    //lightning-spinner
    Execute Javascript    window.scrollTo(0,550)
    Case Status Verifying as PIR Resubmission


Case Status Verifying as PIR Resubmission
    Execute Javascript    window.scrollTo(0,580)
    Wait Until Page Contains Element    ${cases_link}
    Click Link At    ${cases_link}
    
    Click Element At    ${case_number}
    Wait Until Element Contains    ${pending_pir_resubmitted}    ${pending_PIR_resubmitted_value}
    Capture Page Screenshot
    Navigate to Procurement Intake Requests Tab
    Select the PIR Created
    Scroll Element Into View     ${related_field}
    Reload Page
    Click Element At    ${related_tab}

Case Status Verifying as Author Contract
    Execute Javascript    window.scrollTo(0,580)
    Wait Until Page Contains Element    ${cases_link}
    Click Link At    ${cases_link}
    Click Element At    ${case_number}
    Capture Page Screenshot
    Refresh Page Until Page Contains Status Author Contract
    Navigate to Procurement Intake Requests Tab
    Select the PIR Created
    Sleep     2s
    Scroll Element Into View     ${related_field}
    Reload Page
    Click Element At    ${related_tab}


Refresh Page Until Page Contains Status Author Contract
    ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  ${case_status_author_contract} 
    ${threshold_timer}=   Set Variable   0
    WHILE  ${Reload} != ${TRUE} and ${threshold_timer} < 181
        Reload Page
        ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  ${case_status_author_contract} 
        ${threshold_timer}=   Evaluate   ${threshold_timer} + 60
        Sleep    60s
        Log   Threshold Timer So Far: ${threshold_timer} seconds    
    END    
user is verying the Agreement amount is changed
    [Arguments]    ${Second_Amount}
          Execute Javascript    window.scrollTo(0,100)
          Wait Until Element Is Not Visible    //lightning-spinner
          Wait Until Page Contains    ${Second_Amount}
          
user also verifying that multiple procurement line items created
        Wait Until Page Contains Element    ${procurement_line_items_2}
        Sleep    5s
         Execute Javascript    window.scrollTo(0,1050)

Click on add approver button
     Click Element At    ${Add_Approver_click} 

Create watcher Details
    [Arguments]    ${Add_Watcher_item} 
    # adding implicit wait to prevent stale element exception due to change in the Dom.
    ${existing_wait_value}=    Get Selenium Implicit Wait
    Set Selenium Implicit Wait    1s 
    ${Add_Watcher_detail_dropdown_Item}     Construct Xpath     ${Add_Watcher_detail_dropdown_Item}       ${Add_Watcher_item}
    Click Element At  ${Add_Watcher_detail_dropdown}
    Input Text into Text Area   ${Add_Watcher_detail_dropdown}     ${Add_Watcher_item}  
    Click Element At    ${Add_Watcher_detail_dropdown_Item} 
    click element At  ${next_button_watcher}
    click element At     ${next_button_watcher} 
    Capture Page Screenshot
    Set Selenium Implicit Wait    ${existing_wait_value}

Click on case created for watcher
    Navigate to Procurement Intake Requests Tab
    Select the PIR Created
    Scroll Element Into View     ${related_field}
    Reload Page
    Click Element At    ${related_tab}
    Execute Javascript    window.scrollTo(0,300)
    Wait Until Page Contains Element    ${Watcher_case_number}
    Wait Until Page Does Not Contain    ${lightning_spinner}
    Sleep    5s
    Mouse Over    ${Watcher_case_number}
    Mouse Down   ${Watcher_case_number}
    Press Keys    ${Watcher_case_number}    ARROW_DOWN
    Capture Page Screenshot

Check Watcher details in detail tab
    Execute Javascript    window.scrollTo(0,300)
    Wait Until Page Contains Element    ${Watcher_case_number}
    Wait Until Element Is Visible    ${XPATH_DIV_WITH_TEXTS}    timeout=20s
    ${div_present}=    Run Keyword And Return Status    Element Should Be Visible    ${XPATH_DIV_WITH_TEXTS}
    Run Keyword If    ${div_present}    Log    ✅ Found a div containing both "Approver Type" and "Watcher"
    Run Keyword Unless    ${div_present}    Fail    ❌ Div with "Approver Type" and "Watcher" not found
    Capture Page Screenshot

user is verifying that case is updated with status as Intake validated
    Navigate to Procurement Intake Requests Tab
    Select the PIR Created



user is Verifying that PO Number is stamped in s360
              
              Execute Javascript    window.scrollTo(0,850)
            ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  ${po_url}
            ${threshold_timer}=   Set Variable   0
            WHILE  ${Reload} != ${TRUE} and ${threshold_timer} < 101
        
                Reload Page
                Sleep    60s
                Execute Javascript    window.scrollTo(0,850)
                ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  ${po_url} 
                ${threshold_timer}=   Evaluate   ${threshold_timer} + 60
            Log   Threshold Timer So Far: ${threshold_timer} seconds
    
            END
            Execute Javascript    window.scrollTo(0,850)
            ${po_url_value}    Get Element Attribute from    ${po_url}    ${href}
            Log    ${po_url_value}

user is Verify that PO URL is Populated
    
    ${po_number_value}    Get Text From    ${po_number}
    Log    ${po_number_value}
    Set Global Variable    ${po_number_value}
     Capture Page Screenshot                
