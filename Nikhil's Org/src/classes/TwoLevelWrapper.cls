public class TwoLevelWrapper {
    
    public static List<Account> getAccountsAndContacts(){
        List<Account> accList = [
            SELECT Account.Id, Account.Name,LastModifiedById, 
            (SELECT Contact.Id, Contact.Name,Contact.LastModifiedById FROM contacts) 
            FROM Account WHERE Account.Id IN 
            (SELECT Contact.accountId FROM Contact) 
            Limit 2 ];
        return accList;
        
    }
    
    public static void checkAccountsDetails()
    {
    List<Account> accList = TwoLevelWrapper.getAccountsAndContacts();    
	//system.assert(false,(accList[1].get(Account.Contact.Id)));
        for(Account rec: accList){
           system.assert(false,rec.Contacts);
            
        }
    }

}