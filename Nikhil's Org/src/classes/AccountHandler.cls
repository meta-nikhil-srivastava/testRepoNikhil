public class AccountHandler {

    public static Account insertNewAccount(String accountName){
        try{
            Account newAccount = new Account ();
            newAccount.Name = accountName;
            insert newAccount;
            return newAccount;
            
        }
        catch(DmlException exp){
            System.debug('A DML exception has occurred:' + exp.getMessage());
            return null;
        }
        
    }
}