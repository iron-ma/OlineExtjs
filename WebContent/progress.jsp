<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet"
	href="extjs/resources/css/ext-all.css">
<script type="text/javascript" src="extjs/ext-all.js"></script>
<script type="text/javascript">
	Ext.onReady(function() {

		var progress = Ext.MessageBox.show({
			title:'进度条',
			width:300,
			progress:true, //设成true进度条才会显示
			msg:'当前进度'
		});
		 var index = 0;
		 var t = {//创建一个任务变量
				 run:function(){
					 progress.updateProgress(index/100,"当前已完成"+index+"%","请稍后……");
					 index+=5;
					 if(index > 100){
						 Ext.TaskManager.stop(t);
					 }
				 },
				 interval:1000
		 };
		 Ext.TaskManager.start(t);//使用TaskManager来开始任务
	});
</script>
<title>Insert title here</title>

</head>
<body>
</body>
</html>