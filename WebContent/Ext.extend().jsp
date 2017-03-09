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
	/* Ext.extend方法是用来实现类的继承。 
		extend(Object subclass,Object superclass,[Object overrides] : Object 
		第一个参数：子类 
		第二个参数：父类 
		第三个参数：要覆盖的属性。 
		这里需要强调一下，子类继承下来的是父类中通过superclass.prototype方式定义的属性（包括用此方法定义的函数）。  */
	Ext.onReady(function() {
		 function S(){   
         }   
	         S.prototype.s = "s";   
	         S.prototype.s1 = "s1";   
         function C(){   
             this.c = "c";   
             this.c1 = "c1";   
         }   
         Ext.extend(C,S,{s:"by c overload"});   
         var c = new C();   
         alert(c.s); //s   
         alert(c.s1); //by c overload   
	});
</script>
<title>Insert title here</title>

</head>
<body>
</body>
</html>