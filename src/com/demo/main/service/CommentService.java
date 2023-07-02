package com.demo.main.service;

import com.demo.main.dao.CommentDao;
import com.demo.main.entity.Comment;

import java.util.List;

public class CommentService {
    CommentDao commentDao = new CommentDao();

    public List<Comment> selectCommentsByMessageId(int id) {
        return commentDao.selectByMessageId(id);
    }
}
