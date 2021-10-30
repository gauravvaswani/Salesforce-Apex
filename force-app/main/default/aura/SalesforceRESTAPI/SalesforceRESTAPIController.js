({
    getCallout : function(component, event, helper) {
        var action = component.get("c.getSalesforceRESTAPI");
        action.setCallback(this, function(response){
            var state = response.getState();
            console.log(state);
            if(response.getState === 'SUCCESS'){
                console.log('Return Value -->');
                console.log(response.getReturnValue());
                component.set("v.response", response.getReturnValue());
            } else {
                console.log(response.getError());
            }
        });
        $A.enqueueAction(action);
    }
})
