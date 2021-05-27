({
    getResponse : function(component, base) {
        // create a server side action
        var action = component.get("c.getCalloutResponseContents");

        //set the url parameter for gerCalloutResponseContensts method (to use as endPoint)
        action.setParams({
            "url" : 'http://api.fixer.io/latest?base=' + base
        });
        action.setCallback(this, function(response){
            var state = response.getState();
            if (component.isValid() && state === "SUCCESS"){
                // set the response (return Map<String,Object>) to response attribute

                component.set("v.response", response.getReturnValue());

                //get all the rates from map by using key
                var getAllRates = component.get("v.response")['rates'];
                var CurrencyList = [];
                // play a loop on rates object
                for (var key in getAllRates){
                    // push all rates witht the Names in the CurencyList variable
                    CurrencyList.push(key + ' = ' + getAllRates[key]);
                }
                // Set the CurrencyList to ListofCurrency attribute on component
                component.set("v.ListofCurrency", CurrencyList);
            }
        });
        $A.enqueueAction(action);
    }
})

