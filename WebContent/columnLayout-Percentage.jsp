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
Ext.onReady(function(){
	var pan=new Ext.panel.Panel({
		title:'用户注册--Column布局百分比',
		renderTo:Ext.getBody(),
		width:700,
		frame:true,
		height:300,
		layout:'column',
		items:[{
			columnWidth:.33,
			layout:'form',
			frame:true,
			labelWidth:60,
			items:[{
				xtype:'textfield',
				fieldLabel:'用户名',
				anchor:'90%'
			}]
		},{
			columnWidth:.33,
			layout:'form',
			frame:true,
			labelWidth:60,
			items:[{
				xtype:'textfield',
				inputType:'password',
				fieldLabel:'密码',
				anchor:'90%'
			}]
		},{
			columnWidth:.34,
			layout:'form',
			frame:true,
			labelWidth:60,
			items:[{
				xtype:'textfield',
				fieldLabel:'真实姓名',
				anchor:'90%'
			}]
		},{
			columnWidth:.33,
			layout:'form',
			frame:true,
			labelWidth:60,
			items:[{
				xtype:'textfield',
				fieldLabel:'电话',
				anchor:'90%'
			}]
		},{
			columnWidth:.33,
			layout:'form',
			frame:true,
			labelWidth:60,
			items:[{
				xtype:'textfield',
				fieldLabel:'邮箱',
				anchor:'90%'
			}]
		},{
			columnWidth:.34,
			layout:'form',
			frame:true,
			labelWidth:60,
			items:[{
				xtype:'textfield',
				fieldLabel:'地址',
				anchor:'90%'
			}]
		},{
			columnWidth:.33,
			layout:'form',
			frame:true,
			labelWidth:60,
			items:[{
				xtype:'textfield',
				fieldLabel:'QQ',
				anchor:'90%'
			}]
		},{
			columnWidth:.33,
			layout:'form',
			frame:true,
			labelWidth:60,
			items:[{
				xtype:'datefield',
				fieldLabel:'生日',
				anchor:'90%'
			}]
		},{
			columnWidth:.34,
			layout:'form',
			frame:true,
			labelWidth:60,
			items:[{
				xtype:'textfield',
				fieldLabel:'爱好',
				anchor:'90%'
			}]
		}]
	});
});
</script>
<title>Insert title here</title>

</head>
<body>
</body>
</html>