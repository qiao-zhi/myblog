<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>个人博客</title>
		<!-- 引入Bootstrap核心样式文件 -->
		<link href="css/bootstrap.css" rel="stylesheet">

		<!-- 引入jQuery核心js文件 -->
		<script src="js/jquery-1.11.3.min.js"></script>
		<script src="js/bootstrap.js"></script>
		
		<link rel="stylesheet" type="text/css" href="css/index.css"/>
		
	</head>

	<body>
		<!--0.背景点-->
		<div class="snow-container">
			<div class="snow foreground"></div>
			<div class="snow foreground layered"></div>
			<div class="snow middleground"></div>
			<div class="snow middleground layered"></div>
			<div class="snow background"></div>
			<div class="snow background layered"></div>
		</div>

		<!--1.欢迎导航-->
		<div id="welcome" style="font-size: 20px;text-align: right;">
			<font color="#2E6DA4">Welcome&nbsp;</font>
			<font color="#398439">to&nbsp;</font>
			<font color="yellow">my&nbsp;</font>
			<font color="red">blog&nbsp;!!!</font>
		</div>

		<!--2.导航-->
		<!--将default改为inverse可设为反色导航栏-->
		<div class="container" >
			
			<nav class="navbar navbar-inverse">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
					<!--<a class="navbar-brand" href="http://www.bootcss.com/">bootstrap</a>-->
					<a class="navbar-brand" href="liuyan_getLiuyans.action">留言板</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="photo.jsp">个人相册<span class="sr-only">(current)</span></a>
						</li>
						<li>
							<a href="http://www.cnblogs.com/qlqwjy/">博客园</a>
						</li>
						<li>
							<a href="https://github.com/qiao-zhi/">个人git</a>
						</li>
						<li>
							<a href="#">程序员生涯</a>
						</li>
						<li>
							<a href="#">资源下载</a>
						</li>
						<li>
							<a href="#">写博</a>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">更多 <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li>
									<a href="#">项目总结</a>
								</li>
								<li>
									<a href="http://live.qq.com/directory/all">企鹅直播</a>
								</li>
								<li>
									<a href="https://ke.qq.com/course/list?mt=1001">腾讯课堂</a>
								</li>
								<li role="separator" class="divider"></li>
								<li>
									<a href="http://www.apache.org/dist/">apache资源</a>
								</li>
								<li role="separator" class="divider"></li>
								<li>
									<a href="http://www.lanqiao.org/">蓝桥首页</a>
								</li>
							</ul>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span>搜索</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="http://www.baidu.com/">百度</a>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li>
									<a href="#">Action</a>
								</li>
								<li>
									<a href="#">Another action</a>
								</li>
								<li>
									<a href="#">Something else here</a>
								</li>
								<li role="separator" class="divider"></li>
								<li>
									<a href="#">Separated link</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
				<!-- /.container-fluid -->
			</nav>
		</div>
		
		
		
		
		<!--2.轮播图->
		<!--自带响应式-->
		<div class="container">
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				</ol>
		
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="images/7.jpg" width="100%" alt="...">
						<!--<div class="carousel-caption">
							<h3>大标题</h3>
							<p>小标题</p>
						</div>-->
						<div class="carousel-caption">
							...
						</div>
					</div>
					<div class="item">
						<!--图片-->
						<img src="images/5.jpg" width="100%" alt="...">
						<!--标题-->
		<!--				<div class="carousel-caption">
							<h3>大标题</h3>
							<p>小标题</p>
						</div>-->
		
						<div class="carousel-caption">
							...
						</div>
					</div>
					<div class="item">
						<img src="images/6.jpg" width="100%" alt="...">
						<!--标题-->
						<!--<div class="carousel-caption">
							<h3>大标题</h3>
							<p>小标题</p>
						</div>-->
						<div class="carousel-caption">
							...
						</div>
					</div>
					...
				</div>
		
				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
		

		<!--4.一篇文章-->
		<div class="container" >
			 <article style="color: #000000"><h1 align="center"><a href="readmore.html" target="_blank" style="color: #000000">父亲的草拖(亲情)</a></h1>
			      <p style="text-align: left;"> <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小时候，我一直喜欢穿父亲的拖鞋。<br/>
  
  &nbsp;&nbsp;&nbsp;&nbsp;拖鞋是苇草编结成的，简单的样式，穿在脚上，在夏季清清凉凉。好像是喜欢那种感觉，走在水泥地板上，听那沉沉的鞋履声，扑嗒扑嗒的。 <br/>
  
 &nbsp;&nbsp;&nbsp;&nbsp; 现在回想起来，那时的我该是很寂寞的。母亲回老家了，那个长长的夏天，只有我和父亲两个人在西安。 <br/>
  
 &nbsp;&nbsp;&nbsp;&nbsp;父亲总是很忙，每天早出晚归。他不太会管小孩，总是任我自由发展。于是，每天我可以随心所欲地睡到日上三竿，起来后吃一点父亲早晨留好的饭，然后，就扑嗒上那双大草拖跑到楼下去了。楼下有一群和我差不多大小的孩子，我们一起玩一些游戏。那时，往往是一天中最热的时候，有的小女孩子热得受不了，连背心也脱掉，个个晒得黑乎乎的，但是看起来非常健康。 <br/>
  
 &nbsp;&nbsp;&nbsp;&nbsp; 我们一直玩到傍晚的时候，才被楼上的大人一个一个地喊回家。..........
			      </p>
			 </article>
		</div>
		
		
		<!--5.响应式图片-->
		<!--<div class="container">
			<h2>图片</h2>
			<p> .img-responsive类让图片支持响应式，将很好地扩展到父元素 (通过改变窗口大小查看效果):</p>
			<img src="images/cinqueterre.jpg" class="img-responsive img-circle" alt="Cinque Terre" width="304" height="236">
		</div>-->
		
		
		<!--6.脚本-->
		<div id="container">
			<div style="text-align: center;margin-top: 5px;margin-bottom:20px;">
					Copyright &copy; 2005-2016 巴拉巴拉 版权所有
			</div>
		</div>
		
	</body>

</html>