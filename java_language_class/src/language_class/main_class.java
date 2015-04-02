package language_class;

public class main_class {
    public static void main(String[] args){
    	System.out.println("hello world");
    	
    	YN_Example_Class example = new YN_Example_Class();
    	
    	if(example instanceof YN_Example_Class){
    		System.out.println("is YN_Example_Class");
    	}
    }
}
