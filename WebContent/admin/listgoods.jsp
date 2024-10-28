<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎使用后台管理系统</title>
<link rel="stylesheet" href="asset/css/pintuer.css">
<link rel="stylesheet" href="asset/css/admin.css">
<script src="asset/js/jquery.js"></script>
<script src="asset/js/pintuer.js"></script>
</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head">
			<strong class="icon-reorder">商品信息列表</strong>
		</div>
		<table class="table table-hover text-center">

			<thead>
				<tr>
					<th>发布人</th>
					<th>商品名称</th>
					<th>商品类型</th>
					<th>销售单价</th>
					<th>发布日期</th>
					<th>库存数</th>
					<th>点击数</th>
					<th>销售数量</th>
					<th>状态</th>
					<th>操作</th>
				</tr>
			</thead>
			<c:forEach items="${goodsList}" var="goods">
				<tr>
					<td>${goods.username}</td>
					<td>${goods.goodsname}</td>
					<td>${goods.catename}</td>
					<td>${goods.price}</td>
					<td>${goods.addtime}</td>
					<td>${goods.storage}</td>
					<td>${goods.hits}</td>
					<td>${goods.sellnum}</td>
					<td>${goods.status}</td>
					<td><a href="goods/status.action?id=${goods.goodsid}">${goods.status == "下架"?"上架":"下架"}</a>&nbsp;&nbsp;<a
						href="goods/deleteGoods.action?id=${goods.goodsid}" onclick="{if(confirm('确定要删除吗?')){return true;}return false;}"><span
							class="icon-trash-o"></span>删除</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="8"><div class="pagelist">${html }</div></td>
			</tr>
		</table>
	</div>
</body>
</html>

