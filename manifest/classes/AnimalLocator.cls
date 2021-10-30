public class AnimalLocator {
    public static String getAnimalNameById(Integer id) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+id);
        request.setMethod('GET');
        
        HttpResponse response = http.send(request);
        Map<String, Object> animal = new Map<String, Object>();
        // Parse JSON if successfull
        if (response.getStatusCode() == 200){
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            animal = (Map<String, Object>) results.get('animal');
            System.debug('Received the following animal name:');
        }
        return (String)animal.get('name');
        
    }
}
