<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.itheima.po.Information" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>

<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>首页</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link href="css/config.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">

</head>

<body>
<!-- nav导航 -->
<nav class="navbar navbar-inverse bdr-n z-ind">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="#">后台管理平台</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">admin <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">设置</a></li>
                        <li><a href="#">个人中心</a></li>
                        <li onclick="logout()"><a href="#">退出</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- 页面主体 -->
<div class="dh mainbox">
    <!-- 左边菜单 -->
    <div class="navleft leftnav-bgc">
        <dl class="list_dl">
            <dt class="list_dt">
                <span class="_after"></span>
                <p>用户管理</p>
                <i class="list_dt_icon"></i>
            </dt>
            <dd class="list_dd">
                <ul>
                    <li class="list_li">
                        <a class="list_a" href="/findalluser">所有用户</a>
                    </li>
                    <li class="list_li">
                        <a class="list_a" href="adduser.jsp">增加用户</a>
                    </li>
                </ul>
            </dd>
            <dt class="list_dt">
                <span class="_after"></span>
                <p>种植管理</p>
                <i class="list_dt_icon"></i>
            </dt>
            <dd class="list_dd">
                <ul>
                    <li class="list_li"><a class="list_a" href="/findallInformation">种植信息</a></li>
                    <li class="list_li"><a class="list_a" href="addinformation.jsp">增加信息</a></li>
                </ul>
            </dd>
            <dt class="list_dt">
                <span class="_after"></span>
                <p>种类管理</p>
                <i class="list_dt_icon"></i>
            </dt>
            <dd class="list_dd">
                <ul>
                    <li class="list_li"><a class="list_a" href="/findallKind">种类信息</a></li>
                    <li class="list_li"><a class="list_a" href="addkind.jsp">增加信息</a></li>
                </ul>
            </dd>
            <dt class="list_dt">
                <span class="_after"></span>
                <p>护养日记</p>
                <i class="list_dt_icon"></i>
            </dt>
            <dd class="list_dd">
                <ul>
                    <li class="list_li"><a class="list_a" href="/findall">添加日记</a></li>
                    <li class="list_li"><a class="list_a" href="/alldiary">所有日记</a></li>
                </ul>
            </dd>
        </dl>
    </div>
    <div class="main-rightbox">
        <div class="mainrightbox">
            <!-- 路径导航 -->
            <ol class="breadcrumb">
                <li><a href="homepage.jsp">首页</a></li>
                <li class="active">基础管理</li>
                <li class="active">菜单管理</li>
                <li class="active">增加编辑</li>
            </ol>
            <!-- 网页主体内容部分 -->
            <div class="main_box ioep">
                <!-- 页面单排显示 -->
                <div class="modal-conbox">
                    <form role="form"action="/updateInformation" class="form-horizontal">
                        <div class="form-group">
                            <label  class="col-sm-3 control-label">姓名</label>
                            <div class="col-sm-9">
                                <input type="text"name="uname" value="${k}" class="form-control" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-sm-3 control-label">性别</label>
                            <div class="col-sm-4 ">
                                <select class="form-control" name="gender">
                                    <option value="男">男</option>
                                    <option value="女">男</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-sm-3 control-label">年龄</label>
                            <div class="col-sm-9">
                                <input type="text"name="age"class="form-control" placeholder="请输入年龄">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">电话号码</label>
                            <div class="col-sm-9">
                                <input type="text"name="phone"class="form-control" placeholder="请输入电话号码">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">领养时间</label>
                            <div class="col-sm-9">
                                <input type="text"name="time" class="form-control"  value=<%=sdf.format(new Date())%>>
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-sm-3 control-label">树苗名</label>
                            <div class="col-sm-9">
                                <input type="text"name="pname" class="form-control"  placeholder="请输入树苗名">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">种类编号</label>
                            <div class="col-sm-9">
                                <input type="text"name="kind_id" class="form-control"  placeholder="请输入种类编号">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-5 col-sm-2">
                                <button type="submit" class="btn btn-primary">提交</button>
                            </div>
                        </div>
                    </form>
                </div>

                <!-- 引入公共js文件 -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<script src="js/bootstrap.js"></script>
<!-- <script src="js/modal.js"></script> -->
<script src="js/jquery.pagination.min.js"></script>

<script>

    $(".list_dt").on("click", function() {
        $('.list_dd').stop();
        $(this).siblings("dt").removeAttr("id");
        if ($(this).attr("id") == "open") {
            $(this).removeAttr("id").siblings("dd").slideUp();
        } else {
            $(this).attr("id", "open").next().slideDown().siblings("dd").slideUp();
        }
    });

    function logout() {
        window.location.href = "/logout";
    };
    function addfun() {
        window.location.href = "addinformation.jsp";
    }
</script>
</body>

</html>

