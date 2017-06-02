public class JSON_Gen {
    
    public static System.JSONGenerator generator;
    
    public static void createJson1(List<SObject> ListObtained){
        generator.writeStartObject();
        for(SObject Obj : ListObtained)
        {
            if(Obj.getSObjectType() == Schema.Contact.getSObjectType() || Obj.getSObjectType() == Schema.User.getSObjectType()){
                List<User> UserListObtained;
                generator.writeStringField('ID',Obj.Id);
                if(Obj.getSObjectType() == Schema.Contact.getSObjectType()){
                    Contact c = (Contact)Obj;
                	generator.writeStringField('Name',c.Name);
                    UserListObtained = getUsers(c.LastModifiedById);
                    /**createJson1(UserListObtained);*/
                }else{
                    User u = (User)Obj;
					generator.writeStringField('Name',u.Name);
                    /*UserListObtained = getUsers(u.LastModifiedById);*/
                }
               /* if(UserListObtained != null){
                    createJson1(UserListObtained);
                }
			*/
            }
        }
        generator.writeEndObject();
    }
    
    public static String createJSON(){
         
        String JSONString = '';
        generator = JSON.createGenerator(true);
        List<Account> AccountList = getAccounts();
        
        generator.writeStartArray();
        for(Account obj : AccountList) {
        	generator.writeStartObject();
            generator.writeStringField('Id',obj.Id);
            generator.writeStringField('Name',obj.Name);
            generator.writeStringField('Phone',obj.Phone);
            generator.writeEndObject();
        	List<Contact> ContactListObtained = getContacts(obj.Id);
            createJson1(ContactListObtained);
        }
        generator.writeEndArray();
        JSONString = generator.getAsString().replaceAll('[\\n\\t\\r]','');
        system.debug('AccountList:'+JSONString);
        return JSONString;
    }
    
    public static List<Account> getAccounts(){
        List<Account> accList = [ 
            SELECT Id, Name,Phone ,NumberOfEmployees
          	FROM Account
          	LIMIT 2
        ];
        
        if(accList != null || accList.size() > 0){
            return accList;
        }else{
            return null;
        }
    }
    
    public static List<Contact> getContacts(Id accId){
        List<Contact> ContactList = [
            SELECT Id,Name,LastModifiedById
            FROM Contact
            WHERE Account.id = :accId
        ];
        if(contactList != null || ContactList.size() > 0){
            return ContactList;
        }else{
            return null;
        }
    }
    
    public static List<User> getUsers(Id lastModifiedUserId){
        List<User> userList = [
            SELECT Id,Name,LastModifiedById
            From User
            where User.id = :lastModifiedUserId
        ];
        if(userList != null || userList.size() > 0){
            return userList;
        }else{
            return null;
        }
    }
}