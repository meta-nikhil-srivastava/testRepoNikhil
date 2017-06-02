public class StudentDetails {
    public static List<Student__c> getStudentNames(ID classID) {
        List<Student__c> studentNames = [Select First_Name__c From Student__c where Class__r.ID =: classID ];
            return studentNames;
    }
/** Changing few texts to check this EGIT WOrks*/
public static void dummyMethod(){}
}