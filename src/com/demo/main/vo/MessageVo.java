package com.demo.main.vo;

import com.demo.main.entity.Message;

public class MessageVo extends Message {
    String username;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String toString() {
        return "MessageVo{" +
                "username='" + username + '\'' +
                '}';
    }
}
