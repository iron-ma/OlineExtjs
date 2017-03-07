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
		var autoPanel = new Ext.panel.Panel({
			title : 'Border布局',
			renderTo : Ext.getBody(),
			height : 300,
			width : 400,
			frame : true,
			layout : 'border',
			defaults : {
				collapsible:true//展开收缩
			},
			items : [ {
				title : 'header',
				region:'north',
				height:50,
				html : '上面的面板'
			}, {
				title : 'west',
				width:50,
				region:'west',
				html : '左边部分'
			}, {
				title : 'center',
				region:'center',
				html : '中间部分'
			} ,{
				title : 'east',
				region:'east',
				width:100,
				html : '右边部分'
			},{
				title:'south',
				region:'south',
				heiht:200,
				html:'下面部分'
			}]
		});
	})
</script>
<title>Insert title here</title>

</head>
<body>
</body>
</html>