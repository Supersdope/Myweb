<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Gallery</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--// css -->
<link rel="stylesheet" href="css/lightbox.css">
<!-- font-awesome icons -->
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
		.copyright{
			padding-top: 20px;
		}

	</style>
</head>
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

		<div class="container">
			<div class="w3l-about-heading"></br>
				<h2>树木 <span>信息</span></h2>
			</div>
			<div class="row">
				<div class="col-lg-1"></div>
				<div class="col-lg-10">
					<div class="agileits-a-about-grids">
						<div class="col-md-3 agileits-a-about-left">
							<img src="images/白杨树.jpg"style="border-radius:5px;height: 300px; ">
						</div>
						<div class="col-md-2 ">  </div>
						<div class="col-md-6 agileits-a-about-right"></br>
							<h3>白杨树</h3>
							<p>白杨树（Populus alba）是一种落叶乔木，一般高15～30米，树皮灰白色，是一种很普通的树。生存能力极强，大路边，田埂旁，有黄土的地方，就有它的存在。用途多样，可以当柴烧，打家具，做屋檩栋梁，制作农具。共有4个亚种。</p>
							<p><span> <a href="/kind1" >领养</a> </span></p>
				   		 </div>
						<div class="clearfix"> </div>
					</div>
					<div class="agileits-a-about-grids">
						<div class="col-md-4 agileits-a-about-left">

							<img src="images/松柏.jpg"style="border-radius:5px;height: 300px; ">
						</div>
						<div class="col-md-1" >  </div>
						<div class="col-md-6 agileits-a-about-right">
							<h3>松柏</h3>
							<p>常绿乔木，喜温抗寒，对土壤酸碱度适应性强，广泛分布于我国华北南部及华东地区，亦常用作园林作观赏树种。常用松柏象征坚强不屈的品格，并把松、竹、梅誉为“岁寒三友”。松科是裸子植物中最大的一科，有10属，230种，主产北半球。我国有10属113种，分布遍全国，绝大多数为森林树种和用材树种，有些种类可供采脂、提炼松节油等多种化学原料，有的种类种子可食或供药用，有些可作园林绿化树种。</p>
							<p><span> <a href="/kind2" >领养</a> </span></p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="agileits-a-about-grids">
						<div class="col-md-4 agileits-a-about-left">
							<img src="images/沙柳.jpg"style="border-radius:5px;height: 300px;  ">
						</div>
						<div class="col-md-1" >  </div>
						<div class="col-md-6 agileits-a-about-right">
							<h3>沙柳</h3>
							<p>沙柳为沙漠植物，也是极少数可以生长在盐碱地的一种植物。其幼枝黄色，叶线形或线状披针形，枝条丛生不怕沙压，根系发达，萌芽力强，是固沙造林树种，其天敌为沙柳毒蛾，生于河谷溪边湿地，分布内蒙古、河北、山西、陕西、甘肃、青海、四川等地。沙柳用于作北方防风沙的主力，是“三北防护林”的首选之一。</p>
							<p><span> <a href="/kind3" >领养</a> </span></p>
						</div>
						<div class="clearfix"> </div>
					    </div>
					<div class="agileits-a-about-grids">
						<div class="col-md-4 agileits-a-about-left">

							<img src="images/小灌木.jpg"style="border-radius:5px;height: 300px; ">
						</div>
						<div class="col-md-1" >  </div>
						<div class="col-md-6 agileits-a-about-right">
							<h3>小灌木</h3>
							<p>灌木是没有明显主干的木本植物，植株一般比较矮小，不会超过6米，从近地面的地方就开始丛生出横生的枝干。都是多年生。一般为阔叶植物，也有一些针叶植物是灌木，如刺柏。如果越冬时地面部分枯死，但根部仍然存活，第二年继续萌生新枝，则称为“半灌木”。如一些蒿类植物，也是多年生木本植物，但冬季枯死。许多种灌木由于小巧，多作为园艺植物栽培，用于装点园林。</p>
							<p><span> <a href="/kind4" >领养</a> </span></p>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="agileits-a-about-grids">
						<div class="col-md-4 agileits-a-about-left">

							<img src="images/俊俊树.jpg"style="border-radius:5px;height: 300px; ">
						</div>
						<div class="col-md-1" >  </div>
						<div class="col-md-6 agileits-a-about-right">
							<h3>俊俊树</h3>
							<p>小乔木，高1-9米，树杆地径可达50厘米。树皮灰白色，木材坚而脆；老枝灰褐色或淡黄褐色，通常具环状裂隙；当年枝细长，斜升或弯垂，节间长4-12毫米，直径约1.5毫米。叶鳞片状，宽三角形，稍开展，先端钝，腋间具棉毛。
								 梭梭抗旱、抗热、抗寒、耐盐碱性都很强，茎枝内盐分含量高达15%左右，喜光，不耐庇荫，适应性强，生长迅速，枝条稠密，根系发达，防风固沙能力强，是我国西北和内蒙古干旱荒漠地区固沙造林的优良树种。
							<p><span> <a href="/kind5" >领养</a> </span></p>
						</div>
						<div class="clearfix"> </div>
					</div>



				<div class="col-lg-1">
				</div>

		</div>
	</div></div></div>
			<div class="copyright">
					<p>Copyright &copy; 2018 gaoliang :7/5 </p>
			</div>

	</body>


	