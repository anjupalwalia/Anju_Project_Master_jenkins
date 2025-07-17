*** Variables ***
${mandatory_commodity_dropdown}    //lightning-grouped-combobox[contains(.//*, 'Commodity')]//input
${commodity_dropdown}    //span[text()='Commodity']//ancestor::lightning-base-combobox
${spend_family_dropdown}    //span[text()='Spend Family']//ancestor::lightning-base-combobox
${spend_group_dropdown}    //span[text()='Spend Group']//ancestor::lightning-base-combobox