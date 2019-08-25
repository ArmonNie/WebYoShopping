package com.yoshopping.utils;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

/*
 * 设计模式：
 */
public class MyBatisUtil {
	
	private static SqlSessionFactory ssf = null;
	
	//本静态语句块用于生成Factory
	static {
		try {
			/*
			 * 读取配置文件方式一
			 */
			Reader reader = Resources.getResourceAsReader("mybatis-config.xml");
			ssf = new SqlSessionFactoryBuilder().build(reader);
			/*
			 * 读取配置文件方式二
			 */
			//InputStream inputStream = Resources.getResourceAsStream("mybatis-config.xml");
			//ssf = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public static SqlSession getSqlsession()
	{
		return ssf.openSession();
	}

}
