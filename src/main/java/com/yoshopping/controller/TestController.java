package com.yoshopping.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class TestController {
	@RequestMapping("/TestController")
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
		/*int parameternum = Integer.parseInt(arg0.getParameter("ParameterNum"));
		for(int i = 0;i < parameternum;i++) {
		
		}*/
		mav.setViewName("/WEB-INF/page/Main.jsp");
		return mav;
	}
	
}
