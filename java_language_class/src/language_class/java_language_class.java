package language_class;

public class java_language_class {

}

interface YNExample_Protocol{
	String getMe();
}

class YN_Example_Delegte implements YNExample_Protocol{

	@Override
	public String getMe() {
		// TODO Auto-generated method stub
		return "YN_Example_Delegte";
	}
}

class YN_Example_Delegte_derived extends YN_Example_Delegte{
	@Override
	public String getMe() {
		// TODO Auto-generated method stub
		return "YN_Example_Delegte_derived";
	}
}

class YN_Example_Class{
	private int mExampleData;
	protected String mExampleStr;
	public boolean mExampleBool;
	private int exampleProperty;
	static private String gStr;
	
	YN_Example_Class(){
		mExampleStr = "YN_Example_Class";
		mExampleData = 8;
		mExampleBool = true;
		setExampleProperty(0);
	}
	
	void exampleFunc(){
		System.out.println("exampleFunc");
	}
	
	void exampleFuncWithParameters(String str, boolean boolP){
		mExampleStr = str;
		mExampleBool = boolP;
	}
	
	String exampleFuncWithReturnValue(){
		return mExampleStr;
	}
	
	static void classExampleFunc(){
		System.out.println("classExampleFunc");
	}

	public int getExampleProperty() {
		exampleProperty++;
		return exampleProperty;
	}

	public void setExampleProperty(int exampleProperty) {
		if(this.exampleProperty < 100){
			this.exampleProperty = exampleProperty;
		}
	}
}