<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="com.demo.main.entity.Comment" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.demo.main.entity.Message" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>留言</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/index.css">
    <style>
        body {
            overflow: hidden;
        }

        .home-container {
            height: 100%;
            background-size: auto 150% !important; /*150*/
            background: #CCCCCC url() no-repeat fixed center center;
        }
        .comment-textarea {
            width: 100%;
        }
        .comment-form {
            margin-top: 20px;
        }
    </style>
</head>
<body class="container-fluid  home-container">
<%
    List<Comment> comments = (List<Comment>) request.getAttribute("comments");
    Message message = (Message) request.getAttribute("message");
%>
<div class="row justify-content-center" style="margin-top: 80px">
    <div class="message-box col-8 justify-content-center">
        <h3 class="col-12" style="margin-bottom: 30px">非遗未遗—数字化技术推动非遗活态保护平台留言板</h3>
        <ul class="list-group list-group-flush">
            <li class="list-group-item">标题：<%=message.getTitle()%>
            </li>
            <li class="list-group-item">内容：<%=message.getContent()%>
            </li>
            <li class="list-group-item">评论：</li>
            <c:forEach var="comment" items="<%=comments%>">
                <li class="list-group-item">${comment.content}</li>
            </c:forEach>
        </ul>
        <form action="/message" class="comment-form">
            <input type="hidden" name="method" value="addComment">
            <input type="hidden" name="id" value="<%=message.getId()%>">
            <div class="form-group">
                <textarea class="form-control comment-textarea" name="comment" id="" rows="5"></textarea>
            </div>
            <div class="form-group">
                <input type="submit" value="提交评论" class="btn btn-primary">
            </div>
        </form>
    </div>
</div>
<script>
    /* 更改url，但不刷新页面 */
    history.replaceState('', '', "/router?page=comment&id=" + '<%=message.getId()%>')
</script>
</body>
</html>
