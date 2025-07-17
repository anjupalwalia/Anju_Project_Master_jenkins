*** Variables ***
${procurement_intake_request_tab}    //a[@title="Procurement Intake Requests"]//parent::one-app-nav-bar-item-root
${pir_search_bar}    //input[@placeholder="Search this list..."]
${edit_agreement_pencil}    //record_flexipage-record-field[contains(.,'Signed Agreement Required')]//button
${edit_agreement_button}    //button[@aria-label="Signed Agreement Required"]
${edit_agreement_no_item}    //lightning-base-combobox-item[.='No']
${edit_agreement_Yes_item}    //lightning-base-combobox-item[.='Yes']
${save_button}    //button[text()='Save']
${related_tab}    //a[text()='Related']//parent::li
${approve_here_link}    //a[text()='Approve Here']
${review_button}           //button[@name="ReviewApprovalWorkItem"]
${review_button_second}    //div[contains(@class,'active')]//li[@data-target-selection-name="sfdc:StandardButton.ApprovalWorkItem.ReviewApprovalWorkItem"]
${approve_work_item}    //label[contains(.,'Approve the work item')]
${confirm_button}    //button[text()='Confirm']
${pr_url}    //a[contains(text(),'https://salesforce-compass-test.coupahost.com/requisition_headers')]
${related_field}        //lightning-tab-bar//a[@data-tab-value='relatedListsTab']
${universal_search}    //button[@aria-label="Search" and @type="button"]
${universal_search_all}        //input[@data-value="Search: All"]
${universal_search_input}    //input[@placeholder="Search..."]
${pir_link}    //a[contains(text(),'Procurement Intake Requests')]//ancestor::div[contains(@class,'searchResultsGridHeader')]//following::a[@title='<replace>']
${pir_sub_header}    //h1[text()='Procurement Intake Requests']
${pr_number}    //record_flexipage-record-field[contains(.//*,'Coupa PR Number')]//lightning-formatted-text[string-length(text()) > 0]
${purchase_value_is_zero}    //span[@title="Purchases"]//following-sibling::span[text()='(0)']
${agreement_is_not_created}    //span[@title="Agreements"]//following-sibling::span[text()='(0)']
${lightning_spinner}    //lightning-spinner
${cases_link}    //div[contains(@class,'active')]//span[@title='Cases']//parent::a  
${case_number}    //*[@data-label="Case Number"]//span/div   
${case_status_New}    //lightning-formatted-text[@slot="outputField" and contains(text(),'New')]
${status_Approve}     //slot[@name='secondaryFields']//lightning-formatted-text[contains(text(),'In Approvals')]
${agreement_table}     //article[contains(.//*,"Agreements")] 
${purches_table}       //article[contains(.//*,"Purchases")]
${agreement_row}     //article[@aria-label="Agreements"]//lightning-primitive-cell-factory[@data-label="Agreement Name"] 
${purches_row}       //article[@aria-label="Purchases"]//lightning-primitive-cell-factory[@data-label="Purchase Name"]
${agreements_link}            //span[@title="Agreements"]//ancestor::h2/a
${agreement_number}    //lightning-primitive-cell-factory[@data-label="Agreement Name"]
${agreement_recordtype_value}    //*[@field-label="Record Type"]//*[@slot="outputField"]
${purchases_recordtype_value}    //lightning-formatted-text[contains(text(),'FastTrack') and @slot="outputField"]//parent::slot
${purchases_number}    //*[@data-label="Purchase Name"]//span/div
${case_status_author_contract}    //lightning-formatted-text[@slot="outputField" and contains(text(),'Author Contract')]
${recall_option}    //*[@role='presentation']//button[@type="button" and @part="button button-icon"]//parent::lightning-button-menu
${recall_and_cancel_link}    //*[contains(text(),'Cancel/Recall Intake Request')]
${save}    //span[contains(text(),'Save')]
${cancel_and_close}    //button[@title="Cancel and close"]
${recall_message_successfully}    //*[contains(text(),'PIR successfully Recalled')]
${pending_pir_resubmission}    //lightning-formatted-text[@slot="outputField" and contains(text(),'Pending PIR Resubmission')]
${pir_status_recalled}       //*[contains(text(),'Recalled')]
${pir_status_cancelled}       //span[@title="Cancelled"]//parent::lst-formatted-text
${pending_pir_resubmitted}    //lightning-formatted-text[@slot="outputField" and contains(text(),'PR Resubmitted')]
${agreement_status_request}    //*[@title="Request"]
${procurement_line_items_2}    //span[@title="Procurement Line Items"]//following-sibling::span[text()='(2)']
${case_status_Intakevalidated}    //lightning-formatted-text[@slot="outputField" and contains(text(),'Intake Validated')]
${po_url}    //a[contains(text(),'https://salesforce-compass-test.coupahost.com/order_headers')]
${po_number}    //record_flexipage-record-field[contains(.//*,'Coupa PO Number')]//lightning-formatted-text




${Add_Approver_click}    //button[contains(text(),'Add Approver')]
${Add_Watcher_detail_dropdown}    //lightning-grouped-combobox[contains(.//*,'Please select the watcher')]//input
${Add_Watcher_detail_dropdown_Item}    //lightning-grouped-combobox[contains(.//*,'Please select the watcher')]//lightning-base-combobox-item[contains(.,'<replace>') and not(contains(.,'Show more results for'))]
${next_button_watcher}   //footer//button[normalize-space(.)='Next']
${Watcher_case_number}    //article[@aria-label="Intake Coupa Approvals"]//tr[@data-row-number=2]//th[@Data-label='Coupa Approval Name']//a
${Intake_coupa_approvals}    //article[@aria-label="Intake Coupa Approvals"]
${XPATH_DIV_WITH_TEXTS}    //div[contains(., 'Approver Type') and contains(., 'Watcher')]
