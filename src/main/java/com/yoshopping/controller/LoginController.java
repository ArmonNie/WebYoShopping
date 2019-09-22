package com.yoshopping.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yoshopping.model.User;

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
public class LoginController{
	
	@RequestMapping("/LoginController")
	public ModelAndView handleRequest(HttpServletRequest arg0, 
			HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView mav = new ModelAndView();
		/*ApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		User user = (User)applicationContext.getBean("user");
		user.setUser_login_name("Tom");*/
		mav.addObject("name", arg0.getParameter("username"));
		mav.setViewName("/WEB-INF/page/login.jsp");
		return mav;
	}
}
