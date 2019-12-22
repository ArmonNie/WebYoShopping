package com.yoshopping.utils;

import java.io.File;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.yoshopping.model.MyApplicationContext;
import com.yoshopping.model.User;


/*
 * Spring核心容器两个，使用。。。。
 * 所谓依赖注入，个人理解是bean在xml中已经配置好，
 * 根据作用域已经生成，之后把其注入到一个引用上去
 * Spring三种实例化方式，选取。。。。
 */
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
		
		/*
		 * 验证单例模式
		 */
		MyApplicationContext mac1 = MyApplicationContext.getInstance();
		MyApplicationContext mac2 = MyApplicationContext.getInstance();
		MyApplicationContext mac3 = MyApplicationContext.getInstance();
		//下面输出相同的哈希值
		System.out.println(mac1.toString());
		System.out.println(mac2.toString());
		System.out.println(mac3.toString());
		
		//关于依赖注入？？？
		
		
		//关于路径在web项目
		File f1 = new File(".");
		System.out.println(f1.exists());
		System.out.println(f1.getPath());
		System.out.println(f1.getAbsolutePath());
		System.out.println(f1.getName());
		System.out.println(f1.getAbsoluteFile().getPath());
		System.out.println(f1.getAbsoluteFile().getParent());
		
		File f2 = new File("/src");
		System.out.println(f2.exists());
		System.out.println(f2.getPath());
		System.out.println(f2.getAbsolutePath());
		System.out.println(f2.getName());
		System.out.println(f2.getAbsoluteFile().getPath());
		System.out.println(f2.getAbsoluteFile().getParent());
		
		File f3 = new File("src");
		System.out.println(f3.exists());
		System.out.println(f3.getPath());
		System.out.println(f3.getAbsolutePath());
		System.out.println(f3.getName());
		System.out.println(f3.getAbsoluteFile().getPath());
		System.out.println(f3.getAbsoluteFile().getParent());
	}

}
