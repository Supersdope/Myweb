<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />

    <link href="css/font-awesome.css" rel="stylesheet">

    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <![endif]-->
</head>
<body>
<div class="banner-top">
    <div class="slider">
        <div class="callbacks_container">
            <ul class="rslides callbacks callbacks1" id="slider4">
                <li>
                    <div class="w3layouts-banner-top">
                        <div class="container">
                            <div class="agileits-banner-info">
                                <h3>Alexandria laurel<span><h2>海棠树</h2></span></h3>
                                <p> “呵护一片蓝天，珍爱共同家园”</p>
                                <div class="w3-button">
                                    <a href="login.jsp">${sessionScope.a}</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="w3layouts-banner-top w3layouts-banner-top1">
                        <div class="container">
                            <div class="agileits-banner-info">
                                <h3>Alexandria laurel<span><h2>海棠树</h2></span></h3>
                                <p> “呵护一片蓝天，珍爱共同家园”</p>
                                <div class="w3-button">
                                    <a href="login.jsp">${sessionScope.a}</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="w3layouts-banner-top w3layouts-banner-top2">
                        <div class="container">
                            <div class="agileits-banner-info">
                                <h3>Alexandria laurel<span><h2>海棠树</h2></span></h3>
                                <p> “呵护一片蓝天，珍爱共同家园”</p>
                                <div class="w3-button">
                                    <a href="login.jsp">${sessionScope.a}</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="clearfix"> </div>
        <script src="js/responsiveslides.min.js"></script>
        <script>
            // You can also use "$(window).load(function() {"
            $(function () {
                // Slideshow 4
                $("#slider4").responsiveSlides({
                    auto: true,
                    pager:true,
                    nav:true,
                    speed: 500,
                    namespace: "callbacks",
                    before: function () {
                        $('.events').append("<li>before event fired.</li>");
                    },
                    after: function () {
                        $('.events').append("<li>after event fired.</li>");
                    }
                });

            });
        </script>
        <!--banner Slider starts Here-->
    </div>
</div>

<!-- banner -->
<div class="banner">
    <div class="header">
        <div class="container">
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="header-bottom">
        <div class="container">
            <div class="top-nav">
                <nav class="navbar navbar-default">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a class="active list-border" href="index.html">主页</a></li>
                            <li><a href="/plant">选择树苗</a></li>
                            <li><a href="/findAllIAK">种植信息</a></li>
                            <li><a href="/prection">护养日记</a></li>
                            <li><a href="register.jsp">注册</a></li>
                            <li><a class="list-border1" href="/logout">退出</a></li>
                        </ul>
                        <div class="clearfix"> </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</div>

<div class="welcome">
    <div class="container">
        <div class="w3-welcome-grids">
            <div class="col-md-5 w3l-welcome-left">
                <h2>欢迎来到 <span>Alexandria laurel</span></h2>
                <p>海棠，性喜阳光，也能耐半阴，耐寒，对环境要求不严，适于疏松肥沃、土层深厚、排水良好的砂质土壤中生长。我们之所以将网站命名为“Alexandria laurel”就是看重海棠所代表的呵护和珍爱。希望大家能呵护地球上每一片绿色，珍爱我们共同的家园。</p>
                <div class="w3ls-button">
                    <a href="#">更多...</a>
                </div>
            </div>
            <div class="col-md-7 w3l-welcome-right">
                <div class="w3l-welcome-right-grids">
                    <div class="col-sm-5 w3l-welcome-right-img">
                        <img src="images/4.jpg" alt="" />
                    </div>
                    <div class="col-sm-7 w3l-welcome-right-img1">
                        <img src="images/5.jpg" alt="" />
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>

<div class="services">
    <div class="container">
        <div class="agileits-services-grids">
            <div class="col-md-4 agileinfo-services-left">
                <h3>我们<span>在希望...</span></h3>
                <p> 全球森林覆盖率平均水平为31.7%.</p>
                <p>联合国环境规划署报告称,有史以来全球森林已减少了一半,主要原因是人类活动.根据联合国粮农组织2001年的报告,全球森林从1990年的39.6公顷下降到2000年的38.亿公顷.全球每年消失的森林近千万公顷.
                    虽然从1990年至2000年的10年间,人工林年均增加了310万公顷,但热带和非热带天然林却年均减少1250万公顷......</p>
                <p>我们希望能以我们微小的力量给世界带来一点点改变。</p>
            </div>
            <div class="col-md-8 agileinfo-services-right">
                <div class="col-md-6 w3-agileits-services-grid">
                    <i class="fa fa-cogs" aria-hidden="true"></i>
                    <h4>领养</h4>
                    <p>领养一颗小树苗，它将在地球上的某个角落填上一块绿色。小小的它或许还没办法成为绿洲，但你的每一次领养，都正在创造一片绿洲。</p>
                </div>
                <div class="col-md-6 w3-agileits-services-grid agile-services1">
                    <i class="fa fa-comments" aria-hidden="true"></i>
                    <h4>交流</h4>
                    <p>我们的管理员会根据您的领养信息给树苗制定养护计划并每天更新树苗的生长状况，你可以在这里看到养护员和树苗的生活。 </p>
                </div>
                <div class="col-md-6 w3-agileits-services-grid">
                    <i class="fa fa-heart" aria-hidden="true"></i>
                    <h4>成长</h4>
                    <p>每棵树沉默的年轮都是岁月的镌刻。</p>
                    <p>如果有一天你不再年轻，至少有一棵树郁郁葱葱在呈现你的芳华。</p>
                </div>
                <div class="col-md-6 w3-agileits-services-grid">
                    <i class="fa fa-plane" aria-hidden="true"></i>
                    <h4>合作</h4>
                    <p>公司地址：湖北省武汉市江夏区xxx路xx号</p>
                    <p>联系电话：400—123456</p>
                    <p>邮编号码：430000</p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>