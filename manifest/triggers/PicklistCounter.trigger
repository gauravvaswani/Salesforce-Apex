trigger PicklistCounter on Account (before insert, before update) {
    for (Account acc : Trigger.new){
        if(acc.Organizational_Structure__c != null){
            Integer count = acc.Organizational_Structure__c.countMatches(';') + 1;
            acc.Count_of_Organizational_Structure__c = count;
            System.debug('Number of items found for ' + acc.Name + ': ' +count);
        } else {
            //Reset the counter if Organizational_Structure__c field has no items
            acc.Count_of_Organizational_Structure__c = 0;
            System.debug('No items found for ' + acc.Name);
        }
    }
}