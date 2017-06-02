@isTest
public class ContactSearchTest {
    
    @testSetup static void setup() {
        Contact testContactData = new Contact();
        testContactData.FirstName = 'Nikhil';
        testContactData.LastName = 'Srivastava';
        testContactData.MailingPostalCode = '302023';
        insert testContactData;

}
    
    @isTest static void searchForContactsTest(){
        List<Contact> searchedContactsList;
        searchedContactsList = ContactSearch.searchForContacts('Srivastava','302023');
        //System.assert(False, ' dsafbjhsfda ' + searchedContactsList.size());
        System.assertEquals(1,searchedContactsList.size());
        
        
    }

}