package com.demo.main.service;

import com.demo.main.dao.CommentDao;
import com.demo.main.dao.MessageDao;
import com.demo.main.entity.Comment;
import com.demo.main.entity.Message;
import com.demo.main.vo.MessageVo;

import java.util.List;

public class MessageService {
    MessageDao messageDao = new MessageDao();
    CommentDao commentDao = new CommentDao();

    public List<Message> selectAll() {
        return messageDao.selectAll();
    }

    public Message selectById(int id) {
        return messageDao.selectById(id);
    }

    public List<MessageVo> selectAllVo() {
        return messageDao.selectAllVo();
    }

    public int addComment(Comment comment) {
        return commentDao.insertComment(comment);
    }

    public int addMessage(Message message) {
        return messageDao.insertOne(message);
    }
}
