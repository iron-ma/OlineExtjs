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
		var cardPanel = new Ext.panel.Panel({
			title:'absolute面板布局',
			renderTo:Ext.getBody(),
			height:300,
			width:400,
			layout:'absolute',
			items:[{
				title:'面板一',
				anchor:'r b',
				width:120,
				height:120,
				x:10,
				y:10,
				id:'s0',
				html:'面板一'
			}]
		});
	});
</script>
<title>Insert title here</title>

</head>
<body>
</body>
</html>