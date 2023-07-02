package com.demo.main.controller;

import com.demo.main.service.CommentService;
import com.demo.main.service.MessageService;
import com.demo.main.utils.CommonUtil;
import com.demo.main.utils.Result;
import com.demo.main.vo.MessageVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/** 路由Servlet，用于在跳转页面之前执行前置操作，并使可以使用且可以用重定向方式访问到安全目录中的jsp页面 */
@WebServlet("/router")
public class RouterServlet extends HttpServlet {
  MessageService messageService = new MessageService();
  CommentService commentService = new CommentService();

  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException {
    doPost(req, resp);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    String page = request.getParameter("page");

    if (!CommonUtil.getIsLogin(request) && !page.equals("login") && !page.equals("register")) {
      request
          .getRequestDispatcher(request.getContextPath() + "/WEB-INF/views/login.jsp")
          .forward(request, response);
      return;
    }

    switch (page) {
      case "home":
        request.setAttribute("messages", new Result(200, "成功", messageService.selectAllVo()));
        request
            .getRequestDispatcher(request.getContextPath() + "/WEB-INF/views/home.jsp")
            .forward(request, response);
        break;
      case "login":
        request
            .getRequestDispatcher(request.getContextPath() + "/WEB-INF/views/login.jsp")
            .forward(request, response);
        break;
      case "register":
        request
            .getRequestDispatcher(request.getContextPath() + "/WEB-INF/views/register.jsp")
            .forward(request, response);
        break;
      case "comment":
        int messageId = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("message", messageService.selectById(messageId));
        request.setAttribute("comments", commentService.selectCommentsByMessageId(messageId));
        request
            .getRequestDispatcher(request.getContextPath() + "/WEB-INF/views/comment.jsp")
            .forward(request, response);
        break;
    }
  }
}
