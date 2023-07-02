package com.demo.main.filter;

import com.demo.main.utils.CommonUtil;

import javax.jms.Session;
import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/** 登录过滤器 */
@WebFilter(urlPatterns = {"/**", "*.jsp"})
public class LoginFilter implements Filter {

  @Override
  public void init(FilterConfig filterConfig) throws ServletException {}

  /** 重定向 HttpServletRequest request request.sendRedirect(""); */
  @Override
  public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
      throws IOException, ServletException {
    //        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
    //        String servletPath = httpServletRequest.getServletPath();
    //        // 访问路径为登录界面或则可以通过，否则进入判断session
    //        if (servletPath.equals("/login?method=login-page") ||
    //                servletPath.equals("/WEB-INF/views/login.jsp") ||
    //                servletPath.equals("/WEB-INF/views/register.jsp") ||
    //                servletPath.equals("/login?method=register-page") ||
    //                servletPath.equals("/")) {
    //            filterChain.doFilter(request, response);
    //        } else {
    //            HttpSession session = httpServletRequest.getSession();
    //            String sessionUserName = (String) session.getAttribute("username");
    //            if (CommonUtil.getIsLogin()) {
    //                // 不为空代表已登录则可以通过
    //                if (CommonUtil.getIdentity() == null) {
    //                    request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request,
    // response);
    //                }
    //                filterChain.doFilter(request, response);
    //            } else {
    //                // 为空代表未登录过，跳转至登录页面
    //                request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request,
    // response);
    //                filterChain.doFilter(request, response);
    //            }
    //        }

    HttpServletRequest httpServletRequest = (HttpServletRequest) request;
    String servletPath = httpServletRequest.getServletPath();

    if (servletPath.equals("/login?method=login-page")
        || servletPath.equals("/")
        || servletPath.equals("/login")
        || servletPath.equals("/index.jsp")
        || CommonUtil.getIsLogin(httpServletRequest)) {
      filterChain.doFilter(request, response);
      return;
    }
    request.getRequestDispatcher("/login?method=login-page").forward(request, response);
    filterChain.doFilter(request, response);
  }

  @Override
  public void destroy() {}
}
