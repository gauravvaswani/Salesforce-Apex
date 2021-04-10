// Another example to never write a trigger like this 
// Salesforce will result in a System.DMLException: Insert failed due to ParentId for before trigger
trigger NonExistentId on Case (after insert) {
    for (Case myCase : Trigger.new){
        CaseComment cc = new CaseComment();
        cc.CommentBody = 'Case received by Agent';
        cc.ParentId    = myCase.Id;
        insert cc;
    }
}