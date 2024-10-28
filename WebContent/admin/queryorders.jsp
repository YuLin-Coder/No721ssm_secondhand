<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%><!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<title>欢迎使用网站后台管理系统</title>
<link rel="stylesheet" href="asset/css/pintuer.css">
<link rel="stylesheet" href="asset/css/admin.css">
<script src="asset/js/jquery.js"></script>
<script src="asset/js/pintuer.js"></script>
</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head">
			<strong class="icon-search">订单信息查询</strong>
		</div>
		<table class="table table-hover text-center">

			<thead>
				<tr>
					<th>订单号</th>
					<th>购买人</th>
					<th>商品</th>
					<th>单价</th>
					<th>数量</th>
					<th>总计</th>
					<th>下单日期</th>
					<th>订单状态</th>
					<th>收货人</th>
					<th>送货地址</th>
					<th>联系方式</th>
				</tr>
			</thead>
			<c:forEach items="${ordersList}" var="orders">
				<tr>
					<td>${orders.ordercode}</td>
					<td>${orders.username}</td>
					<td>${orders.goodsname}</td>
					<td>${orders.price}</td>
					<td>${orders.num}</td>
					<td>${orders.total}</td>
					<td>${orders.addtime}</td>
					<td>${orders.status}</td>
					<td>${orders.receiver}</td>
					<td>${orders.address}</td>
					<td>${orders.contact}</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="11"><div class="pagelist">
						<form action="orders/queryOrdersByCond.action" name="myform" method="post">
							<label>查询条件: <select name="cond" class="select" style="width: 150px; line-height: 17px; display: inline-block">
									<option value="ordercode">按订单号查询</option>
									<option value="usersid">按购买人查询</option>
									<option value="goodsid">按商品查询</option>
									<option value="price">按单价查询</option>
									<option value="num">按数量查询</option>
									<option value="total">按总计查询</option>
									<option value="addtime">按下单日期查询</option>
									<option value="status">按订单状态查询</option>
									<option value="receiver">按收货人查询</option>
									<option value="address">按送货地址查询</option>
									<option value="contact">按联系方式查询</option>
							</select>
							</label>&nbsp;&nbsp;&nbsp; <label>关键字: <input type="text" name="name" required style="width: 100px" /></label>&nbsp;&nbsp;&nbsp; <label><input
								type="submit" value="查询" class="button border-main " /> </label>${html }
						</form>
					</div></td>
			</tr>
		</table>
	</div>
</body>
</html>

