public class RandomContactFactory {
    
    public static List<Contact> generateRandomContacts(Integer totalConCreate, string contactLastName){
        List<Contact> randomContactList = new List<Contact>(); 
        for(Integer index = 0; index<totalConCreate ; index++){
            Contact randomContact = new Contact();
 			randomContact.FirstName = 'Test' + index+1;
            randomContact.LastName = contactLastName;   
        	randomContactList.add(randomContact);
        }
        return randomContactList;
    }

}