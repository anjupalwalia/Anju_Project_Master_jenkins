*** Settings ***
Resource    ../../resources/variables/coupa_requisition_variables.robot
Resource    ../../resources/locators/coupa_requisition_locators.robot
Resource    ../utils/selenium_utils.robot
Library    SeleniumLibrary

*** Keywords ***
User approves the PIR in Coupa(Bypass)
    Approve PR in Coupa
    
Approve PR in Coupa
    ${is_more_action_item_present}=     Run Keyword And Return Status  Page Should Contain Element     ${more_actions}
    IF    ${is_more_action_item_present} == ${TRUE}
        Approve PR in Coupa using more action dropdown
    ELSE
        Approve PR using bypass button
    END

    #Verify Approval Complete
    Wait Until Page Contains    Approval Complete
    Page Should Contain Element    ${approval_complete_status}
    Capture Page Screenshot

Approve PR using bypass button
    Click Element At    ${bypass_orders} 

approve PR in Coupa using more action dropdown
    Click Element At    ${more_actions}
    Click Element At    ${bypass_orders_dropdown}    

click on search bar
    
    Click Element At    ${search_bar} 
    
    
input created PR value and click the PR link
    [Arguments]    ${pr_number_param}
    Log    ${input_PR_bar} 
    Click Element At   ${input_PR_bar}
    Input Text into Text Area    ${input_PR_bar}    ${pr_number_param}
    Capture Page Screenshot
    ${pr_link_search_result}     Construct Xpath    ${pr_link_search_result}    ${pr_number_param}
    Click Element At    ${pr_link_search_result}