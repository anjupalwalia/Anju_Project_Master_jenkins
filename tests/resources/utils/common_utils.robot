*** Settings ***
Library    DateTime

*** Keywords ***
Delay Days By
    [Arguments]    ${delay_in_days}
    ${today}=    Get Current Date    result_format=%Y-%m-%d
    ${future_date}=    Add Time To Date    ${today}    ${delay_in_days}    result_format=%B %d, %Y
    [Return]   ${future_date}