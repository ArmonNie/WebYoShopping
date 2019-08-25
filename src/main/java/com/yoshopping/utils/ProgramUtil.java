package com.yoshopping.utils;

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

public class ProgramUtil {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		ApplicationContext ac = 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		UserDao ud = (UserDao)ac.getBean("userDao");
		User user = ud.findByUsername("Armon");
		System.out.println(user.toString());*/

		//数据库联接测试
		SqlSession sqlSession = MyBatisUtil.getSqlsession();
		User user = sqlSession.selectOne("com.yoshopping.mapping"
				+ ".UserMapper.findByUsername", 1);
		System.out.println(user.toString());
		sqlSession.close();
	     
	}

}
