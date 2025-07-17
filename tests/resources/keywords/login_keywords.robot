*** Settings ***
Resource    ../../resources/libraries.robot
Resource    ../../resources/variables/login_variables.robot
Resource    ../../resources/locators/login_locators.robot
Library     SeleniumLibrary
Resource    ../utils/selenium_utils.robot
Resource    procurement_intake_request_screen_keywords.robot
Resource    ../../resources/variables/coupa_requisition_variables.robot
Resource    ../../resources/locators/coupa_requisition_locators.robot

*** Variables ***
&{CAPABILITIES}    enableVNC=${true}     browserName=chrome    version=107   enableVideo=${True}

*** Keywords ***
Launch Chrome in Jenkins
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome options}    add_experimental_option    detach    ${True}
    Call Method    ${chrome options}    add_argument    --disable-notifications
    
    
    Open Browser  
        ...  ${qa_org_url}  browser=chrome    options=add_argument("--no-sandbox")
        ...  remote_url=${REMOTE_URL}
        ...  desired_capabilities=${CAPABILITIES}

    ${session_id}    Get Session Id
    Log    Browser session Id: ${session_id}

    Go To    ${ff_qa_e2e_url}
    
The user navigates to Salesforce Website
    [Arguments]    ${env}
    
    IF    '${env}' == 'Dev'
        ${url}    Set Variable    ${dev_org_url}
        ${username}    Set Suite Variable    ${dev_org_username}
        ${password}    Set Suite Variable    ${dev_org_password}        
    
    ELSE IF   '${env}' == 'QA'
        ${url}    Set Variable    ${qa_org_url}
        ${username}    Set Suite Variable    ${qa_org_username}
        ${password}    Set Suite Variable    ${qa_org_password}        
    
    END
    
    Go to    ${ff_qa_e2e_url}
    Maximize Browser Window

Logs in to Salesforce with Valid Credentials
    Input Text    ${css_username}    ${dev_org_username} 
    Input Text    ${css_password}    ${dev_org_password}
    Click Element    ${id_login_button}

The Salesforce Login should be Successful
    Log    Login Successful

User to validate Sandbox Login Functionality
        Log    message
User Launches Finance Force in browser
    ${platform}=   Evaluate    sys.platform    sys
    Log    Detected platform: ${platform}
    Run Keyword If    '${platform}' == 'linux'
    ...    Launch Chrome in Jenkins
    Run Keyword If    '${platform}' != 'linux'
    ...    Launch Chrome in Local Machine

Launch Chrome in Local Machine
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    #  ${options}=    Evaluate    sys.modules['selenium.webdriver'].EdgeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --disable-notifications
    Call Method    ${options}    add_argument    --start-maximized
    # Call Method    ${options}    add_argument    --headless
    Launch Edge Browser   ${ff_qa_e2e_url}     Edge      options=${options}

User Logs into Finance Force as Requester
    Login to Finance Force


    
User to validate Salesforce Login Functinality including Basic Roundtrip - Amount-Based- No
    Log  Hello 

user is going to MY Procurement Center
    Log  Hello 

User logs out as Requester
    Wait Until Page is Loaded
    Wait Until Page Contains Element     ${view_profile}
    Wait Until Element Is Enabled    ${view_profile}
    Click Element At    ${view_profile} 
    Wait Until Element Is Enabled    ${Log_out}
    Click Link    ${log_out}
    
User logs out as Agreement management user
    Wait Until Page is Loaded
    Wait Until Page Contains Element     ${view_profile}
    Wait Until Element Is Enabled    ${view_profile}
    Click Element At    ${view_profile} 
    Wait Until Element Is Enabled    ${Log_out}
    Click Link At    ${log_out}
   
User logs in as Agreement management user
    
    Input Text into Text Area        ${user_name}    ${user_name_value_Sherpa_Agreement_manager}
    Input Text into Text Area    ${password}   ${password_value_Sherpa_Agreement_Manager}
    Click Element At   ${login_button}



User Logs into Coupa
    # Launch Browser   ${url_coupa}    ${browser}  options=${options}
    Go To    ${url_coupa}
    Input Text into Text Area        ${coupa_user_name}    ${coupa_user_name_value}
    Input Text into Text Area   ${coupa_password}   ${coupa_password_value}
    Click Element At   ${coupa_login_button}
    Title Should Be    Coupa Home

User Logs Out of Coupa
    Wait Until Page is Loaded
    Wait Until Page Contains Element     ${profile_coupa}
    Wait Until Element Is Enabled    ${profile_coupa}
    Click Element At    ${profile_coupa} 
    Wait Until Element Is Enabled     ${sign_out}
    Click Link At    ${sign_out}
    

user is clicking on PR Url
    Log  Hello 
user is approve the approvals in Coupa(Bypass)
    Log  Hello 

user is Filling the fields and on the Review Procurement Request page select Yes for " DO you want to add another line item?" and click on Next
    Log  Hello 
user is Filling the fields for the 2nd Line and submit the PIR
    Log  Hello 
user is Log out as Requester and log in as Agreement management user
    Log  Hello     

user id Filling in the fields for the 2nd Line and repeat previous step and add 1 more line item for the commodity mentioned and submit the PIR
  Log   Hello    

Login to Finance Force
    Input Text into Text Area       ${user_name}    ${user_name_value_requester}
    Input Password    ${password}   ${password_value_requester}
    Click Button    ${login_button}


user is verifying the coupa PR value status as pending approval
    Wait Until Page Contains Element    ${pending_approval_status}     
    Capture Page Screenshot

Amount changes also verifying in to coupa 
        
    Sleep    2s
     Execute Javascript    window.scrollTo(0,1000)
     Wait Until Element Is Not Visible    //lightning-spinner
        Wait Until Page Contains Element    ${amount_changed}   


user is verifying the coupa PR value status as draft approval
    Wait Until Page Contains Element    ${draft_approval_status} 