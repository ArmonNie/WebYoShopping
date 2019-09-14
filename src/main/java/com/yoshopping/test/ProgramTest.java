package com.yoshopping.test;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.yoshopping.dao.UserDao;
import com.yoshopping.model.User;

public class ProgramTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		ApplicationContext ac = 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		UserDao ud = (UserDao)ac.getBean("userDao");
		User user = ud.findByUsername("Armon");
		System.out.println(user.toString());*/
		
		SqlSessionFactory sqlSessionFactory;
		InputStream inputStream;
		SqlSession sqlSession;
		try {
			inputStream = Resources.getResourceAsStream("mybatis-config.xml");
			sqlSessionFactory=new SqlSessionFactoryBuilder().build(inputStream);
			sqlSession = sqlSessionFactory.openSession();
			
			User user = sqlSession.selectOne("com.yoshopping.mapping"
		    		+ ".UserMapper.findByUsername", 1);
		    System.out.println(user.toString());
		    sqlSession.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     
	}

}
