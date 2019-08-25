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
		//try {
			User user = sqlSession.selectOne("com.yoshopping.mapping"
					+ ".UserMapper.findByUserid", 1);
			System.out.println(sqlSession.selectOne("com.yoshopping.mapping"
					+ ".UserMapper.findByUserid", 1).toString());
			//System.out.println(user.toString());
		//}
		//若数据库，没有该数据，需要抓住这个空异常
		/*catch(NullPointerException npe)
		{
			System.out.println("查无此人！");
		}
		catch(Exception e) {
			System.out.println("数据库未知异常");
		}*/
		sqlSession.close();
	     
	}

}
