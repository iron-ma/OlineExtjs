<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <base href="<%=basePath%>">
    
    <title>在线选课系统欢迎您！</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		dd{ background-image:url(images/head.png); background-repeat:no-repeat;}
	</style>
	<link rel="stylesheet" type="text/css" href="extjs/resources/css/ext-all.css">
	<link rel="stylesheet" type="text/css" href="css/onlineExtjs.css">
	<script type="text/javascript" src="extjs/ext-all.js"></script>
	<script type="text/javascript">
		Ext.onReady(function(){
			var viewport=new Ext.Viewport({
				frame:true,
				layout:'border',
				renderTo:Ext.getBody(),
				items:[{
					region:'north',
					height:120,
					bodyStyle:'background-image:url(images/head.png); background-repeat:no-repeat;',
					items:[{
						buttons:[{
							text:'关于我们',
							iconCls:'aboutUs'
						},{
							text:'退出系统',
							iconCls:'loginout'
						}]
					}]
				},{
					region:'center',
					xtype:'tabpanel',
					items:[{
						title:'首页',
						iconCls:'openFile',
						bodyStyle:'background-image:url(images/main.jpg); background-repeat:no-repeat;'
					}]
				},{
					title:'在线选课系统',
					region:'west',
					width:180,
					collapsible:true,//展开收缩
					items:[new Ext.tree.Panel({
						border:false,
						root:{
							text:'系统菜单',
							/* icon:'images/add.gif', */
							expanded:true,
							children:[{
								text:'用户管理',
								icon:'images/cartool.png',
								children:[{
									text:'添加用户',
									icon:'images/add.gif',
									leaf:true
								},{
									text:'修改用户',
									icon:'images/reservin.png',
									leaf:true
								},{
									text:'删除用户',
									icon:'images/cartool.png',
									leaf:true
								},{
									text:'查询用户',
									icon:'images/search.png',
									leaf:true
								}]
							},{
								text:'成绩管理',
								icon:'images/book_open.png',
								children:[{
									text:'添加成绩',
									icon:'images/add.gif',
									leaf:true
								},{
									text:'修改成绩',
									icon:'images/reservin.png',
									leaf:true
								},{
									text:'删除成绩',
									icon:'images/cartool.png',
									leaf:true
								},{
									text:'查询用户',
									icon:'images/search.png',
									leaf:true
								}]
							},{
								text:'课程管理',
								icon:'images/clock.png',
								children:[{
									text:'添加课程',
									icon:'images/add.gif',
									leaf:true
								},{
									text:'修改课程',
									icon:'images/reservin.png',
									leaf:true
								},{
									text:'删除课程',
									icon:'images/cartool.png',
									leaf:true
								},{
									text:'查询课程',
									icon:'images/search.png',
									leaf:true
								}]
							},{
								text:'报名管理',
								icon:'images/system.png',
								children:[{
									text:'我要报名',
									icon:'images/add.gif',
									leaf:true
								},{
									text:'修改报名',
									icon:'images/reservin.png',
									leaf:true
								},{
									text:'删除报名',
									icon:'images/cartool.png',
									leaf:true
								},{
									text:'查询报名',
									icon:'images/search.png',
									leaf:true
								}]
							}]
						}
					})]
				},{
					region:'south',
					border:false,
					height:30,
					tbar:['当前登录用户：【admin】','->','公司地址:上海市浦东新区东昌路600号东昌大楼416室','版权所有：<a href="http://www.ibeifeng.com/">北风网</a>']
				}]
			});
		})
	</script>
  </head>
  
  <body>
    
  </body>
</html>
