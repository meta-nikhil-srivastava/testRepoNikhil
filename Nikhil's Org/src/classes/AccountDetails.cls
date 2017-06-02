public class AccountDetails {
    
    public static void createAccountDetailsJSON(){
        List<Account> accList = getAccountsAndContacts();
        //List<Contact> conList = getContacts();
        List<User> userList = getUsers();
        List<Wrapper> resultJSONList = new List<Wrapper>() ;
        for(Account accRecfromDetails : accList){
            resultJSONList.add(new Wrapper(accRecfromDetails,accList,userList));
            
        }
        String resultJSONStr = JSON.serialize(resultJSONList);
        System.debug(resultJSONStr);
        
    }
    public static List<Account> getAccountsAndContacts(){
        List<Account> accListfromQuery = [
            SELECT Account.Id, Account.Name,Account.LastModifiedById, 
            (SELECT Contact.Id, Contact.Name,Contact.LastModifiedById,Contact.AccountId FROM Contacts) 
            FROM Account 
            /*WHERE Account.Id IN 
			(SELECT Contact.accountId FROM Contact)*/ 
            Limit 5 ];
        return accListfromQuery;
        
    }
    /*
        public static List<Account> getAccounts(){
        List<Account> accList = [ 
        SELECT Id, Name,Phone,NumberOfEmployees
        FROM Account
        LIMIT 2
        ];

        if(accList != null || accList.size() > 0){
        return accList;
        }else{
        return null;
        }
        }
        
        public static List<Contact> getContacts(){
        List<Contact> ContactList = [
        SELECT Id,Name,LastModifiedById,Account.Name
        FROM Contact
        ];
        if(contactList != null || ContactList.size() > 0){
        return ContactList;
        }else{
        return null;
        }
        }
        */
    
    public static List<User> getUsers(){
        List<User> userList = [
            SELECT Id,Name,LastModifiedById
            From User
        ];
        return userList;
        
    }
}