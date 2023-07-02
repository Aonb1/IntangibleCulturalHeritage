package com.demo.main.service;

import com.demo.main.dao.UserDao;
import com.demo.main.entity.User;

public class UserService {
    UserDao userDao = new UserDao();

    public User selectByUsername(String username) {
        return userDao.selectByUsername(username);
    }

    public int insertOne(User user) {
        return userDao.insertOne(user);
    }
}
