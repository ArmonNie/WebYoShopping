package com.yoshopping.serviceimpl;

import javax.annotation.Resource;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Service;

import com.yoshopping.dao.UserDao;
import com.yoshopping.model.User;
import com.yoshopping.service.UserService;

@Service("userService")  
public class UserServiceImpl extends SqlSessionDaoSupport implements UserService {  
    @Resource  
    private UserDao userDao;  
    
    public User getUserByName(String username) {  
        // TODO Auto-generated method stub  
        return this.userDao.findByUsername(username);  
    }  
  
}  
