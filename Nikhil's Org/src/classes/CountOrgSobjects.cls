public class CountOrgSobjects {
    
    public static List<String> getObjects(){
        List<string> SobjectList = new List<String>();
        for(Schema.SObjectType objTyp : Schema.getGlobalDescribe().Values()) {
     String name = objTyp.getDescribe().getName();
            SobjectList.add(name);
        }
        return SObjectList;
    }

}