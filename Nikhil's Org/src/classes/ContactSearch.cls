public class ContactSearch {
    
    public static List<Contact> searchForContacts(string lastName , string postalCode){
        
        List<Contact> searchedContacts = [Select Id, Name from Contact Where LastName = :lastName  And MailingPostalCode= :postalCode];
        return searchedContacts;
    }

}