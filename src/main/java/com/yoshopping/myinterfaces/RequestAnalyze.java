package com.yoshopping.myinterfaces;

//根据标准数据字典（AppDictionnary.xml）解析请求
//本接口用于前台request对象解析出不同类型数据

public interface RequestAnalyze {

	public String GetStringInRequest();
	public char GetCharInRequest();
	public int GetIntInRequest();
	public float GetFloatInRequest();
	public double GetDoubleInRequest();
	public boolean GetBoolInRequest();
	
}
