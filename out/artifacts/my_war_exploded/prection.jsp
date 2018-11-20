<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.itheima.po.Information" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<body>
<head>
    <title>Contact</title>
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
    <style>
        .row{
            margin-top:60px ;
            height: 575px;
        }
        #body{
            background-color: #1b6d85;
        }
        .a{
            margin-top: 50px;

        }
        .b{
            margin-top: 150px;
        }

    </style>
<body>
<!-- banner -->
<div class="banner about-banner">
    <div class="header">
        <div class="container">
            <div class="header-left">
                <div class="w3layouts-logo"></div>
            </div>

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
                            <li><a class="active list-border" href="sindex.jsp">主页</a></li>
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

<body>
                <div class="container b">
                    <div class="col-lg-4"></div>
                    <div class="col-lg-4">
                    <form action="/findnameAndday">
                         <input type="hidden"value="${sessionScope.w}" name="name">
                             <input type="text" name="day" placeholder="输入查询的日记时间">
                             <input type="submit" value="查询" >
                    </form>
                        <table class="a">
                            <td>
                        <c:forEach items="${diarys}" var="s">
                            ${s.ndiary}
                        </c:forEach>
                            </td>
                        </table>
                    </div>
                    <div class="col-lg-4"></div>
                </div>
</body>
</html>