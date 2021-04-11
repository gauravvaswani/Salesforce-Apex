@isTest
private class CheckSecretInformationTest {
    @isTest 
    static void createCase() {
        // Create case with required fields
        Case myCase = new Case();
        myCase.Status = 'New';
        myCase.Origin = 'Phone';

        // Set Subject and description for case
        myCase.Subject     = 'Case with Secret Information';
        myCase.Description = 'Credit card information';

        insert myCase;
        System.debug('Case created ' + myCase.Subject + ' with required fields.');
        
    }
}
