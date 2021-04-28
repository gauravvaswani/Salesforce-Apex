@isTest
public class PicklistCounterTest {
    @isTest static void PicklistCounterTest() {
        //Create an account with Organizational Structure
        Account acc = new Account();
        acc.Name = 'SFDC99';
        acc.Organizational_Structure__c = 'Item 1;Item 2;Item 3';
        insert acc;

        // Update the account to have no Organizational Structure
        acc.Organizational_Structure__c = null;
        update acc;
    }
}
