public class Wrapper {
    
	public List<ContactWrapper> ContactList;
    public String Id;
    public String Name;
    
    public Wrapper(Account accRecfromDetails,List<Account> accRecListfromDetails,List<User> UserList){
        this.ContactList = new List<ContactWrapper>();
        //system.assert(false,accRecListfromDetails.get(Account.Contact)); //size = 2
        
            this.Id = accRecfromDetails.Id;
            this.Name = accRecfromDetails.Name;
            this.ContactList.add(new ContactWrapper(accRecfromDetails,accRecListfromDetails,UserList));
        
    }
    
    public class ContactWrapper{
        public String Id;
        public String Name;
        public List<UserWrapper> UserList;        
        
        public ContactWrapper(Account accRec,List<Account> accRecListfromDetails,List<User> userRecList){
            UserList = new List<UserWrapper>();
            for(Contact conRec : accRec.Contacts){
                if(conRec.AccountId == accRec.Id){
                    this.Id = conRec.Id;
                    this.Name = conRec.Name;
                    this.userList.add(new UserWrapper(conRec,userRecList));
                }
            
            } 
            
         }
    }
	
    public Class UserWrapper{
        public String Id ;
        public String Name;
        
        public UserWrapper(Contact conRec,List<User> userRecList){
            for (User userRec : userRecList){
                if(conRec.LastModifiedById == userRec.Id){
                    this.Id = userRec.Id;
                    this.Name = userRec.Name;
                }
            }
        }
    }
}