<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet"
	href="extjs/resources/css/ext-all.css">
<script type="text/javascript" src="extjs/ext-all.js"></script>
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript">
	Ext.onReady(function() {
		var form = new Ext.form.FormPanel({
			title : '表单标题',
			id : 'loginForm',
			renderTo : 'form',
			width : 700,
			heigth : 700,
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
			}, new Ext.form.field.Number({
				fieldLabel : '年龄',
				hideTrigger : true,//把左边微调数字的功能隐藏
				allowDecimals : false,//是否允许小数
				maxValue : 130,//允许的最大值
				maxText : '年龄不能大于0',//错误提示
				minValue : 0,//允许的最小值
				minText : '年龄不能小于0'//错误提示
			}), {
				xtype : 'numberfield',
				fieldLabel : '折扣'
			}, {
				xtype : 'radio',
				boxLabel : '男',
				inputValue : 'man',
				name : 'sexs'
			}, {
				xtype : 'radio',
				boxLabel : '女',
				inputValue : 'woman',
				name : 'sexs'
			}, {
				xtype : 'radiogroup',
				fieldLabel : '性别',
				columns : 2,
				items : [ {
					boxLabel : '男',
					inputValue : 'man',
					name : 'sex'
				}, {
					boxLabel : '女',
					inputValue : 'woman',
					name : 'sex'
				} ]

			}, {
				xtype : 'checkboxfield',
				boxLabel : '足球'
			}, {
				xtype : 'checkboxfield',
				boxLabel : '篮球'
			}, {
				xtype : 'checkboxfield',
				boxLabel : '乒乓球'
			}, {
				xtype : 'checkboxgroup',
				fieldLabel : '爱好',
				columns : 2,
				items : [ {
					boxLabel : '篮球'
				}, {
					boxLabel : '足球'
				}, {
					boxLabel : '乒乓球'
				} ]

			}, {
				xtype : 'combo',
				id : 'jiguan',
				fieldLabel : '籍贯',
				store : online.extjs.jiGuanStore,//数据源
				queryMode : 'local',
				triggerAction : 'all',//触发查询的时候combox中得到的数据方式单击触发按钮时执行的默认操作，有效值包括“all”和“query”，默认为“query”使用raw value进行查询，如果设置为“all”则会执行allQuery中设置的查询
				displayField : 'jiGuanMingZi',//combox显示的值
				valueField : 'jiGuanZhi'//combox真实的值
			}, {
				xtype : 'timefield',//时间文本框
				id : 'registerTime',
				fieldLabel : '登录时间',
				maxValue : '19:00',//限制最大值
				maxText : '时间不能晚于7点'//错误提示信息 
			}, {
				xtype : 'datefield',
				id : 'registerDate',
				fieldLabel : '注册日期',
				format : 'Y-m-d'
			} ],
			buttons : [ {
				text : '登录',
				handler : function() {
					alert(Ext.getCmp('jiguan').getValue());
				}
			}, {
				text : '关闭'
			} ]
		});
	});
</script>
<title>Insert title here</title>

</head>
<body>
	<div id="form"></div>
</body>
</html>