package com.yoshopping.dao;

import com.yoshopping.model.User;

public interface UserDao {
    public abstract User findByUsername(String username);
}
