<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>用户登录</title>
    <link rel="stylesheet" href="assets/css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

<section class="pb_cover_v3 overflow-hidden cover-bg-indigo cover-bg-opacity text-left pb_gradient_v1 ">
    <div class="container">

        <div class="row align-items-center justify-content-center">

            <div class="col-md-6">

                <h2 class="heading mb-3">“非遗未遗”——数字化技术推动非遗活态保护平台</h2>
                <br>
                <p class="mb-x">Thanks to the open internet spirit, institutions that showcase digital achievements to the public.</p>
                <p class="mb-5">感谢开放的互联网精神，将数字化成果展现给大众的机构 </p>
            </div>

            <form action="/login" class="bg-white rounded pb_form_v1" method="post">

                <h2 class="mb-4 mt-0 text-center">用户登陆</h2>
                <br>
                <div class="form-group">
                    <input type="text" class="form-control pb_height-50 reverse" name="username" placeholder="账号" required="">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control pb_height-50 reverse" name="password" placeholder="密码" required="">
                </div>
                <!-- =================== -->
                <input type="checkbox"> 记住密码
                <!-- ====================== -->
                <div class="form-text">
                    <a href="forget.jsp">忘记密码？</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/router?page=register">新用户注册</a>
                </div>
                <br>
                <div class="form-group">
                    <input type="submit" class="btn btn-primary btn-lg btn-block pb_btn-pill  btn-shadow-blue"
                           value="登录">
                </div>
            </form>
        </div>
    </div>
    </div>
    </div>
    <!-- ==================================== -->
    <div class="loader3">
        <div class="bars bar1"></div>
        <div class="bars bar2"></div>
        <div class="bars bar3"></div>
        <div class="bars bar4"></div>
        <div class="bars bar5"></div>
        <div class="bars bar6"></div>
        <div class="bars bar7"></div>
        <div class="bars bar8"></div>
        <div class="bars bar9"></div>
        <div class="bars bar10"></div>
    </div>
</section>
<!-- END section -->
</body>
</html>