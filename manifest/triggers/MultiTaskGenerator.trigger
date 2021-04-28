trigger MultiTaskGenerator on Account (after insert) {
    for (Account acc : Trigger.new){
        if (acc.Organizational_Structure__c != null){
            // Add picklist values selected in a list
            List<String> picklistValues = new List<String>();
            picklistValues = acc.Organizational_Structure__c.split(';');
            System.debug('Picklist values selected' + picklistValues);

            // Create list of tasks based on picklist values selected`
            List<Task> createTask = new List<Task>();
            for (String itemValue : picklistValues){
                System.debug('Create a new task for every picklist value: ' + itemValue);
                Task myTask = new Task();
                myTask.Subject = itemValue;
                myTask.WhatId = acc.Id;
                createTask.add(myTask);
            }
            insert createTask;
        }
    }

}