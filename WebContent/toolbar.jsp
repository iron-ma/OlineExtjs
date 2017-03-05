<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet"
	href="extjs/resources/css/ext-all.css">
<link type="text/css" rel="stylesheet" href="css/extjs.css">
<script type="text/javascript" src="extjs/ext-all.js"></script>
<script type="text/javascript">
	Ext.onReady(function() {
		var toolbar = new Ext.toolbar.Toolbar({
			renderTo : 'toolbar',
			width : 700
		});
		toolbar.add([ {
			text : '新建文件夹',
			iconCls : 'createIcon', 
			handler : buttonClick,
			menu:new Ext.menu.Menu({
				shadow:'drop',
				items:[
						{
							text:'新建word',
							icon:'images/add.png',
							menu:new Ext.menu.Menu({
								shadow:'drop',
								items:[{
									text:'创建word2007',
									icon:'images/add.png',
									menu:new Ext.menu.Menu({
										shadow:'drop',
										items:[{
											text:'颜色选择',
											icon:'images/add.png',
											menu:new Ext.menu.ColorPicker()
										},
										{
											text:'日期选择',
											icon:'images/add.png',
											menu:new Ext.menu.DatePicker()
										}
										]
									})
								},{
									text:'创建word2010',
									icon:'images/add.png'
								}]
							})	
						},
						{
							text:'新建excel',
							icon:'images/add.png'
						},
						{
							text:'新建ppt',
							icon:'images/add.png'
						}
						]
			})
		}, {
			text : '打开文件夹',
			iconCls : 'openIcon',
			handler : buttonClick
			
		}, {
			text : '保存文件夹',
			iconCls : 'saveIcon',
			handler : buttonClick
		}, '-', {//-表示|分割符
			xtype : 'textfield',
			hideLable : true,
			width : 100
		}, '->', '<a href="http://www.baidu.com">HtmlElement百度</a>' ,"String字符串"]);//->表示填充剩余空间
		function buttonClick(btn) {
		//	alert(btn.text);
		}
		Ext.get("enable").on("click", function() {
			toolbar.enable();
		})
		Ext.get("disable").on("click", function() {
			toolbar.disable();
		})
	});
</script>
<title>Insert title here</title>

</head>
<body>
	<div id='toolbar'></div>
	<input type="button" id='enable' value="启用" />
	<input type="button" id='disable' value="禁用" />
</body>
</html>