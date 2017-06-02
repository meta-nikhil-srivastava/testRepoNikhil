public class StudentDetailsMap {
    public static Map<ID,Student__c> getStudentDetails(){
        List<Student__c> s = [Select ID from Student__c];
        Map<ID,Student__c> students = new Map<ID,Student__c>(s);
        return students;
    }
    
    
}