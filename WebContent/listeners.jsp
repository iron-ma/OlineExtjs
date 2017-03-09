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
		new Ext.panel.Panel({
		    width: 400,
		    renderTo:Ext.getBody(),
		    height: 400,
		    dockedItems: [{
		        xtype: 'toolbar'
		    }],
		    listeners: {
		        click: {
		            element: 'el', //bind to the underlying el property on the panel
		            fn: function(){ console.log('click el'); }
		        },
		        dblclick: {
		            element: 'body', //bind to the underlying body property on the panel
		            fn: function(){ console.log('dblclick body'); }
		        }
		    }
		});
	});
</script>
<title>Insert title here</title>

</head>
<body>
</body>
</html>