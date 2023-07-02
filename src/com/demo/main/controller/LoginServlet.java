package com.demo.main.controller;

import com.demo.main.entity.User;
import com.demo.main.service.UserService;
import com.demo.main.utils.CommonUtil;
import com.demo.main.utils.Result;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/** LoginServlet 登录、注册功能 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {

  UserService userService = new UserService();

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String method = request.getParameter("method");

    switch (method) {
      case "register":
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = new User();
        user.setUsername(username);
        user.setPassword(password);

        userService.insertOne(user);

        request.getRequestDispatcher(request.getContextPath() + "/router?page=login").forward(request, response);
        break;
    }
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    User user = userService.selectByUsername(username);

    if (user == null) {
      request.setAttribute("data", new Result(401, "没有该用户"));
      request.getRequestDispatcher("/router?page=login").forward(request, response);
      return;
    }

    if (user.getPassword().equals(password)) {
      request.getSession().setAttribute(CommonUtil.IS_LOGIN, true);
      request.getSession().setAttribute(CommonUtil.USER_ID, user.getId());
      request.getSession().setAttribute(CommonUtil.USERNAME, username);
      request.setAttribute("data", new Result(200, "登录成功"));
//      request.getRequestDispatcher("/router?page=login").forward(request, response);
      response.sendRedirect("/router?page=home");
      return;
    }

    request.setAttribute("data", new Result(401, "密码错误"));
    request.getRequestDispatcher("/router?page=login").forward(request, response);
  }
}
