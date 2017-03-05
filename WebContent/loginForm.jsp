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
		var form = new Ext.form.FormPanel({
			title : '表单标题',
			id : 'loginForm',
			renderTo:'form',
			width : 500,
			heigth : 500,
			items : [ {
				xtype : 'textfield',
				fieldLabel : '用户名',
				//--------验证区----------------
				allowBlank : false,//是否为空
				blankText : '用户名不能为空',//如果空了，提示信息
				emptyText : '请输入用户名',//文本框的默认填充内容，提示
				msgTarget : 'under',//设置验证提示信息的位置，qtip：显示一个浮动的提示信息，title：显示一个浏览器的负担提示信息，under：在字段下方显示一个提示信息， side: 在字段的右边显示一个提示信息 

				regex : /^\d{3,10}$/,//正则表单验证
				regexText : '用户名必须是3-10位的数字！',
				//----------------------------
				name : 'username',
				id : 'username',
			}, {
				xtype : 'textfield',
				fieldLabel : '密码',
				//--------验证区----------------
				allowBlank : false,//是否为空
				blankText : '密码不能为空',//如果空了，提示信息
				emptyText : '请输入密码',//文本框的默认填充内容，提示
				msgTarget : 'under',//设置验证提示信息的位置，qtip：显示一个浮动的提示信息，title：显示一个浏览器的负担提示信息，under：在字段下方显示一个提示信息， side: 在字段的右边显示一个提示信息 
				//----------------------------
				inputType : 'password',//设置密码隐藏形式
				name : 'password',
				id : 'password',
			} ],
			buttons:[{
				text:'登录'
			},{
				text:'关闭'
			}]
		});
	});
</script>
<title>Insert title here</title>

</head>
<body>
<div id = "form"></div>
</body>
</html>