public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactLists() {
        return [SELECT Name, Phone, Email, Title, Id FROM Contact LIMIT 10];
    }
}
