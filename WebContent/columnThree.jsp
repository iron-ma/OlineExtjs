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
			title : 'Column列布局-百分比和固定宽度',
			renderTo : Ext.getBody(),
			height : 300,
			width : 400,
			frame : true,
			layout : 'column',
			defaults : {
				frame : true,
				height : 100
			},
			items : [ {
				title : '面板一',
				width : 260,
				id : 's0',
				html : '面板一'
			}, {
				title : '面板二',
				columnWidth : .3,
				height : 120,
				id : 's1',
				html : '面板二'
			}, {
				title : '面板二',
				columnWidth : .7,
				height : 120,
				id : 's2',
				html : '面板二'
			} ]
		});
	})
</script>
<title>Insert title here</title>

</head>
<body>
</body>
</html>