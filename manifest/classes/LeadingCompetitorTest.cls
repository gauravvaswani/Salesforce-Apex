@isTest
private class LeadingCompetitorTest {
    @isTest
    static void createOpportunity() {
        // Create an opportunity and set required fields
        Opportunity opp = new Opportunity();
        opp.Name        = 'Apex Academy';
        opp.CloseDate   = Date.today();
        opp.StageName   = 'Prospecting';

        //Set competitor fields
        opp.Competitor_1__c = 'Amazon';
        opp.Competitor_2__c = 'Google';
        opp.Competitor_3__c = 'Salesforce';

        //Set competitor price fields
        opp.Competitor_1_Price__c = 10000;
        opp.Competitor_2_Price__c = 2000;
        opp.Competitor_3_Price__c = 1999;
        
        insert opp;
        System.debug('Opportunity '+ opp.Name + ' inserted with all competitor fields populated.');
    }
}
