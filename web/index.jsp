<%--
  Created by IntelliJ IDEA.
  User: Pmboy1988
  Date: 2023/5/25
  Time: 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>IntangibleCulturalHeritage</title>
</head>
<body>
<%--    <jsp:forward page="/WEB-INF/views/home.jsp"/>--%>
<%--MessageBoard_war_exploded--%>
    <% response.sendRedirect(request.getContextPath() + "/router?page=login"); %>
</body>
</html>
