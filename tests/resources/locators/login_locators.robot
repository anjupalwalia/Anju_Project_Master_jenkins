*** Variables ***
${css_username}    css=#username
${css_password}    css=#password
${id_login_button}    Login
${user_name}    id:username
${password}    id:password
${login_button}    id:Login
${next_button}    //button[@title='Next']
${submit_button}    //button[@title='Submit']
${finish_button}    //button[@title='Finish']
${view_profile}     //span[text()='View profile']/ancestor::button
${log_out}    //a[text()='Log Out']
${search_button_xpath}    //button[contains(text(), 'Search')]
${sherpa_agreement_test_user}      //lightning-input[contains(.//*, 'Search...')]//input[@type='search']
${sherpa_agreement_value_select}    //span[@title='Sherpa Agreement Management Test User']