<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.itheima.po.Information" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <li class="active">用户信息</li>
                <li class="active">所有用户</li>
            </ol>
            <!-- 显示表格 -->
            <div class="main_box">
                <!-- 顶部搜索添加框 -->
                <div class="row">
                    <!-- 搜索框 -->
                    <div class="col-lg-8">

                    </div>
                    <form class="form-inline" action="/findInformationByName" role="form">
                        <div class="col-lg-2">
                            <input type="text" class="form-control"name="uname" placeholder="输入用户名">
                        </div>
                        <div class="col-lg-1">
                            <input type="submit"class="btn btn-default" value="搜索">
                        </div>
                    </form>
                    <div class="col-lg-1">
                        <button type="button" class="btn btn-primary adduser" onclick="addfun()">添加</button>
                    </div>
                </div>

                <!-- 表格显示区域 -->
                <div class="maintab">
                    <table class="table table-striped table-bordered table-hover text-center" id="sample_1 ">
                        <tr>
                            <td>ID</td>
                            <td>姓名</td>
                            <td>性别</td>
                            <td>年龄</td>
                            <td>电话号码</td>
                            <td>领养时间</td>
                            <td>树苗名</td>
                            <td>种类编号</td>
                            <td>操作</td>
                        </tr>

                        <c:forEach items="${informations}" var="t">
                            <tr>
                                <td>${t.id}</td>
                                <td>${t.uname}</td>
                                <td>${t.gender}</td>
                                <td>${t.age}</td>
                                <td>${t.phone}</td>
                                <td>${t.time}</td>
                                <td>${t.pname}</td>
                                <td>${t.kind_id}</td>
                                <td>
                                    <form action="/aupdate">
                                        <button class="submit" name="uname" value="${t.uname}">编辑</button>
                                    </form>
                                    <form action="/deleteInformation">
                                        <button class="submit" name="id" value="${t.id}">删除</button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>

                    </tr>
                    </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
</div>
</div>
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
