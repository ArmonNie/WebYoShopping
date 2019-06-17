package com.yoshopping.serviceimpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yoshopping.dao.UserDao;
import com.yoshopping.model.User;
import com.yoshopping.service.UserService;

@Service("userService")  
public class UserServiceImpl implements UserService {  
    @Resource  
    private UserDao userDao;  
    
    public User getUserById(int userid) {  
        // TODO Auto-generated method stub  
        return this.userDao.findByUserid(userid);  
    }  
  
}  
