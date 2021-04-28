@isTest
public class MultiTaskGeneratorTest {
    @isTest static void MultiTaskGeneratorTest() {
        Account acc = new Account();
        acc.Name = 'SFDC 99';
        acc.Organizational_Structure__c = 'Item 1; Item 2';
        insert acc;
    }
}
