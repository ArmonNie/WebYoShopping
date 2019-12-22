package com.yoshopping.model;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/*
 * 根据Spring的ApplicationContext创建自己的ApplcationContext
 * 本类使用单例模式
 * 单例模式实现的关键，构造方法私有化
 */
public class MyApplicationContext extends ClassPathXmlApplicationContext{
	
	//Spring配置文件的路径，用于生成ClassPathXmlApplicationCpntext
	private static String spring_config_path = "applicationContext.xml";
	//要让static方法访问变量需设为static的
	private static MyApplicationContext myApplicationContext = 
			new MyApplicationContext(spring_config_path);
	
	private MyApplicationContext(String spring_config_path){
		super(spring_config_path);
	}
	
	public static MyApplicationContext getInstance(){
		return myApplicationContext;
	}
	
}
