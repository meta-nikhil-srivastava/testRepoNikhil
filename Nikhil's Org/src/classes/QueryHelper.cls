public class QueryHelper {
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

}