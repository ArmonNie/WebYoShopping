package com.yoshopping.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/*
 * 用于处理前台导航栏的请求
 */
@Controller
public class NavController {
	
	@RequestMapping("NavController")
	public ModelAndView handleRequest(HttpServletRequest arg0, 
			HttpServletResponse arg1) throws Exception {
		System.out.println("11");
		// TODO Auto-generated method stub
		ModelAndView mav = new ModelAndView();
		mav.addObject("pageTag", arg0.getParameter("pageTag"));
		if(arg0.getParameter("pageTag").equals("Main")) {
			mav.setViewName("/WEB-INF/page/managebase.jsp");
		}
		else if(arg0.getParameter("pageTag").equals("userauth")) {
			mav.setViewName("/WEB-INF/page/userauthbase.jsp");
		}
		else {
			
		}
		return mav;
	}
}
