package com.yoshopping.daoimpl;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.yoshopping.dao.UserDao;
import com.yoshopping.model.User;

public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao{

	@Override
	public User findByUsername(String username) {
		// TODO Auto-generated method stub
		/*return this.getSqlSession().selectOne("com.yoshopping.mapping" 
		+ ".UserMapper", username);*/
		return this.getSqlSession().selectOne("com.yoshopping.mapping" 
				+ ".UserMapper.findByUsername", username);
	}
	
}
