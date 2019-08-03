package com.yoshopping.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.yoshopping.dao.UserDao;
import com.yoshopping.model.User;

public class ProgramTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		ApplicationContext ac = 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		UserDao ud = (UserDao)ac.getBean("userDao");
		User user = ud.findByUsername("Armon");
		System.out.println(user.toString());
	}

}
