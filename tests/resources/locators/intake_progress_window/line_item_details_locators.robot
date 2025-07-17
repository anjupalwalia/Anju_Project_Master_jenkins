*** Variables ***
${item_description_input}    //lightning-input-field[contains(.//*,'Item Description')]//input
${invoice_radio_button}    //lightning-radio-group//input[@value='<replace>']//following-sibling::label
# ${quantity_radio_button}    //lightning-radio-group//input[@value='Quantity']
${amount_input}    //lightning-input[contains(.//*,'Amount')]//input
${quantity_input}    //lightning-input[contains(.//*,'Quantity')]//input
${unit_price_input}    //lightning-input[contains(.//*,'Unit Price')]//input
${unit_of_measure_button}    //lightning-combobox[contains(.//*,'Unit-of-Measure')]//button
${unit_of_measure_item}    //lightning-base-combobox-item[contains(.,'<replace>')]
${currency_dropdown}    //lightning-combobox[contains(.//*,'Currency')]//button
${currency_item}    //lightning-base-combobox-item[contains(.,'<replace>')]
${need_by_date_dropdown}    //lightning-datepicker[contains(.//*,'Need By Date')]//input
${service_start_date_dropdown}    //lightning-datepicker[contains(.//*,'Service Start Date')]//input
${service_end_date_dropdown}    //lightning-datepicker[contains(.//*,'Service End Date')]//input
${installation_service_site}    //lightning-base-combobox-item[contains(.,'<replace>')]
${yes_radio_button}    //lightning-radio-group//input[@value='Yes']
${no_radio_button}    //lightning-radio-group//input[@value='No']
${reason_for_late_submission_dropdown}    //lightning-combobox[contains(.//*,'Reason for Late Submission')]//button
${reason_for_late_submission_item}    //lightning-base-combobox-item[contains(.,'<replace>')]

#########################################################################################################

${Reason_for_Donation_Checkbox}      //span[contains(text(),'<replace>')]
${group_vet_or_select_donation_checkbox}    //span[contains(text(),'<replace>')]
${region_for_recipient_dropdown}  //lightning-combobox[contains(.//*,'What region is the recipient in?')]//button 
${region_for_recipient_item}   //lightning-base-combobox-item[contains(.,'<replace>')]
${Business_Sponsor's_Name}     //lightning-input[contains(.//*,'Business Sponsor')]//input
${Did_the_Philanthropy_Team_help_dropdown}       //lightning-combobox[contains(.//*,'Did the Philanthropy Team help you select or vet the donation?')]//button 
${Did_the_Philanthropy_Team_help_item}  //lightning-base-combobox-item[contains(.,'<replace>')]
${groups_help_you_select_or_vet_the_donation_item}    //lightning-input[@data-id='<replace>'] 
${substitute_for_a_gift_or_as_an_incentive_dropdown}       //lightning-combobox[contains(.//*,'Is this donation being used as a substitute for a gift or as an incentive')]//button   
${substitute_for_a_gift_or_as_an_incentive_item}       //lightning-combobox[contains(.//*,'Is this donation being used as a substitute')]//lightning-base-combobox-item[contains(.,'<replace>')]
${SDG_Impact_Field_button}            //lightning-input[contains(.//*,'Clean Water')]//input
${SDG_Impact_Field_button_item}        //lightning-input[@data-id='<replace>']
${SDG_Impact_Field_Checkbox_Locator}    //lightning-primitive-input-checkbox//span[contains(text(),'<replace>')]
${Requirements_and_Obligations_dropdown}    //lightning-combobox[contains(.//*,'Are you aware of any restrictions being placed on the use of this grant')]//button
${Requirements_and_Obligations_item}    //lightning-combobox[contains(.//*,'Are you aware of any restrictions being placed on the use of this grant')]//lightning-base-combobox-item[contains(.,'<replace>')]
${outline_how_the_recipient_can_use}    //lightning-input[contains(.//*,'If yes, please outline how the recipient can use the funds')]//input
${Marketing_and_Publicity_dropdown}    //lightning-combobox[contains(.//*,'Does Salesforce or the non-profit recipient plan on publicizing the donation in any way')]//button 
${Marketing_and_Publicity_item}      //lightning-combobox[contains(.//*,'Does Salesforce or the non-profit recipient plan on publicizing the donation in any way')]//lightning-base-combobox-item[contains(.,'<replace>')]
${Ethics_&_Integrity_Questionnaire_dropdown}    //lightning-combobox[contains(.//*,'How did you identify and select the recipient for this donation?')]//button
${Ethics_&_Integrity_Questionnaire_item}       //lightning-base-combobox-item[contains(.,'<replace>')]
${Did_anyone_solicit_this_donation_dropdown}   //lightning-combobox[contains(.//*,'Did a Salesforce employee, customer, partner, or Government Official recommend, ask for')]//button 
${Did_anyone_solicit_this_donation_item}     //lightning-combobox[contains(.//*,'Did a Salesforce employee, customer, partner, or Government Official recommend, ask for')]//lightning-base-combobox-item[contains(.,'<replace>')]
${Are_you_aware_ofany_currently_pending_dropdown}   //lightning-combobox[contains(.//*,'Are you aware of any recently negotiated or currently pending deals with the recipient')]//button 
${Are_you_aware_ofany_currently_pending_item}     //lightning-combobox[contains(.//*,'Are you aware of any recently negotiated or currently pending deals with the recipient')]//lightning-base-combobox-item[contains(.,'<replace>')]
${Donation_have_a_business_or_family_connection_dropdown}    //lightning-combobox[contains(.//*,'Do you, the Business Sponsor, or anyone else involved in this donation have a business or family connection')]//button
${Donation_have_a_business_or_family_connection_item}       //lightning-combobox[contains(.//*,'Business Sponsor, or anyone')]//lightning-base-combobox-item[contains(.,'<replace>')]
${promised_or_offered_anything_in_exchange_for_this_donation_dropdown}    //lightning-combobox[contains(.//*,'promised or offered anything in exchange for this donation')]//button
${promised_or_offered_anything_in_exchange_for_this_donation_item}    //lightning-combobox[contains(.//*,'promised or offered anything in exchange for this donation')]//lightning-base-combobox-item[contains(.,'<replace>')]
${cerification_acknowledgement_dropdown}    //lightning-combobox[contains(.//*,'I certify that')]//button
${cerification_acknowledgement_item}        //lightning-combobox[contains(.//*,'I certify that')]//lightning-base-combobox-item[contains(.,'<replace>')]
${Number_of_Licenses_Per Seats}    //lightning-input[contains(.//*,'Number of Licenses/Per Seats if Sold on a Per Basis')]//input
${Cost_Per_License_Seat}    //lightning-input[contains(.//*,'Cost Per License/Seat if Sold on a License/Seat Basis')]//input
