package com.demo.main.dao;

import com.demo.main.entity.Message;
import com.demo.main.utils.CommonUtil;
import com.demo.main.utils.JdbcUtil;
import com.demo.main.vo.MessageVo;

import java.util.List;

public class MessageDao {
    public List<Message> selectAll() {
        String sql = "select * from message";
        return CommonUtil.autoToList(JdbcUtil.query(sql), Message.class);
    }

    public Message selectById(int id) {
        String sql = "select * from message where id = ?";
        return CommonUtil.autoToOne(JdbcUtil.query(sql, id), Message.class);
    }

    public Message selectByUserId(int id) {
        String sql = "select * from message where user_id = ?";
        return CommonUtil.autoToOne(JdbcUtil.query(sql, id), Message.class);
    }

    public List<MessageVo> selectAllVo() {
        String sql = "select message.id, title, content, user_id, username from message, `user` where message.user_id = `user`.id";
        return CommonUtil.autoToList(JdbcUtil.query(sql), MessageVo.class);
    }

    public int insertOne(Message message) {
        String sql = "INSERT INTO `message` (title, `content`, user_id) VALUES (?, ?, ?)";
        return JdbcUtil.insert(sql, true, message.getTitle(), message.getContent(), message.getUser_id());
    }
}
