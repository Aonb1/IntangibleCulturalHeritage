package com.demo.main.dao;

import com.demo.main.entity.Comment;
import com.demo.main.utils.CommonUtil;
import com.demo.main.utils.JdbcUtil;

import java.util.List;

public class CommentDao {
    public List<Comment> selectAll() {
        String sql = "select * from comment";
        return CommonUtil.autoToList(JdbcUtil.query(sql), Comment.class);
    }

    public List<Comment> selectByMessageId(int id) {
        String sql = "select * from comment where message_id = ?";
        return CommonUtil.autoToList(JdbcUtil.query(sql, id), Comment.class);
    }

    public Comment selectById(int id) {
        String sql = "select * from comment where id = ?";
        return CommonUtil.autoToOne(JdbcUtil.query(sql), Comment.class);
    }

    public int insertComment(Comment comment) {
        String sql = "INSERT INTO `comment` (message_id, `content`) VALUES (?, ?)";
        return JdbcUtil.insert(sql, true, comment.getMessage_id(), comment.getContent());
    }
}
