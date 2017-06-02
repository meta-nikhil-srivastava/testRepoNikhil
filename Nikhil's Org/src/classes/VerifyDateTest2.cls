@isTest
public class VerifyDateTest2 {
    
    @isTest
    public static void CheckDatesTest(){
        Date date1 = Date.newInstance(2017, 01, 19);
        Date date2 = Date.newInstance(2017, 02, 29);
        System.assertEquals(Date.newInstance(2017, 01,31),VerifyDate.CheckDates(date1, date2));
    }
    

}