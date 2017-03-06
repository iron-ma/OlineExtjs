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
			title:'accordion面板布局',
			id:'accordionLayoutPanel',
			renderTo:Ext.getBody(),
			height:300,
			width:400,
			layout:'accordion',
			items:[{
				title:'用户管理',
				items:[new Ext.tree.Panel({
					root:{
						text:'用户管理',
						children:[{
							text:'添加用户',
							icon:'images/add.png',
							leaf:true
						},{
							text:'删除用户',
							icon:'images/delete.png',
							leaf:true
						},{
							text:'修改用户',
							icon:'images/delete.png',
							leaf:true
						},{
							text:'查询用户',
							icon:'images/search.png',
							leaf:true
						}]
					}
				})]
			},{
				title:'成绩管理',
				items:[new Ext.tree.Panel({
					root:{
						text:'成绩管理',
						children:[{
							text:'添加成绩',
							icon:'images/add.png',
							leaf:true
						},{
							text:'删除成绩',
							icon:'images/delete.png',
							leaf:true
						},{
							text:'修改成绩',
							icon:'images/delete.png',
							leaf:true
						},{
							text:'查询成绩',
							icon:'images/search.png',
							leaf:true
						}]
					}
				})]
			},{
				title:'课程管理',
				items:[new Ext.tree.Panel({
					root:{
						text:'课程管理',
						children:[{
							text:'添加课程',
							icon:'images/add.png',
							leaf:true
						},{
							text:'删除课程',
							icon:'images/delete.png',
							leaf:true
						},{
							text:'修改课程',
							icon:'images/delete.png',
							leaf:true
						},{
							text:'查询课程',
							icon:'images/search.png',
							leaf:true
						}]
					}
				})]
			},{
				title:'日志管理',
				items:[new Ext.tree.Panel({
					root:{
						text:'日志管理',
						children:[{
							text:'添加日志',
							icon:'images/add.png',
							leaf:true
						},{
							text:'删除日志',
							icon:'images/delete.png',
							leaf:true
						},{
							text:'修改日志',
							icon:'images/delete.png',
							leaf:true
						},{
							text:'查询日志',
							icon:'images/search.png',
							leaf:true
						}]
					}
				})]
			}]
		});
	});
</script>
<title>Insert title here</title>

</head>
<body>
</body>
</html>