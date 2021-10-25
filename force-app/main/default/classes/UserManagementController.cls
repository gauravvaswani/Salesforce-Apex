public class UserManagementController{
    public List <User> users {get; set;}
    
    public UserManagementController()
    {
        Profile p = [select id from profile where name = 'Standard User'];
        
        users = [select username, id from User where profileId=:p.id AND isactive=true];
    }

    //Use method with extreme caution. Data can't be recovered.   
    @InvocableMethod(label='User Management' description='Obfuscate User data and more')
    static public void obfuscate(List<User> users)
    {
        String uid = ApexPages.currentPage().getParameters().get('uid');
    
        if(uid == null)
            return;
        
        //User u = [select contactId from user where id=:uid];
            
        System.UserManagement.obfuscateUser(uid);
        
        /*if(u.contactId != null)
        {
            List <Contact> contacts = [select id from Contact where id=:u.contactId LIMIT 1];
            if (contacts == null || contacts.isEmpty() == true)
            return;
                
            delete contacts;
        }*/
    }
}