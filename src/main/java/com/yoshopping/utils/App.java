package com.yoshopping.utils;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/*
 * 本java类在web项目启动时初始化
 * 用于一些全局的控制
 */
public class App implements ServletContextListener{
	
	public void init(ServletContextEvent e) {
		System.out.println("应用正在初始化中");
	}
	

}
