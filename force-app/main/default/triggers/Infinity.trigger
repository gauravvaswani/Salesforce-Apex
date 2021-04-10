// Never write such a trigger
// Salesforce will result in a System.FinalException: Record is read-only Trigger
trigger Infinity on Opportunity (after update) { // To fix the issue change to before and remove the update event
    for (Opportunity opp : Trigger.new){
        opp.Amount = 1000;
        update opp;
    }
}