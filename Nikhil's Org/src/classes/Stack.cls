public class Stack {
    private List<Object> stackElements;
    
    public Stack(){
        stackElements = new List<Object>();
    }
    
    public void push(Object item){
        stackElements.add(item);  
    }
    
    public Object pop(){
        if(!stackElements.isEmpty()){
            return stackElements.remove(stackElements.size()-1);
        }
        
        else{
            return null;
        }
    }
    
    public Object peek(){
        if(!stackElements.isEmpty()){
            return stackElements.get(stackElements.size()-1);
        }
        
        else{
            return null;
        }
    }   
}