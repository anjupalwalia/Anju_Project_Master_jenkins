*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    ../locators/login_locators.robot
Resource    ../variables/review_approval_workitem_variables.robot

*** Keywords ***
Click on Element
    [Arguments]    ${locator}
    Log    Clicking on ${locator}
    Wait Until Page is Loaded
     Wait Until Element Is Not Visible     //lightning-spinner
    Wait Until Page Contains Element    ${locator}
    Wait Until Element Is Enabled    ${locator}
    Wait Until Element Is Visible     ${locator}
    Set Focus To Element    ${locator}
    Scroll Element Into View      ${locator}    
    Set Focus To Element      ${locator}
    Double Click Element    ${locator}

Input Text into Text Area
    [Arguments]    ${locator}    ${text}
    Wait Until Page is Loaded
     Wait Until Element Is Not Visible     //lightning-spinner
    Wait Until Page Contains Element    ${locator}
    Wait Until Element is visible     ${locator}
    Scroll Element Into View      ${locator}    
    Set Focus To Element      ${locator}
    Input Text    ${locator}    ${text}

Launch Chrome Browser
   [Arguments]    ${url}    ${browser}    ${options}
   Log    Launch Browser: url: ${url}; browser: ${browser};options: ${options}
    ${options}  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys
    Call Method  ${options}  add_argument  --disable-notifications
    Open Browser  ${url}  ${browser}  options=${options}
    Maximize Browser Window

Launch Edge Browser
   [Arguments]    ${url}    ${browser}    ${options}
   Log    Launch Browser: url: ${url}; browser: ${browser};options: ${options}
    ${options}  Evaluate  sys.modules['selenium.webdriver'].EdgeOptions()  sys
    Call Method  ${options}  add_argument  --disable-notifications
    Open Browser  ${url}  ${browser}  options=${options}
    Maximize Browser Window

Click Next Button
    # Sleep    10
    Wait Until Page is Loaded
    Scroll Element Into View         ${next_button}
    Run Keyword And Ignore Error     Wait Until Element Is Not Visible    css=footer    timeout=5s
    Click Element At Coordinates    ${next_button}    5    5

Click Submit Button
     Wait Until Page is Loaded
     Wait Until Element Is Not Visible    //lightning-spinner

    #Scroll Element Into View    ${submit_button}
    #Set Focus To Element    ${submit_button}
    #Wait Until Element Is Visible    ${submit_button}
    #Click Button    ${submit_button}
    
     Sleep    10
    Scroll Element Into View         ${submit_button}
    Set Focus To Element    ${submit_button}
    Run Keyword And Ignore Error     Wait Until Element Is Not Visible    css=footer    timeout=5s
    Click Element At Coordinates    ${submit_button}   5    5
Click Finish Button
    Wait Until Page is Loaded
     Wait Until Element Is Not Visible    //lightning-spinner
    # Scroll Element Into View    ${finish_button}
    # Set Focus To Element    ${finish_button}
    # Wait Until Element Is Visible    ${finish_button}
    # Click Button    ${finish_button}
    Sleep    10s
    Scroll Element Into View          ${finish_button}
    Set Focus To Element    ${finish_button}
    Run Keyword And Ignore Error     Wait Until Element Is Not Visible    css=footer    timeout=5s
    Click Element At Coordinates    ${finish_button}   5    5

Click Element At
    [Arguments]    ${locator}
    Wait Until Page is Loaded
    Wait Until Element Is Not Visible    //lightning-spinner
    Wait Until Element Is Visible    ${locator}
    Wait Until Element Is Enabled    ${locator}
    Scroll Element Into View    ${locator}
    Set Focus To Element    ${locator}
    Scroll Element Into View    ${locator}
    Click Element    ${locator}
    

Click Link At
    [Arguments]    ${locator}
    Wait Until Page is Loaded
     Wait Until Element Is Not Visible     //lightning-spinner
    Wait Until Element Is Visible    ${locator}
    Wait Until Element Is Enabled    ${locator}
    Scroll Element Into View    ${locator}
    Set Focus To Element    ${locator}
    Scroll Element Into View    ${locator}
    Click Link    ${locator}

Select Value from Dynamic DropDown
    [Arguments]    ${locator}    ${value}
    # # Capture Page Screenshot
    Wait Until Page is Loaded
     Wait Until Element Is Not Visible    //lightning-spinner
    Click Element At    ${locator}
    Input Text into Text Area    ${locator}    ${value}
    Mouse Over    ${locator}
    Mouse Down    ${locator}
    Press Keys    ${locator}    ARROW_DOWN
    Press Keys    ${locator}    RETURN

Select Value from DropDown
    [Arguments]    ${locator}
    # # Capture Page Screenshot
     Wait Until Element Is Not Visible     //lightning-spinner
    Click Element At    ${locator}

Wait Until Page is Loaded
    Wait For Condition  return document.readyState == "complete"
     Wait Until Element Is Not Visible    //lightning-spinner

Handle Alerts other than Success Alerts
    ${timeout}=    Get Selenium Timeout
    Set Selenium Timeout    10s
    ${is_alert_absent}=  Run Keyword And Return Status  Alert Should Not Be Present
    ${is_success_alert_present}=    Run Keyword And Return Status    Page Should Contain    ${success_msg}
    IF    ${is_alert_absent} == ${FALSE} && ${is_success_alert_present}==${FALSE}
        Handle Alert    DISMISS
    END
    Set Selenium Timeout    ${timeout}

Construct Xpath
    [Arguments]    ${locator}    ${replacement_string}
    ${locator}    Replace String        ${locator}    <replace>    ${replacement_string}
    [Return]    ${locator}

Get Element Attribute from    
    [Arguments]    ${locator}    ${attribute}
    Wait Until Page is Loaded
     Wait Until Element Is Not Visible     //lightning-spinner
    Execute Javascript    window.scrollTo(0,650)
    Wait Until Element Is Visible    ${locator}
    Wait Until Element Is Enabled    ${locator}
    Scroll Element Into View    ${locator}
    Set Focus To Element    ${locator}
    Scroll Element Into View    ${locator}
    ${value}    Get Element Attribute    ${locator}    ${attribute}
    RETURN    ${value}

Get Text From
    [Arguments]    ${locator}
    Wait Until Page is Loaded
     Wait Until Element Is Not Visible     //lightning-spinner
    Execute Javascript    window.scrollTo(0,650)
    Wait Until Element Is Visible    ${locator}
    Wait Until Element Is Enabled    ${locator}
    Scroll Element Into View    ${locator}
    Set Focus To Element    ${locator}
    Scroll Element Into View    ${locator}
    ${text}    Get Text    ${locator}
    RETURN    ${text}
