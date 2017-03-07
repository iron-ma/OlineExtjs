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
		var cardPanel = new Ext.panel.Panel({
			title : 'cardLayout面板布局',
			id : 'cardLayoutPanel',
			renderTo : Ext.getBody(),
			height : 300,
			width : 400,
			layout : 'card',
			items : [ {
				title : '面板一',
				id : 's0',
				html : '面板一'
			}, {
				title : '面板二',
				id : 's1',
				html : '面板二'
			}, {
				title : '面板三',
				id : 's2',
				html : '面板三'
			}, {
				title : '面板四',
				id : 's3',
				html : '面板四'
			} ],
			buttons : [ {
				text : '上一页',
				name : '-1',
				handler : changPanel
			}, {
				text : '下一页',
				name : '1',
				handler : changPanel
			} ]
		});
		function changPanel(obj) {

			var panelCount = cardPanel.layout.getLayoutItems().length;//获取所有子面板的数量

			var activePanelIndex = parseInt(cardPanel.layout.getActiveItem().id.substring(1));//获得当前面板的索引

			var nextIndex = activePanelIndex + parseInt(obj.name); //获得加减后的面板的索引
			if (nextIndex > panelCount - 1) {//如果面板索引大于最大面板索引则把面板索引设置成最小的
				nextIndex = 0;
			}
			if (nextIndex < 0) {//如果面板索引小于最小面板索引则把面板索引设置成最大的
				nextIndex = panelCount - 1;
			}
			cardPanel.layout.setActiveItem(nextIndex);//设置要显示的面板
		}
	});
</script>
<title>Insert title here</title>

</head>
<body>
</body>
</html>