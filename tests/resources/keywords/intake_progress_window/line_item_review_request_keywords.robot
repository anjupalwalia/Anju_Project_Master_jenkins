*** Settings ***
Resource    ../../variables/intake_progress_window/line_item_review_request_variables.robot
Resource    ../../locators/intake_progress_window/line_item_review_request_locators.robot
Resource    ../../utils/selenium_utils.robot

*** Keywords ***
Select Another Line Item No
    Click Element At    ${li_review_no_radio_button}

Select Another Line Item Yes
    Click Element At    ${li_review_yes_radio_button}
Upload File
    Log    message
Enter Attachment URL
    Log    message
Select Send Attachment to Supplier Checkbox
    Log    message
Select Send URL Attachment to Supplier
    Log    message
Enter Attachment Text
    Log    message
Select Text Attachment to Supplier
    Log    message
Check for PIR Submission Success message
    Log    message
Select User Sentiment
    Log    message
Enter User Feedback
    Log    message
Check if PIR Screen is Open
    Log    message