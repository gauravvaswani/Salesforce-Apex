public class SalesforceRESTAPI {
    
    @AuraEnabled
    public static String getSalesforceRESTAPI() {
        String instanceURL = URl.getSalesforceBaseUrl().toExternalForm();
        String restAPIURL = 'callout:Salesforce_Lightning_Session/services/data/v51.0/sobjects';
        System.debug(restAPIURL);

        HttpRequest request = new HttpRequest();
        request.setMethod('GET');
        request.setHeader('Authorization', 'OAuth ' +UserInfo.getSessionId());
        request.setHeader('Authorization', 'Bearer ' +UserInfo.getSessionId());
        request.setEndpoint(restAPIURL);
        String response = '';
        try{
            Http http = new Http();
            HttpResponse httpResponse = http.send(request);
            if(httpResponse.getStatusCode() == 200){
                response = JSON.serializePretty(JSON.deserializeUntyped((httpResponse.getBody())));
            } else {
                System.debug (' httpResponse ' + httpResponse.getBody());
                throw new CalloutException (httpResponse.getBody());
            }
        } catch(System.Exception e){
            System.debug('Error: '+e);
            throw e;
        }
        System.debug(' **response:** ' + response);
        return response;
    }
}
