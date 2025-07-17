*** Variables ***
${coupa_user_name}    id:user_login
${coupa_password}   id:user_password
${coupa_login_button}    id:login_button
${coupa_PR_URL}                //lightning-formatted-text//a
${recent_activity}             //div[@id='leftColumn']//h2[contains(text(),'Recent Activity')]
${more_actions}        //button[contains(text(),'More Actions')]
${bypass_orders}               //*[contains(text(),'Bypass Approvals and Order')]
${approval_complete_status}    //section[contains(.//*, 'Approvers')]//div[contains(text(), 'Approval Complete')]
${search_bar}    //div[@aria-label="Welcome Banner"]//span[contains(text(), 'What do you need? Start your search here')]/parent::button
${input_PR_bar}    //div[@aria-label='Search for items, services, documents and more!']//input[@name='searchInput' and @placeholder='What do you need?']
${pr_link_search_result}    //div[@aria-label='Search for items, services, documents and more!']//h4[text()='Requests']/following::a[contains(text(),'<replace>')]
${profile_coupa}     //div[@data-testid='coupaUserMenuPopupTrigger']/parent::button
${sign_out}    //a[@title='Sign Out']
${more_actions}        //button[contains(text(),'More Actions')]
${bypass_orders_dropdown}               //ul[@class='dropdown-menu']//a[contains(text(),'Bypass Approvals and Order')]