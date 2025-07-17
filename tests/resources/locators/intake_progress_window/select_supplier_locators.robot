*** Variables ***
${active_supplier}     //div[contains(text(),'Active Suppliers:')]
${active_supplier_dropdown}    //lightning-primitive-input-simple[contains(.//*, 'Active Suppliers')]//input
${active_supplier_dropdown_item}    //div[contains(.//span,'<replace>') and @role='option']