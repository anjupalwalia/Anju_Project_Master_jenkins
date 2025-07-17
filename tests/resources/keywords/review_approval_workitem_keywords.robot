*** Settings ***
Library    SeleniumLibrary
Resource    ../utils/selenium_utils.robot
Resource    ../locators/procurement_intake_request_screen_locators.robot
Resource    ../variables/procurement_intake_request_screen_variables.robot
Resource    ../keywords/procurement_intake_request_screen_keywords.robot
Resource    ../variables/review_approval_workitem_variables.robot
Resource    ../locators/review_approval_workitem_locators.robot
Resource    ../utils/setup.robot


*** Keywords ***


user is approving the approvals
    user is approving the approver
    user is confirm the approver
    Validate Success Message Upon Approval


Validate Success Message Upon Approval
    Wait Until Page Contains    ${success_status}
    Wait Until Page Contains    ${success_msg}
    Capture Page Screenshot
    Click Element At    ${success_msg_user_approval}
   
    
user is approving the approver
    Wait Until Element Contains    ${approve_work_item}    ${approving_work_item}
    Click Element At    ${approve_work_item}

user is confirm the approver  
    Capture Page Screenshot 
    Click Element At    ${confirm_approver}
       
    