package com.demo.main.controller;

import com.demo.main.entity.Comment;
import com.demo.main.entity.Message;
import com.demo.main.service.MessageService;
import com.demo.main.utils.Result;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/** 留言、评论功能Servlet */
@WebServlet("/message")
public class MessageServlet extends HttpServlet {

  MessageService messageService = new MessageService();

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {
    doPost(req, resp);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    String method = request.getParameter("method");

    switch (method) {
      case "all":
        request.setAttribute("messages", new Result(200, "成功", messageService.selectAll()));
        break;
      case "addComment":
        String messageId = request.getParameter("id");
        String comment = request.getParameter("comment");

        Comment comment1 = new Comment();
        comment1.setMessage_id(Integer.parseInt(messageId));
        comment1.setContent(comment);

        messageService.addComment(comment1);

//        response.sendRedirect("/router?page=comment");

        request
            .getRequestDispatcher(request.getContextPath() + "/router?page=comment")
            .forward(request, response);
        break;
      case "addMessage":
        int id = Integer.parseInt(request.getParameter("id"));
        String title = request.getParameter("title");
        String content = request.getParameter("content");

        Message message = new Message();
        message.setUser_id(id);
        message.setTitle(title);
        message.setContent(content);

        messageService.addMessage(message);

//        request
//                .getRequestDispatcher(request.getContextPath() + "/router?page=home")
//                .forward(request, response);
        response.sendRedirect("/router?page=home");
    }
  }
}
