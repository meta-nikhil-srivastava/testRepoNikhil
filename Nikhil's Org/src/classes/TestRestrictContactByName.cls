@isTest
public class TestRestrictContactByName {
    
   /* @testSetup
    static void setup(){
        Contact testContactData;
        testContactData.FirstName = 'Nikhil';
        testContactData.LastName = 'INVALIDNAME';
        testContactData.MailingPostalCode = '302023';
        insert testContactData;
 }
  */  
    @isTest static void RestrictContactByNameTest(){
        Contact testContactData = new Contact();
        testContactData.FirstName = 'Nikhil';
        testContactData.LastName = 'INVALIDNAME';
        testContactData.MailingPostalCode = '302023';
        test.startTest();
        try{
        	insert testContactData;
        }
        catch(DMLException de){
            string Expectedmessage1 = 'The Last Name "'+testContactData.LastName+'" is not allowed for DML';
        	system.assertEquals(Expectedmessage1, de.getDMLMessage(0));
            }
        test.stopTest();

       // System.assert(false,insertedRec);
        
    }
}