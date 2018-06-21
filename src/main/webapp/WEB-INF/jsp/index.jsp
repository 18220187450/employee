<%@page language="java" import="java.util.*"
	contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="js/jquery-easyui-1.5/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="js/jquery-easyui-1.5/themes/icon.css" />
<link rel="stylesheet" type="text/css" href="css/web.css" />
</head>
<script>
	
</script>
<body class="easyui-layout">

	<div data-options="region:'north',split:false" style="height: 100px;"></div>
	<div data-options="region:'south'">employee</div>

	<div data-options="region:'west',title:'功能区'" style="width: 200px;">
		<div id="aa" class="easyui-accordion" data-options="fit:true">
			<div title="员工管理" data-options="iconCls:'icon-save',selected:true"
				style="overflow: auto; padding: 10px;">
				<ul id="tt" class="easyui-tree mytree">
					<li data-options="attributes:{url:'emp-add'}"><span>添加员工</span></li>
					<li data-options="attributes:{url:'emp-update'}"><span>修改员工</span></li>
				</ul>
			</div>
		</div>
	</div>
	<div data-options="region:'center',title:'主操作区'"
		style="padding: 5px; background: #eee;">
		<div id="mytab" class="easyui-tabs" data-options="fit:true"">
			<div title="员工信息" style="padding: 20px; display: none;">
			<table width="100%" border="0">
			<tr>
				<td>id</td>
				<td>姓名</td>
				<td>性别</td>
				<td>出生日期</td>
			</tr>
			<tr>
					<c:forEach items="${emp}" var="em">
					<th>${em.id}</th>
					<th>${em.name}</th>
					<th>${em.sex}</th>
					<th>${em.csrq}</th>
					</c:forEach>
			</tr>
			</table>
			</div>
		</div>
	</div>


	<!-- jquery -->
	<script type="text/javascript" src="js/jquery-easyui-1.5/jquery.min.js"></script>
	<!-- easyui -->
	<script type="text/javascript"
		src="js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
	<script type="text/javascript"
		src="js/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript">
		$('.mytree').tree({
			onClick : function(node) {
				//alert(node.text);  // 在用户点击的时候提示
				console.log(node);
				//根据node.text查询是否该tab存在
				var tab = $("#mytab").tabs('getTab', node.text);
				if (tab) {
					$("#mytab").tabs('select', node.text);//选择已存在的选项可
				} else {
					$("#mytab").tabs('add', {
						title : node.text,
						href : node.attributes.url,
						closable : true
					});
				}

			}
		});
	</script>
</body>
</html>