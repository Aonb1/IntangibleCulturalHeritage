<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.demo.main.entity.Message" %>
<%@ page import="java.util.List" %>
<%@ page import="com.demo.main.utils.Result" %>
<%@ page import="com.demo.main.vo.MessageVo" %>
<%@ page import="com.demo.main.utils.CommonUtil" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>“非遗未遗”——数字化技术推动非遗活态保护平台</title>
    <link rel="shortcut icon" type="image/x-icon" href="bitbug_favicon.ico" />
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="js-animsition animsition" id="site-wrap" data-animsition-in-class="fade-in" data-animsition-out-class="fade-out">


    <header class="templateux-navbar dark" role="banner">
       
        <div class="container"  data-aos="fade-down">
          <div class="row">
  
            <div class="col-3 templateux-logo">
              <a href="home.jsp" class="animsition-link">非遗活态保护平台</a>
            </div>
            <nav class="col-9 site-nav ">
  
              <ul class="sf-menu templateux-menu d-none d-md-block">
                <li class="active font-weight-bold">
                  <a href="home.jsp" class="animsition-link login-link">首页</a>
                </li>
                  <li class="active font-weight-bold">
                  <a href="about.jsp" class="animsition-link login-link">关于我们</a></li>
                  <li class="active font-weight-bold">
                  <a href="source.jsp" class="animsition-link login-link">资源</a>
                  <ul>
                    <li><a href="#">非物质文化遗产地图</a></li>
                    <li><a href="#">国家级代表性项目名录</a></li>
                    <li><a href="#">非物质文化遗产名录项目</a></li>
                    <li><a href="#">民间文学</a></li>
                    <li><a href="#">中国古代神话</a></li>
                    <li><a href="#">国学经典</a></li>
                  </ul>
                </li>
                  <li class="active font-weight-bold"><a href="news.jsp" class="animsition-link login-link">新闻资讯</a></li>
                  <li class="active font-weight-bold"><a href="hot.jsp" class="animsition-link login-link">热点推荐</a></li>
                 <li class="active font-weight-bold"><a href="contact.jsp" class="animsition-link login-link">联系我们</a></li>
                  <li class="active font-weight-bold"><a href="search.jsp" class="animsition-link login-link">搜索</a></li>
              
              </ul> <!-- .templateux-menu -->
  
            </nav> <!-- .site-nav -->
            
  
          </div> <!-- .row -->
        </div> <!-- .container -->
      </header> <!-- .templateux-navba -->

    <div class="templateux-cover" style="background-image: url(images/index_develop_bg2.jpg);">
        <div class="container">
            <div class="row align-items-lg-center">
                <div >
                    <h6 data-aos="fade-down"  class="font-weight-bold font-italic heading">我们携手行业伙伴以数字化助力非遗传承</h6>
                    <br><br>
                    <h5 class="mb-3" data-aos="fade-up">Establish an intangible cultural heritage website platform to display, disseminate, protect, inherit and innovate Intangible cultural heritage in China and the world, provide intangible cultural heritage information query, news information, Intangible cultural heritage directory, Intangible cultural heritage map, user interaction experience and other functions,  and enhance the influence and attraction of intangible cultural heritage</h5>
                    <br><br>
                    <p data-aos="fade-up" data-aos-delay="200"><a href="comment.jsp" class="btn btn-primary py-3 px-4">一起来探讨非遗文化</a></p>
                </div>
            </div>
        </div>
    </div> <!-- .templateux-cover -->

    <div class="templateux-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 templateux-overlap">
                    <div class="row">
                        <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                            <div class="media  text-left">

                                <div class="media-body">
                                    <h3 class="h5 mb-4">中国北京</h3>
                                    <p>北京的非物质文化遗产有：米粮屯高跷；京剧；白纸坊太狮；京西太平鼓；沙峪村竹马；北京灯彩；京绣；海淀扑蝴蝶；北京皮影戏；北京评书等。</p>
                                </div>
                            </div> <!-- .block-icon-1 -->
                        </div>
                        <div class="col-md-4" data-aos="fade-up" data-aos-delay="400">
                            <div class="media  text-left">
                                <div class="media-body">
                                    <h3 class="h5 mb-4">中国安徽</h3>
                                    <p>安徽的非物质文化遗产有：当涂民歌；青阳腔；徽剧；黄梅戏；凤阳花鼓；徽州三雕；宣纸制作技艺；歙砚制作技艺；庐剧等。</p>
                                </div>
                            </div> <!-- .block-icon-1 -->
                        </div>
                        <div class="col-md-4" data-aos="fade-up" data-aos-delay="500">
                            <div class="media  text-left">
                                <div class="media-body">
                                    <h3 class="h5 mb-4">中国湖南</h3>
                                    <p>湖南的非物质文化遗产有：长沙童谣；澧水小调；打油鼓；舞春牛；梅山养心太极拳；瑶族古方引子茶酿造技艺；传统宗祠营造技艺等。</p>
                                </div>
                            </div> <!-- .block-icon-1 -->
                        </div>
                        <!--  --><br><br><br><br><br><br><br><br><br>
                        <div class="col-md-4" data-aos="fade-up" data-aos-delay="400">
                            <div class="media  text-left">
                                <div class="media-body">
                                    <h3 class="h5 mb-4">中国上海</h3>
                                    <p>上海的非物质文化遗产有：江南丝竹；锣鼓书；嘉定竹刻；徐行草编；乌泥泾手工棉纺织技艺等。</p>
                                </div>
                            </div> <!-- .block-icon-1 -->
                        </div>
                        <div class="col-md-4" data-aos="fade-up" data-aos-delay="500">
                            <div class="media  text-left">
                                <div class="media-body">
                                    <h3 class="h5 mb-4">中国广东</h3>
                                    <p>广东的非物质文化遗产有：莫家拳；舞狮；蔡李佛拳；禅宗祖师传说；湛江木偶戏；珠绣等。</p>
                                </div>
                            </div> <!-- .block-icon-1 -->
                        </div>
                        <div class="col-md-4" data-aos="fade-up" data-aos-delay="600">
                            <div class="media  text-left">
                                <div class="media-body">
                                    <h3 class="h5 mb-4">中国江苏</h3>
                                    <p>江苏的非物质文化遗产有：南闸民歌；东台发绣；东海水晶雕刻；泰兴花鼓；大丰瓷刻等。</p>
                                </div>
                            </div> <!-- .block-icon-1 -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- .templateux-section -->


</div> <!-- .container -->
<div class="container-fluid"  data-aos="fade-up">
    <div class="owl-carousel wide-slider">
        <div class="item">
            <img src="images/img_4.jpg" alt="Free template by TemplateUX.com" class="img-fluid">
        </div>
        <div class="item">
            <img src="images/hero_1.jpg" alt="Free template by TemplateUX.com" class="img-fluid">
        </div>
        <div class="item">
            <img src="images/hero_3.jpg" alt="Free template by TemplateUX.com" class="img-fluid">
        </div>
    </div> <!-- .owl-carousel -->
</div>
</div> <!-- .templateux-section -->
<div class="templateux-section bg-light">
    <div class="container">
        <div class="row mb-5">
            <div class="col-md-4 mb-4" data-aos="fade-up">
                <div class="media block-icon-1 d-block text-center">

                    <div class="media-body">
                        <h3 class="h5 mb-4">四川省人民政府关于公布第六批省级非物质文化遗产代表性项目名录的通知（川府函〔2023〕66号）</h3>
                        <p>
                            四川省政府批准文化和旅游厅确定的第六批省级非物质文化遗产代表性项目名录（共计207项）和四川省级非物质文化遗产代表性项目名录扩展项目名录（共计127项）</p>
                        <br><br><p>2023.04.11</p>
                    </div>
                </div> <!-- .block-icon-1 -->
            </div>
            <div class="col-md-4 mb-4" data-aos="fade-up" data-aos-delay="100">
                <div class="media block-icon-1 d-block text-center">
                    <div class="media-body">
                        <h3 class="h5 mb-4">黑龙江省文化和旅游厅关于推荐申报第七批省级非物质文化遗产代表性项目的通知</h3>
                        <p>为深入贯彻习近平新时代中国特色社会主义思想，落实中共中央办公厅、国务院办公厅《关于进一步加强非物质文化遗产保护工作的意见》，传承弘扬中华优秀传统文化，进一步加强省级非物质文化遗产代表性项目名录建设，根据《中华人民共和国非物质文化遗产法》《黑龙江省非物质文化遗产条例》有关规定，结合工作实际，省文化和旅...</p>
                        <p>2023.04.11</p>
                    </div>
                </div> <!-- .block-icon-1 -->
            </div>
            <div class="col-md-4 mb-4" data-aos="fade-up" data-aos-delay="200">
                <div class="media block-icon-1 d-block text-center">
                    <div class="media-body">
                        <h3 class="h5 mb-4">湖南省文化和旅游厅关于推荐湖南省非物质文化遗产保护工作专家库专家人选的通知</h3>
                        <p>为深入贯彻党的二十大精神和习近平总书记对非物质文化遗产保护工作作出的重要指示批示精神，落实中央办公厅、国务院办公厅《关于进一步加强非物质文化遗产保护工作的意见》，以及《中华人民共和国非物质文化遗产法》和《湖南省实施<中华人民共和国非物质文化遗产法>办法》，加强我省非物质文化遗产保护工作的...</p>
                        <p>2023.04.11</p>
                    </div>
                </div> <!-- .block-icon-1 -->
            </div>

            <div class="col-md-4 mb-4" data-aos="fade-up" data-aos-delay="300">
                <div class="media block-icon-1 d-block text-center">
                    <div class="media-body">
                        <h3 class="h5 mb-4">安徽省非遗保护中心2023年度重点课题立项名单</h3>
                        <p>根据《关于2023年度安徽省非物质文化遗产调研课题申报工作的通知》（皖非文保〔2023〕01号）有关要求，经公开申报、资格审查、专家评审、安徽省非遗保护中心研究批准，2023年度安徽省非物质文化遗产保护传承研究课题立项28项。</p>
                        <br><br><p>2023.04.03</p>
                    </div>
                </div> <!-- .block-icon-1 -->
            </div>
            <div class="col-md-4 mb-4" data-aos="fade-up" data-aos-delay="400">
                <div class="media block-icon-1 d-block text-center">
                    <div class="media-body">
                        <h3 class="h5 mb-4">江苏省级非物质文化遗产保护专项资金项目申报工作的通知
                        </h3>
                        <p>为深入实施非物质文化遗产传承发展工程，进一步提升江苏省非物质文化遗产保护传承水平，决定开展2023年度省级非物质文化遗产保护专项资金（以下简称省级专项资金）项目申报工作。</p>
                        <br><br><br><p>2023.04.03</p>
                    </div>
                </div> <!-- .block-icon-1 -->
            </div>
            <div class="col-md-4 mb-4" data-aos="fade-up" data-aos-delay="500">
                <div class="media block-icon-1 d-block text-center">
                    <div class="media-body">
                        <h3 class="h5 mb-4">甘肃省文化和旅游厅关于公布第五批省级非物质文化遗产代表性传承人的通知（甘文旅厅通字〔2023〕19号）
                        </h3>
                        <p>根据《甘肃省非物质文化遗产条例》《甘肃省省级非物质文化遗产项目代表性传承人认定与管理办法》有关规定，为加强非物质文化遗产传承人队伍建设，保护、传承和弘扬甘肃省非物质文化遗产，按照《甘肃省文化和旅游厅关于开展第五批省级非物质文化遗产项目代表性传承人申报工作的通知...</p>
                        <p>2023.03.29</p>
                    </div>
                </div> <!-- .block-icon-1 -->
            </div>

        </div>
        <div class="row">

            <div class="col-md-12 text-center" data-aos="fade-up" data-aos-delay="100">
                <p><a href="#" class="btn btn-primary py-3 px-4">查看更多</a></p>
            </div>
        </div>
    </div>
</div> <!-- .templateux-section -->


<div class="templateux-section bg-primary" id="templateux-counter-section">
    <div class="container">
        <div class="row">
            <div class="col-md">
                <div class="templateux-counter text-center">
                    <span class="templateux-number" data-number="3610"></span>
                    <span class="templateux-label">国家级代表项目</span>
                </div>
            </div>
            <div class="col-md">
                <div class="templateux-counter text-center">
                    <span class="templateux-number" data-number="3057"></span>
                    <span class="templateux-label">国家级代表性传承人</span>
                </div>
            </div>
            <div class="col-md">
                <div class="templateux-counter text-center">
                    <span class="templateux-number" data-number="55"></span>
                    <span class="templateux-label">中国申报世界遗产-总数全球第一</span>
                </div>
            </div>
        </div>
    </div>

</div>
</div> <!-- .templateux-section -->

<div class="templateux-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 testimonial-wrap">
                <div class="talkabout">论坛</div>
                <div class="owl-carousel wide-slider-testimonial">
                    <div class="item">
                        <blockquote class="block-testomonial">
                            <p>&ldquo;非物质文化遗产是中华优秀传统文化的重要组成部分，创新非物质文化遗产传承路径是增强文化自信和建设社会主义文化强国的题中之义。应努力探索国内非遗活态传承、有效传承和多元传承机制与智慧，积极挖掘整理海外非遗传承保护经验与教训，内外兼修，全民参与，共同激发全民非遗保护传承活力。&rdquo;</p>
                        </blockquote>
                    </div>

                    <div class="item">
                        <blockquote class="block-testomonial">
                            <p>&ldquo;非物质文化遗产是中华优秀传统文化的重要组成部分，创新非物质文化遗产传承路径是增强文化自信和建设社会主义文化强国的题中之义。应努力探索国内非遗活态传承、有效传承和多元传承机制与智慧，积极挖掘整理海外非遗传承保护经验与教训，内外兼修，全民参与，共同激发全民非遗保护传承活力。&rdquo;</p>
                        </blockquote>
                    </div>
                    <div class="item">
                        <blockquote class="block-testomonial">
                            <p>&ldquo;非物质文化遗产是中华优秀传统文化的重要组成部分，创新非物质文化遗产传承路径是增强文化自信和建设社会主义文化强国的题中之义。应努力探索国内非遗活态传承、有效传承和多元传承机制与智慧，积极挖掘整理海外非遗传承保护经验与教训，内外兼修，全民参与，共同激发全民非遗保护传承活力。&rdquo;</p>
                        </blockquote>
                    </div>
                    <div class="item">
                        <blockquote class="block-testomonial">
                            <p>&ldquo;非物质文化遗产是中华优秀传统文化的重要组成部分，创新非物质文化遗产传承路径是增强文化自信和建设社会主义文化强国的题中之义。应努力探索国内非遗活态传承、有效传承和多元传承机制与智慧，积极挖掘整理海外非遗传承保护经验与教训，内外兼修，全民参与，共同激发全民非遗保护传承活力。&rdquo;</p>
                        </blockquote>
                    </div>
                    <div class="item">
                        <blockquote class="block-testomonial">
                            <p>&ldquo;非物质文化遗产是中华优秀传统文化的重要组成部分，创新非物质文化遗产传承路径是增强文化自信和建设社会主义文化强国的题中之义。应努力探索国内非遗活态传承、有效传承和多元传承机制与智慧，积极挖掘整理海外非遗传承保护经验与教训，内外兼修，全民参与，共同激发全民非遗保护传承活力。&rdquo;</p>
                        </blockquote>
                    </div>
                    <div class="item">
                        <blockquote class="block-testomonial">
                            <p>&ldquo;5&rdquo;</p>
                        </blockquote>
                    </div>
                    <div class="item">
                        <blockquote class="block-testomonial">
                            <p>&ldquo;6&rdquo;</p>
                        </blockquote>
                    </div>
                    <div class="item">
                        <blockquote class="block-testomonial">
                            <p>&ldquo;7&rdquo;</p>
                        </blockquote>
                    </div>
                    <div class="item">
                        <blockquote class="block-testomonial">
                            <p>&ldquo;任何理论体系都要有明晰的概念，藉此以界定核心范畴、内容与体系等，非物质文化遗产的理论建构也一样。非遗依托项目起步于保护，在实践累积的基础上形成概念，再从概念回到项目，这几乎是所有理论建构所必经的路径与过程。或许非遗的理论建构情况更为复杂，主干依托文化学而非单纯的艺术学，围绕中华文脉展开建构，履行文化的使命因而成为时代的文化工程。历史、文化与审美是其体系必须遵循的三个逻辑，但还要经过三道门槛：首先是概念门槛，此为成熟体系所必备。非遗作为联合国教科文组织向国际社会推荐的学术性整合概念，始终依托相关的学科门类进行整合，至今未形成明晰的核心范畴，与传统门类间也缺少清晰的边界。其次是知识生成门槛，围绕中华文脉依托文化遗存，以价值生成为依据在人类知识体系中为文化遗产确立明晰位置。最后是本体构成门槛，非遗依托有形载体且难以脱离文化遗产的本体而存在，如若非遗自身的学科体系成立，最终要围绕“文化遗产学”以建构学科群，这样的努力不但十分必要而且必须。&rdquo;</p>
                        </blockquote>
                    </div>
                    <div class="item">
                        <blockquote class="block-testomonial">
                            <p>&ldquo;我国非物质文化遗产领域贯彻落实习近平总书记提出的中华优秀传统文化“创造性转化、创新性发展”战略思想，探索出具有中国特色、符合中国国情的非物质文化遗产“两创”传承发展道路。“两创”成为继“二为”“双百”方针之后，中国共产党领导中国特色社会主义思想文化建设的重大理论飞跃。创造性转化、创新性发展作为我国非物质文化遗产传承发展的重要生活实践，以多种方式得到实施。为了确保非物质文化遗产保护的“两创”实践高质量发展，应秉持“新发展理念”，发现并解决“两创”实践过程中存在的问题，为历史主动精神注入新动能、实现新跨越。&rdquo;</p>
                        </blockquote>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- .container -->
</div> <!-- .templateux-section -->

<footer class="templateux-footer bg-light">
    <div class="container">

        <div class="row mb-5">
            <div class="col-md-4 pr-md-5">
                <div class="block-footer-widget">
                    <a href="webmap.jsp"><h1>网站地图</h1></a>
                    <p>给您带来更好的体验</p>
                </div>
            </div>

            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-3">
                        <div class="block-footer-widget">
                            <h3>友情链接</h3>
                            <ul class="list-unstyled">
                                <li><a class="footer-text" href="https://www.crihap.cn/">中华人民共和国文化和旅游部</a></li>
                                <li><a class="footer-text" href="http://www.ncha.gov.cn/">国家文物局</a></li>
                                <li><a class="footer-text" href="https://www.unesco.org/en">联合国教育、科学与文化组织</a></li>
                                <li><a class="footer-text" href="https://www.gmfyg.org.cn/">中国工艺美术馆、中国非物质文化遗产馆</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="block-footer-widget">
                            <ul class="list-unstyled-2">
                                <li><a href="social .jsp">社会责任</a></li>
                                <li><a href="cooperation.jsp">合作机会</a></li>
                                <li><a href="service.jsp">服务条款</a></li>
                                <li><a href="joinus.jsp">加入我们</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="block-footer-widget">
                            <a href="contact.jsp" class="btn btn-primary mb-3">联系我们</a>
                            <h3 class="footer-h4">本站为免费公益性网站，旨在弘扬中国传统文化，如侵犯了您的权益，请联系我们妥善处理。</h3>
                            <ul class="list-unstyled block-social">

                            </ul>
                        </div>
                    </div>
                </div> <!-- .row -->

            </div>
        </div> <!-- .row -->

        <div class="row pt-5 text-left">
            <div class="col-md-12 text-center">
                <p>建议使用Chrome、Firefox、Microsoft Edge浏览器</p>
            </div>
            <div class="col-md-12 text-center"><p>
                Copyright©2023 “非遗未遗”——数字化技术推动非遗活态保护平台 All Rights Reserved 皖ICP备XXXX号-3 皖公安网备 XXXXX
            </p></div>
        </div> <!-- .row -->

    </div>
</footer> <!-- .templateux-footer -->


</div> <!-- .js-animsition -->


<script src="js/scripts-all.js"></script>
<script src="js/main.js"></script>

</body>
</html>