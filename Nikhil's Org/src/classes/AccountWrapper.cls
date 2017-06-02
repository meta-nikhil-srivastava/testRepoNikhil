public class AccountWrapper {
    public List<Account> AccountList;
	public List<Contact> ContactList;
    public List<User> UserList;
    public String Id;
    public String Name;
    
    public AccountWrapper(List<Account> accountRecList){
        this.AccountList = new List<Account>();
        
        for(Account acctRec: accountRecList ){
            this.Id = acctRec.Id; 
            this.AccountList.add(acctRec);  
        }
        String str = JSON.serialize(AccountList);
        system.debug(str);
    }


public class ContactWrapper{
    
    public String Id;
   	public String Name;
     
    public ContactWrapper(Contact contactList){
        this.Id = contactList.Id;
        
    }
}
}