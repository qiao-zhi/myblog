/**
 * 
 * Created by liqiang on 2017/10/1.
 */
$(function() {
	/**
	 * 提交按钮点击事件，内容不为空 的时候打开模态框输入姓名
	 */
	$("#fabiao").click(function() {
		editor.sync();
		// 判断内容区是否为空
		if (editor.isEmpty()) {
			alert("内容不能为空！");
			return;
		}
		$("#tijiaomotai").modal();
	});
	$("#tijiao").click(function() {
		$("input[name='liuyan.name']").val($("input[name='name']").val());
		$.ajax({
			url : 'myBlog/liuyan_addLiuyan.action',
			data : {
				'liuyan.content' : editor.html(),
				'liuyan.name' : $("input[name='name']").val()
			},
			type : 'POST',
			async : true,
			success : function(data) {
				alert(data);
				window.location.href = 'liuyan_getLiuyans.action';
			},
			error : function() {

			}
		});
	});

});