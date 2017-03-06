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
		 var pane = Ext.create('Ext.panel.Panel', {
			title : '我的第一个ext面板',
			id : 'panel',
			height : 400,
			width : 500,
			collapsible : true,//是否可以进行折叠
			autoScroll:true,//可以出现滚动条
			tbar : [ {//头toolbar
				text : '查询'
			} ],
			bbar : [ {
				text : '退出'
			} ],
			tools : [ {
				id : 'toggle'//显示隐藏图标
			}, {
				id : 'close'//关闭图标
			}, {
				id : 'maximize'//最大化图标
			}, {
				id : 'minimize'//最小化图标
			}, {
				id : 'restore'//恢复窗口
			}, {
				id : 'pin'//固定图标
			}, {
				id : 'left'//向左图标
			}, {
				id : 'right'//向右图标
			}, {
				id : 'up'//向上图标
			}, {
				id : 'down'//向下图标
			}, {
				id : 'refresh'//刷新图标
			}, {
				id : 'plus'//加号图标
			}, {
				id : 'search'//查询图标
			}, {
				id : 'print'//打印图标
			}, {
				id : 'help'//帮助图标
			}, {
				id : 'save'//保存图标
			}, {
				id : 'expand'//扩展图标
			} ],
			html:'这是panel面板体',
			items:[{
				xtype:'datefield',
				fieldLabel:'出生日期'
			},{
				xtype:'textfield',
				fieldLabel:'用户名'
			},{
				xtype:'textfield',
				fieldLabel:'用户名'
			},{
				xtype:'textfield',
				fieldLabel:'用户名'
			},{
				xtype:'textfield',
				fieldLabel:'用户名'
			},{
				xtype:'textfield',
				fieldLabel:'用户名'
			},{
				xtype:'textfield',
				fieldLabel:'用户名'
			},{
				xtype:'textfield',
				fieldLabel:'用户名'
			},{
				xtype:'textfield',
				fieldLabel:'用户名'
			},{
				xtype:'textfield',
				fieldLabel:'用户名'
			},{
				xtype:'textfield',
				fieldLabel:'用户名'
			},{
				xtype:'textfield',
				fieldLabel:'用户名'
			},{
				xtype:'textfield',
				fieldLabel:'用户名'
			}]
			
		});
		var win = new Ext.Window({//用window窗体显示panel
			title : '注册panel',
			width : 600,
			height : 500,
			items : [ pane ]
		});
		win.show();
	});
</script>
<title>Insert title here</title>

</head>
<body>
</body>
</html>