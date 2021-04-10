trigger HelloWorld on Lead (before update) {
    for (Lead l : Trigger.new){ //Trigger.new is the list of all records entering a trigger
        l.FirstName = 'Hello';
        l.LastName  = 'World';
    }
}