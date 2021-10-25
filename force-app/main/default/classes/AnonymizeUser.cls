public without sharing class AnonymizeUser {
    
    @InvocableMethod(label='Anonymize User Details')
    public static void anonymizeUserDetails(List<String> users) {
        System.UserManagement.obfuscateUser(users[0]);
        //users[0].put('AboutMe','Anonymized user on request to be forgotten');
        //update users;

    }
}
