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
			//get函数
			/*var getF=Ext.get("getFunction").dom;
			var getFc=document.getElementById("getFunction");//DOM
			//alert("加载完成");
			alert(getF);*/
			
			//getCmp函数
			new Ext.Window({
				title:'getCmp函数',
				id:'getCmpFunction',
				width:300,
				height:150,
				layout:'form',
				items:[{
					xtype:'textfield',
					id:'username',
					fieldLabel:'用户名'
				}],
				buttons:[{
					text:'保存',
					handler:function(){
						if(Ext.getCmp("username").getValue()==""){
							alert("用户名不能为空");
							return;//后面的代码不会执行
						}
						alert("用户名是："+Ext.getCmp("username").getValue());
					}
				},{
					text:'修改标题',
					handler:function(){
						Ext.getCmp("getCmpFunction").setTitle("Ext常用函数之getCmp");
					}
				},{
					text:'Each函数演示',
					handler:function(){
						var arr=new Array();
						for(var i=0;i<30;i++){
							arr[i]=i+2;
						}
						var sum=0;
						Ext.each(arr,function(v,i,a){
							if(i%3==0){
								a[i]=i+7;
							}
							if(i==4){
								return false;//相当于break
							}
							sum+=v;
						});
						alert(sum);
						alert(arr);
					}
				}]
			}).show();
		})
	</script>
<title>Insert title here</title>

</head>
<body>
</body>
</html>