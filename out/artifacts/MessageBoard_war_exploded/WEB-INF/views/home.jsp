<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>登录成功</title>
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

            <div class="col-md-3">
                <div class="block-footer-widget">
                  <a href="/webapp/home.jsp" class="btn btn-primary">点我直接进入</a>
                    <br><br>
                </div>
                <h6 class="mb-4 mt-0 text-center">登陆成功!!!</h6>
                <span id="time">5</span>秒将后自动进入主页......
              </div>
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
<script type="text/javascript">
    //定义一个变量为5
    var count = 5;
    //一开始就执行
    window.setInterval("refresh()", 1000);
    function refresh() {
        if (count >= 0 ) {
//修改span中的数字
            document.getElementById("time").innerText = count--;
        }else {
            location.href = "#";
        }
    }
</script>
</html>