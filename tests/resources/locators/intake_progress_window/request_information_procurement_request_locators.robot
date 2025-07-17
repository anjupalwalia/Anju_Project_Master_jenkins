*** Variables ***
${pir_name}    //input[@name="procurementname"]
${ship_to_address}    //lightning-record-picker[@data-name="shipTo"]//input
${ship_to_address_dropdown}    //*[contains(text(), '<replace>')]//ancestor::lightning-base-combobox-item
${purchase_description}    //textarea[@name="purchaseDescription"]
${business_reason_impact}     //textarea[@name='businessReason']  
${negotiation_details}    //textarea[@name='negotiationDetails']
${on_behalf_of_dropdown}    //label[text()='Is this Intake request on behalf of someone else?']//following-sibling::div//lightning-base-combobox
${on_behalf_of_yes}    //lightning-base-combobox-item[@data-value="Yes"]
${on_behalf_of_user_search_input}    //lightning-base-combobox//input[@placeholder='Search for User']
${on_behalf_of_user_search_results_value}    //lightning-base-combobox-item[contains(.,'<replace>')]