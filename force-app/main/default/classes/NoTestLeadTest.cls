@isTest
public class NoTestLeadTest {
    @isTest static void NoTestLeadTest() {
        Lead myLead = new Lead();
        myLead.FirstName = 'David';
        myLead.LastName = 'Test';
        myLead.Company = 'Salesforce';
        insert myLead;
    }
}
