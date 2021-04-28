@isTest
public class LeadDisqualificationTest {
    @isTest static void LeadDisqualificationTest() {
        Lead l = new Lead();
        l.LastName = 'Test';
        l.Company = 'Testing';
        insert l;
    }
}
