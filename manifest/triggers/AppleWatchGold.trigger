trigger AppleWatchGold on Opportunity (after insert) {
    for (Opportunity opp : Trigger.new){
        if(opp.Amount > 50000){
            Task t        = new Task();
            t.Subject     = 'Apple Watch';
            t.Description = 'Send them one ASAP';
            t.Priority    = 'High';
            t.WhatId      = opp.Id;
            insert t;
        }
    }
}