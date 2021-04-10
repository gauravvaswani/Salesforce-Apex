@isTest
public class HelloWorldTest {
    @isTest static void updateLead() {
        Lead myLead      = new Lead();
        myLead.FirstName = 'Gaurav';
        myLead.LastName  = 'Vaswani';
        myLead.Company   = 'Salesforce.com';
        insert myLead;

        myLead.Company   = 'Salesforce.org';
        update myLead;
    }
}
