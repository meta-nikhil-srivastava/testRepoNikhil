public class ContactAndLeadSearch {
    
    public static List<List<sObject>> searchContactsAndLeads(String lastname){
        List<List<sObject>> contactAndLeadResult = [Find 'smith' IN ALL FIELDS RETURNING Contact(FirstName), Lead(FirstName)];
    	return ContactAndLeadResult;
    }

}