*** Variables ***
${REMOTE_URL}     https://baas.sfdcbt.net/wd/hub

# Dev
${dev_org_url}    https://test.salesforce.com/
${dev_org_username}    %{dev_org_username=example-dev-user@salesforce.com}
${dev_org_password}    %{dev_org_pw=example-dev-password}

# QA
${qa_org_url}    https://test.salesforce.com/
${qa_org_username}    %{qa_org_username=example-qa-user@salesforce.com}
${qa_org_password}    %{qa_org_pw=example-qa-password}

#FF
${user_name_value_requester}    automation.requester@salesforce.com.fferpe2e
${password_value_requester}    Confirm09!Confirm09!
# ${user_name_value_requester}    apalwalia@salesforce.com.fferpe2e
# ${password_value_requester}    Anjulovekant@123456789
${ff_qa_e2e_url}                https://financeforce--fferpe2e.sandbox.lightning.force.com/lightning/page/home
${options}    --disable-notifications    --headless
${browser}                Chrome
${agreement_manager_login_url}    https://test.salesforce.com/
${agreement_test_user}   Sherpa Agreement Management Test
${user_name_value_Sherpa_Agreement_manager}  automationagreement_management@test.com
${password_value_Sherpa_Agreement_Manager}    SagarikaSagarika143@
${sign_out}    //a[@title='Sign Out']
${pending_approval_status}    //h3[contains(text(),'Pending Approval')]
${draft_approval_status}    //h3[contains(text(),'Draft')]
${amount_changed}    //span[contains(text(),'6,000.00')]