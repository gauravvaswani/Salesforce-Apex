trigger AssignLeadGrade on Lead (before insert, before update) {
    for (Lead myLead : Trigger.new){
        if(myLead.Score__c != null){
            if(myLead.Score__c == 100){
                myLead.Grade__c = 'A+';
            } else if (myLead.Score__c >= 90){
                myLead.Grade__c = 'A';
            } else if (myLead.Score__c >= 80){
                myLead.Grade__c = 'B';
            } else {
                myLead.Grade__c = 'F';
                myLead.Status = 'Closed - Trash';
            }
        }
    }
}