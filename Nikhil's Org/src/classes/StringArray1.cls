public class StringArray1 {

    public static List<String> generateStringArray(Integer length){
       List<String> outData = new List<String>(); 
        for(Integer i=0;i<length;i++) {
            outData.add('Test '+i);
        }
        return outData;
    }
}