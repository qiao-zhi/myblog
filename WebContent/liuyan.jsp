<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
	String htmlData = request.getParameter("content1") != null ? request.getParameter("content1") : "";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>留言板</title>
<!-- 引入Bootstrap核心样式文件 -->
<link href="css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="themes/icon.css">

<!-- 编辑器 -->
<link rel="stylesheet" href="kindeditor/themes/default/default.css" />
<link rel="stylesheet" href="kindeditor/plugins/code/prettify.css" />
<script charset="utf-8" src="kindeditor/kindeditor-all.js"></script>
<script charset="utf-8" src="kindeditor/lang/zh-CN.js"></script>
<script charset="utf-8" src="kindeditor/plugins/code/prettify.js"></script>
<script>
	var editor;
	KindEditor.ready(function(K) {
		editor = K.create('textarea[name="liuyan.content"]', {
			resizeType : 1,
			allowPreviewEmoticons : false,
			allowImageUpload : true,
			pasteType : 0, //设置能否粘贴
			items : [ 'emoticons','fontname', 'fontsize', '|', 'forecolor', 'hilitecolor',
					'bold', 'italic', 'underline', 'removeformat', '|',
					'justifyleft', 'justifycenter', 'justifyright',
					'insertorderedlist', 'insertunorderedlist', '|', 'link' ]
		});
		// 同步数据后可以直接取得textarea的value
		editor.sync();
	});
</script>
<!-- 引入jQuery核心js文件 -->
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script src="js/easyui-lang-zh_CN.js" type="text/javascript"
	charset="utf-8"></script>
<script src="js/liuyanban.js" type="text/javascript" charset="utf-8"></script>

<link rel="stylesheet" type="text/css" href="css/liuyanban.css" />



</head>
<body>
	<!--内容-->
	<div id="container">

		<!--1.欢迎导航-->
		<div id="welcome" style="font-size: 20px; text-align: right;">
			<font color="#2E6DA4">Welcome&nbsp;</font> <font color="#398439">to&nbsp;</font>
			<font color="yellow">my&nbsp;</font> <font color="red">blog&nbsp;!!!</font>
		</div>

		<!--2.导航栏-->
		<!--将default改为inverse可设为反色导航栏-->
		<div class="container">

			<nav class="navbar navbar-inverse">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!--<a class="navbar-brand" href="http://www.bootcss.com/">bootstrap</a>-->
					<a class="navbar-brand" href="liuyan_getLiuyans.action">留言板</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="photo.jsp">个人相册<span
								class="sr-only">(current)</span></a></li>
						<li><a href="http://www.cnblogs.com/qlqwjy/">博客园</a></li>
						<li><a href="https://github.com/qiao-zhi/">个人git</a></li>
						<li><a href="#">程序员生涯</a></li>
						<li><a href="#">资源下载</a></li>
						<li><a href="#">写博</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">更多 <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">项目总结</a></li>
								<li><a href="http://live.qq.com/directory/all">企鹅直播</a></li>
								<li><a href="https://ke.qq.com/course/list?mt=1001">腾讯课堂</a>
								</li>
								<li role="separator" class="divider"></li>
								<li><a href="http://www.apache.org/dist/">apache资源</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="http://www.lanqiao.org/">蓝桥首页</a></li>
							</ul></li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default">
							<span class="glyphicon glyphicon-search"></span>搜索
						</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="http://www.baidu.com/">百度</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Dropdown <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">Separated link</a></li>
							</ul></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
				<!-- /.container-fluid -->
			</nav>
		</div>


		<!--3.当前位置-->
		<div style="font-size: 18px; color: deepskyblue">
			&nbsp;&nbsp;&nbsp;当前位置>>留言板</div>
		<!--4.主人寄语-->
		<div>
			<hr />
			主人寄语
			<hr />
			<img src="images/jiyu.jpeg" alt="">
		</div>
		<br />

		<!--编辑留言区域-->
		发表您的留言:<br />
		<form action="1.action" method="post" id="liuyanform">
			<textarea id="liuyan.content" name="liuyan.content"
				style="width: 100%;" class="el_editorBox"></textarea>
			<input type="hidden" name="liuyan.name"> <br>
			<p id="fabiao" class="btn btn-primary btn-sm" data-toggle="modal"
				data-target="#add">
				<span>发表</span>
			</p>
		</form>
		<!--统计留言个数-->
		<br /> <br /> <br /> <font color="black">留言(${result.pageBean.totalCount })</font>
		<hr>

		<c:forEach items="${result.pageBean.productList }" var="liuyan"
			varStatus="status">
			<div>
				<div class="name">${liuyan.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第${result.pageBean.totalCount - result.pageBean.currentCount*(result.pageBean.currentPage-1)-status.index}楼</div>
				<br>
				<div class="content">${liuyan.content}</div>
				<br>
				<div class="time">
					<fmt:formatDate value="${liuyan.riqi }"
						pattern="yyyy年MM月dd日    HH:mm:ss"></fmt:formatDate>
				</div>
				<hr />
			</div>
		</c:forEach>



		<!--分页插件-->
		<div id="paginationID"
			style="background: #efefef; border: 1px solid #ccc; width: 100%;"></div>
		<script>
			//		pagination组建名
			$('#paginationID').pagination(
					{
						//			组件属性
						"total" : ${result.pageBean.totalCount },
						"pageSize" : 8,
						"pageNumber" : ${result.pageBean.currentPage },
						"pageList" : [ 8 ],
						"layout" : [ 'list', 'sep', 'first', 'prev', 'manual',
								'next', 'last', 'links' ],
						"onSelectPage" : function(pageNumber, b) {
							 var url="${pageContext.request.contextPath }/liuyan_getLiuyans.action?currentPage="+pageNumber;
						        window.location.href=url;
						}
					});
		</script>

		<!-- 提交模态框（Modal） -->
		<div>
			<div class="modal fade" id="tijiaomotai" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">请输入名字</h4>
						</div>
						<div class="modal-body">
							<div class="input-group">
								<span class="input-group-addon">您的大名:</span> <input type="text"
									name="name" id="name" class="form-control"
									placeholder="请输入真实名字">
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							<button class="btn btn-primary" id="tijiao">提交</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal -->
			</div>
		</div>


	</div>
</body>
</html>
<%!private String htmlspecialchars(String str) {
		str = str.replaceAll("&", "&amp;");
		str = str.replaceAll("<", "&lt;");
		str = str.replaceAll(">", "&gt;");
		str = str.replaceAll("\"", "&quot;");
		return str;
	}%>