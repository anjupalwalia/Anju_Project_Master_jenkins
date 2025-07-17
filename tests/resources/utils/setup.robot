*** Settings ***
Library    DateTime
*** Keywords ***
Set Text Value
    ${date}    Get Current Date
    ${text}    Set Variable    Automation PI ${date}
    # ${text}    Set Variable    Automation PI 2025-07-09 12:24:58.892
    Set Global Variable    ${text}