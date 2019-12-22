package com.yoshopping.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yoshopping.model.User;
import com.yoshopping.myinterfaces.MyLogger;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
/*
 * 注解形式所用Controller与实现接口形式的Controller不是同一个包
 */
import org.springframework.stereotype.Controller;
//import org.springframework.web.servlet.mvc.Controller;

/*
 * Controller实现方法之一，实现Controller接口
 * 关键是实例化ModelAndView对象，并返回
 */
/*public class LoginController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/index.jsp");
		return mav;
	}

}*/


/*
 * Controller实现方法之二，注解方式（前提是配置文件配置了扫描）
 */
@Controller
public class LoginController implements MyLogger{
	
	@RequestMapping("/LoginController")
	public ModelAndView handleRequest(HttpServletRequest arg0, 
			HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mav = new ModelAndView();
		/*ApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		User user = (User)applicationContext.getBean("user");
		user.setUser_login_name("Tom");*/
		List<String> l = new ArrayList<String>();
		//parameternum代表前台返回参数的个数
		int parameternum = Integer.parseInt(arg0.getParameter("ParameterNum"));
		for(int i = 0;i < parameternum;i++) {
		
		}
		this.MyLog(l);
		mav.addObject("name", arg0.getParameter("username"));
		mav.setViewName("/WEB-INF/page/Main.jsp");
		return mav;
	}

	@Override
	public void MyLog(List sl) {
		// TODO Auto-generated method stub
		for(Object s : sl) {
			System.out.println("前台传入参数：" + s.toString());
		}
	}
}
