@isTest
private class AssignLeadGradeTest {
    @isTest static void createLead() {
        Lead myLead       = new Lead();
        myLead.Salutation = 'Mr';
        myLead.FirstName  = 'Gaurav';
        myLead.LastName   = 'Vaswani';
        myLead.Company    = 'Salesforce';
        myLead.Score__c   = 70;
        insert myLead;
    }
}