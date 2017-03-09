<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ajax.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script language="javascript">
		var xmlHttpRequest;
		//创建XmlHttpRequest组件对象
		function createXmlHttpRequest(){
			if(window.ActiveXObject){
				return new ActiveXObject("Microsoft.XMLHTTP");
			}else if(window.XMLHttpRequest){
				return new XMLHttpRequest();
			}
		}
		
		//发送请求验证
		function checkUsers(){
			var url="checkUsers.jsp?username="+document.getElementById("username").value;
			//创建XmlHttpRequest对象
			xmlHttpRequest=createXmlHttpRequest();
			//设置回调函数
			xmlHttpRequest.onreadystatechange=backFunction;
			//初始化
			xmlHttpRequest.open("GET",url,true);
			//发送请求
			xmlHttpRequest.send(null);
		}
		
		//回调函数
		function backFunction(){
			if(xmlHttpRequest.readyState == 4&&xmlHttpRequest.status == 200){
			   var b = xmlHttpRequest.responseText;
			   document.getElementById("mess").innerHTML=b;
		    }
		}
	</script>
  </head>
  
  <body>
  <form id="form1" name="form1" method="post" action="">
    
      	用户名：<input id="username" type="text" name="textfield" onblur="checkUsers()" /><div id="mess"></div><br /><br />
   		密码：<input id="password" type="text" name="textfield" /><br /><br />
		电话：<input id="tel" type="text" name="textfield" /><br /><br />
		
		<input type="submit" name="Submit" value="注册" />
		<input type="reset" name="Submit" value="重写" />
		<br />
		
  </form>
    	
  </body>
</html>
