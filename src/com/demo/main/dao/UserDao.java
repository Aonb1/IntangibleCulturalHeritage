package com.demo.main.dao;

import com.demo.main.entity.User;
import com.demo.main.utils.CommonUtil;
import com.demo.main.utils.JdbcUtil;

public class UserDao {
  public User selectByUsername(String username) {
    String sql = "select * from `user` where `username` = ?";
    return CommonUtil.autoToOne(JdbcUtil.query(sql, username), User.class);
  }

  public int insertOne(User user) {
    String sql = "INSERT INTO `user` (username, `password`) VALUES (?, ?)";
    return JdbcUtil.insert(sql, true, user.getUsername(), user.getPassword());
  }
}
