<!doctype html>
<html lang="en">

<head>
	<title>register</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Music School Registration Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
	/>
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- fonts -->
	<link href="//fonts.googleapis.com/css?family=Tangerine:400,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Hind+Siliguri:300,400,500,600,700&amp;subset=bengali,latin-ext" rel="stylesheet">
	<!-- /fonts -->
	<!-- css -->
	<link href="css/b.css" rel="stylesheet" type='text/css' media="all" />
	<!-- /css -->
</head>

<body>
	<h2 class="w3layouts">User registration </h2>
	<div class="clear"></div>
	<div class="content-w3ls">
		<div class="form_w3layouts">
			<form action="/addUser" method="post" class="agile_form">
				<div class="agileits-left">
					<input type="text" name="name" class="username" placeholder="输入用户名" required="">
				</div>
				<div class="agileits-left">
					<input type="text" name="password" class="username" placeholder="输入密码" required="">
				</div>
				<div class="agileits-left">
					<input type="email" name="email" class="username" placeholder="输入E-mail" required="">
				</div>
				<div class="section_class_agileits">
					<select name="city">
						<option value="">城市</option>
						<option value="北京">北京</option>
						<option value="广州">广州</option>
						<option value="上海">上海</option>
						<option value="武汉">武汉</option>
						<option value="天津">天津</option>
						<option value="重庆">重庆</option>
						<option value="长沙">长沙</option>
						<option value="成都">成都</option>
						<option value="杭州">杭州</option>
					</select>
				</div>
				<div class="agileits-left">
					<input type="text" name="phone" placeholder="输入手机号码" required="">
				</div>
				<div class="submit-w3l">
					<input type="submit" value="Submit">
				</div>
			</form>
		</div>
		<div class="clear"></div>
	</div>
	<div class="clear"></div>
	<h2 class="copyright-agileits">© 2018  gaoliang</h2>
	<div class="clear"></div>

	<!-- js -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!-- //js -->
	<!-- date-->
	<link rel="stylesheet" href="css/jquery-ui.css" />
	<script src="js/jquery-ui.js"></script>
	<script>
		$(function () {
			$("#datepicker,#datepicker1").datepicker();
		});
	</script>
	<!-- //date -->
	<!-- time -->
	<script type="text/javascript" src="js/wickedpicker.js"></script>
	<script type="text/javascript">
		$('.timepicker').wickedpicker({
			twentyFour: false
		});
	</script>
	<link href="css/wickedpicker.css" rel="stylesheet" type='text/css' media="all" />
	<!-- //time -->

</body>

</html>