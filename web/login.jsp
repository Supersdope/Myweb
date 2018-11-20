﻿<!DOCTYPE HTML>
<html>
<head>
<title>login</title>
<!-- Custom Theme files -->
<link href="css/a.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Static Login Form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!--script-->
<script src="js/jquery.min.js"></script>
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
				
</script>	
<!--script-->

</head>
<body>
	<div class="head">
		<div class="logo">
			<div class="logo-top">
				<h1>Static Login Form</h1>
			</div>
			<div class="logo-bottom">
				<section class="sky-form">									
					<label class="radio"><input type="radio" name="radio" checked=""><i></i>Ut mattis mattis bibendum</label>
					<label class="radio"><input type="radio" name="radio"><i></i>Nullam rutrum sagittis interdum</label>										
					<label class="radio"><input type="radio" name="radio"><i></i>Nam cursus eros sed elit</label>
				</section>
			</div>
		</div>		
		<div class="login">
			<div class="sap_tabs">
				<div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
					<ul class="resp-tabs-list">
						<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>用户登陆</span></li>
						<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><label>/</label><span>管理员登陆</span></li>
						<div class="clearfix"></div>
					</ul>				  	 
					<div class="resp-tabs-container">
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
							<div class="login-top">
								<form action="/login">
									<input type="text" name="name"class="name active" placeholder="用户名" required=""/>
									<input type="password"name="password" class="password" placeholder="密码" required=""/>
									<div class="login-bottom login-bottom1">
										<div class="submit">
											<input type="submit" value="登陆"/>
										</div>
								</form>

									<ul>
										<li><a href="register.jsp"style="font-color:#87CEFA;">点击注册</a> </li>
										<li><a href="#"><span class="fb"></span></a></li>
										<li><a href="#"><span class="twit"></span></a></li>
										<li><a href="#"><span class="google"></span></a></li>
									</ul>
									<div class="clear"></div>
								</div>	
							</div>
						</div>
						<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
						<div class="login-top">
								<form action="/Administrator">
									<input type="text" name="aname"class="name active" placeholder="管理员" required=""/>
									<input type="password" name="apassword"class="password" placeholder="密码" required=""/>
									<div class="login-bottom login-bottom1">
										<div class="submit">
											<input type="submit" value="登陆"/>
										</div>
								</form>
									<ul>
										<li><p>Or login with</p></li>
										<li><a href="#"><span class="fb"></span></a></li>
										<li><a href="#"><span class="twit"></span></a></li>
										<li><a href="#"><span class="google"></span></a></li>
									</ul>
									<div class="clear"></div>
								</div>	
							</div>
							
						</div>							
					</div>	
				</div>
			</div>	
		</div>	
		<div class="clear"></div>
	</div>	
	
	<div class="footer">
		<p>Copyright &copy; 2018 gaoliang : </p>
	</div>
</body>
</html>