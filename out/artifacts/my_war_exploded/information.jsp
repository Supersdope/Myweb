<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/c.css" rel="stylesheet" type="text/css" media="all"/>
<link href="http://fonts.googleapis.com/css?family=Raleway:400,500,600,700,800,900" rel="stylesheet">
</head>
<body>
<div class="signupform">
<h1>填写领养信息</h1>
	<div class="container">
		
		<div class="agile_info">
			<div class="w3l_form">
				<div class="left_grid_info">
					<h3>Thanks !</h3>
					<h4>感谢你为环保贡献出自己的一份力量</h4>
					<p>Wish you a good mood every day .</p>
				</div>
			</div>
			<div class="w3_info">
						<form action="/addInformation">
						    <div class="input-group">
							  <input type="text"name="uname" placeholder="请输入姓名" required="">
						    </div>
							<div class="input-group">
								<input type="text"name="gender" placeholder="请输入性别" required="">
							</div>
							<div class="input-group">
								<input type="text" name="age"placeholder="请输入年龄" required="">
							</div>
							<div class="input-group">
								<input type="text" name="phone"placeholder="请输入电话号码" required="">
							</div>
							<div class="input-group">
								<input type="text" name="time"value=<%=sdf.format(new Date())%>/>
							</div>
							<div class="input-group">
								<input type="text"name="pname"value="${b}">
							</div>
							<div class="input-group">
								<input type="text" name="kind_id"value="${c}">
							</div>
							<button class="btn btn-danger btn-block" type="submit">提交</button >
					</form>
			</div>
			<div class="clear"></div>
			</div>
			
		</div>
		<div class="footer">

 <p>Copyright &copy; 2018 gaoliang :7/5</p>
 </div>
	</div>
	</body>
</html>