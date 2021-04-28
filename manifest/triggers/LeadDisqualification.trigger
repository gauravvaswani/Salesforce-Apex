trigger LeadDisqualification on Lead (before insert) {
    String myString = 'Test';
    for(lead l: Trigger.new){
        if (l.LastName.containsOnly(myString) || l.FirstName.containsOnly(myString)){
            l.Status = 'Disqulaified';
        }
    }
     /*
    Change status to Disqualified if First / Last Name = Test
    */
}