public without sharing class UpdateContactDescription {
    
    @InvocableMethod(label='Update Contact Description')
    public static void  updateContactDescriptionField(List<Contact> con) {
        con[0].put('Description','The description is updated');
        update con;
    }
}
