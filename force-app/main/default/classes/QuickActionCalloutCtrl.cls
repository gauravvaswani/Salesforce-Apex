public class QuickActionCalloutCtrl {
    // Pass in the endpoint to be used using the string url
    @AuraEnabled
    public static Map <String, Object> getCalloutResponseContents(String url){
        // Instantiate a new http object
        Http http = new Http();

        // Instantiate a new HTTP request, specify the method (GET) as well as the endpoint
        HttpRequest request = new HttpRequest();
        request.setEndpoint(url);
        request.setMethod('GET');

        // Send the request, and return a response
        HttpResponse response = http.send(request);
        System.debug('Response --> ' +response.getBody());

        //Deserialise the JSON string into collections of primitive data types.
        Map<String,Object> resultsMap = (Map<String,Object>) JSON.deserializeUntyped(response.getBody());
        System.debug('ResultsMap -->' + resultsMap);
        
        return resultsMap;
    }

    
}
