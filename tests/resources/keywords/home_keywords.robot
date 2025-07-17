*** Settings ***
Library    SeleniumLibrary

Resource    ../utils/selenium_utils.robot
Resource    ../locators/home_locators.robot
Resource    intake_progress_window/intake_progress_window_keywords.robot
Resource    ../variables/procurement_intake_request_screen_variables.robot

*** Keywords ***
User is clicking on Create New Intake Request
    Reload Page
    Wait For Condition	return document.readyState == "complete"
    Wait Until Page Contains    ${launchpad}
    Click on Element    ${create_procurement_intake}
    Check if Intake Window is Open

Check if Intake Window is Open
    Wait For Condition	return document.readyState == "complete"
    ${is_intake_workflow_present}    Run Keyword And Return Status    Page Should Contain    Intake Workflow
    Log    ${is_intake_workflow_present} Intake Screen Presence
    IF    '${is_intake_workflow_present}'=='False'
        Click Element At    ${create_procurement_intake}
    END