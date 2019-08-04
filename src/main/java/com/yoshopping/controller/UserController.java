package com.yoshopping.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.yoshopping.dao.UserDao;
import com.yoshopping.daoimpl.UserDaoImpl;
import com.yoshopping.model.User;
import com.yoshopping.serviceimpl.UserServiceImpl;

/**
 * 用户控制器
 */
@Controller
/*@RequestMapping(value = "/user")*/
public class UserController {
    /*@Resource*/
	/*@Autowired
    private UserServiceImpl userServiceImpl;*/

    @RequestMapping(value="/findByName")
    public String findByUsername(String username,Model model)
    {
    	System.out.println("请求处理！！");
    	return "index";
    }
    /*public String view() {
        return "index";
    }*/

    /*@RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login(User model, HttpSession session) {
        User user = userDao.findByUsername(model.getUsername());

        if (user == null || !user.getPassword().equals(model.getPassword())) {
            return new ModelAndView("redirect:/login.jsp");
        } else {
            session.setAttribute("user", user);
            ModelAndView mav = new ModelAndView();
            mav.setViewName("index");
            return mav;
        }
    }*/
}
