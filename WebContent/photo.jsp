<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="zh-cn">

<head>
<title>个人相册</title>
<meta charset="UTF-8" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="css/slicebox.css" />
<link rel="stylesheet" href="css/photo_init.css">
<link rel="stylesheet" type="text/css" href="css/custom.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<style>
h1 {
	margin-top: 100px;
	font-family: 'Microsoft Yahei';
	font-size: 36px;
	color: #019157;
}
</style>
<script type="text/javascript" src="js/modernizr.custom.46884.js"></script>
<script type="text/javascript" src="js/jquery.slicebox.js"></script>
<script type="text/javascript">
			$(function() {

				var Page = (function() {

					var $navArrows = $('#nav-arrows').hide(),
						$shadow = $('#shadow').hide(),
						slicebox = $('#sb-slider').slicebox({
							onReady: function() {

								$navArrows.show();
								$shadow.show();

							},
							orientation: 'r',
							cuboidsRandom: true,
							disperseFactor: 30
						}),

						init = function() {

							initEvents();

						},
						initEvents = function() {

							// add navigation events
							$navArrows.children(':first').on('click', function() {

								slicebox.next();
								return false;

							});

							$navArrows.children(':last').on('click', function() {

								slicebox.previous();
								return false;

							});

						};

					return {
						init: init
					};

				})();

				Page.init();

			});
		</script>
</head>

<body>
	<audio src="yinweiaiqing.mp3" autoplay="autoplay"></audio>
	<div class="container">
		<h1>我们的毕业之际</h1>

		<div class="wrapper">

			<ul id="sb-slider" class="sb-slider">
				<li><a href="http://www.cnblogs.com/lhb25/" target="_blank"><img
						src="images/001.jpg" alt="image1" /></a>
					<div class="sb-description">
						<h3>Selfless Philantropist</h3>
					</div></li>
				<li><a href="http://www.cnblogs.com/lhb25/" target="_blank"><img
						src="images/002.jpg" alt="image1" /></a>
					<div class="sb-description">
						<h3>Selfless Philantropist</h3>
					</div></li>
				<li><a href="http://www.cnblogs.com/lhb25/" target="_blank"><img
						src="images/003.jpg" alt="image1" /></a>
					<div class="sb-description">
						<h3>Selfless Philantropist</h3>
					</div></li>
				<li><a href="http://www.cnblogs.com/lhb25/" target="_blank"><img
						src="images/004.jpg" alt="image1" /></a>
					<div class="sb-description">
						<h3>Selfless Philantropist</h3>
					</div></li>
				<li><a href="http://www.cnblogs.com/lhb25/" target="_blank"><img
						src="images/005.jpg" alt="image1" /></a>
					<div class="sb-description">
						<h3>Selfless Philantropist</h3>
					</div></li>
				<li><a href="http://www.cnblogs.com/lhb25/" target="_blank"><img
						src="images/006.jpg" alt="image1" /></a>
					<div class="sb-description">
						<h3>Selfless Philantropist</h3>
					</div></li>
				<li><a href="http://www.cnblogs.com/lhb25/" target="_blank"><img
						src="images/007.jpg" alt="image1" /></a>
					<div class="sb-description">
						<h3>Selfless Philantropist</h3>
					</div></li>
				<li><a href="http://www.cnblogs.com/lhb25/" target="_blank"><img
						src="images/008.jpg" alt="image1" /></a>
					<div class="sb-description">
						<h3>Selfless Philantropist</h3>
					</div></li>
				<li><a href="http://www.cnblogs.com/lhb25/" target="_blank"><img
						src="images/009.jpg" alt="image1" /></a>
					<div class="sb-description">
						<h3>Selfless Philantropist</h3>
					</div></li>
				<li><a href="http://www.cnblogs.com/lhb25/" target="_blank"><img
						src="images/010.jpg" alt="image1" /></a>
					<div class="sb-description">
						<h3>Selfless Philantropist</h3>
					</div></li>
				<li><a href="http://www.cnblogs.com/lhb25/" target="_blank"><img
						src="images/011.jpg" alt="image1" /></a>
					<div class="sb-description">
						<h3>Selfless Philantropist</h3>
					</div></li>
				<li><a href="http://www.cnblogs.com/lhb25/" target="_blank"><img
						src="images/012.jpg" alt="image1" /></a>
					<div class="sb-description">
						<h3>Selfless Philantropist</h3>
					</div></li>
				<li><a href="http://www.cnblogs.com/lhb25/" target="_blank"><img
						src="images/015.jpg" alt="image1" /></a>
					<div class="sb-description">
						<h3>Selfless Philantropist</h3>
					</div></li>
				<li><a href="http://www.cnblogs.com/lhb25/" target="_blank"><img
						src="images/014.jpg" alt="image1" /></a>
					<div class="sb-description">
						<h3>Selfless Philantropist</h3>
					</div></li>
				<li><a href="http://www.cnblogs.com/lhb25/" target="_blank"><img
						src="images/016.jpg" alt="image1" /></a>
					<div class="sb-description">
						<h3>Selfless Philantropist</h3>
					</div></li>
				<li><a href="http://www.cnblogs.com/lhb25/" target="_blank"><img
						src="images/018.jpg" alt="image1" /></a>
					<div class="sb-description">
						<h3>Selfless Philantropist</h3>
					</div></li>
				<li><a href="http://www.cnblogs.com/lhb25/" target="_blank"><img
						src="images/019.jpg" alt="image1" /></a>
					<div class="sb-description">
						<h3>Selfless Philantropist</h3>
					</div></li>
				<li><a href="http://www.cnblogs.com/lhb25/" target="_blank"><img
						src="images/020.jpg" alt="image1" /></a>
					<div class="sb-description">
						<h3>Selfless Philantropist</h3>
					</div></li>
			</ul>

			<div id="shadow" class="shadow"></div>

			<div id="nav-arrows" class="nav-arrows">
				<a href="#">Next</a> <a href="#">Previous</a>
			</div>

		</div>
		<!-- /wrapper -->
		<div class="footer-banner" style="width: 728px; margin: 30px auto"></div>
	</div>
</body>

</html>