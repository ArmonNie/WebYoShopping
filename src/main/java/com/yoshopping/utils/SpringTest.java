package com.yoshopping.utils;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.yoshopping.model.User;

public class SpringTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		User user = (User)applicationContext.getBean("user");
		user.setUser_login_id(1);
		user.setUser_login_name("Armon");
		user.setUser_login_password("Ilovelm417520");
		//User user = applicationContext.getBean("user", User.class);
		System.out.println(user.toString());
	}

}
