<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>用户注册</title>
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
                <p class="mb-x">
                    Thanks to the open internet spirit, institutions that showcase digital achievements to the public.
                </p>

                <p class="mb-5">感谢开放的互联网精神，将数字化成果展现给大众的机构 </p>
            </div>
            <div class="col-md-1">
            </div>
            <div class="col-md-5 relative align-self-center">
                <p><a href="/router?page=login">返回</a></p>
                <form action="/login"  method="post" class="bg-white rounded pb_form_v1">
                    <h2 class="mb-4 mt-0 text-center">注册新用户</h2>
                    <br>
                    <input type="hidden"  name="method" value="register">
                    <div class="form-group">
                        <input type="text" class="form-control pb_height-50 reverse" placeholder="输入账号" name="username" required="">
                    </div>
                    <div class="form-group">
                        <input type="password" id="pw" class="form-control pb_height-50 reverse" placeholder="输入密码" onkeyup="checkpassword()" name="password" required="">
                    </div>
                    <div class="form-group">
                        <input type="password" id="repw" class="form-control pb_height-50 reverse" placeholder="确认密码" onkeyup="checkpassword()" required="">
                    </div>
                    <span id="tishi"></span>
                    <!-- ==========验证码================= -->
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary btn-lg btn-block pb_btn-pill  btn-shadow-blue"
                               value="注册">
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
<script type="text/javascript">
    function checkpassword() {
        var password = document.getElementById("pw").value;
        var repassword = document.getElementById("repw").value;

        if(password == repassword) {
            document.getElementById("tishi").innerHTML="<br><font color='green'>两次密码输入一致</font>";
            document.getElementById("submit").disabled = false;

        }else {
            document.getElementById("tishi").innerHTML="<br><font color='red'>两次输入密码不一致! 注册信息错误</font>";
            document.getElementById("submit").disabled = true;
        }
    }
</script>