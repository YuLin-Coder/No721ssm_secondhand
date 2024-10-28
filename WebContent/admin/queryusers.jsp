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
			<strong class="icon-search">网站用户信息查询</strong>
		</div>
		<table class="table table-hover text-center">

			<thead>
				<tr>
					<th>用户名</th>
					<th>姓名</th>
					<th>性别</th>
					<th>出生日期</th>
					<th>联系方式</th>
					<th>用户状态</th>
					<th>注册日期</th>
				</tr>
			</thead>
			<c:forEach items="${usersList}" var="users">
				<tr>
					<td>${users.username}</td>
					<td>${users.realname}</td>
					<td>${users.sex}</td>
					<td>${users.birthday}</td>
					<td>${users.contact}</td>
					<td>${users.status}</td>
					<td>${users.regdate}</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="8"><div class="pagelist">
						<form action="users/queryUsersByCond.action" name="myform" method="post">
							<label>查询条件: <select name="cond" class="select" style="width: 150px; line-height: 17px; display: inline-block">
									<option value="username">按用户名查询</option>
									<option value="realname">按姓名查询</option>
									<option value="sex">按性别查询</option>
									<option value="birthday">按出生日期查询</option>
									<option value="contact">按联系方式查询</option>
									<option value="status">按用户状态查询</option>
									<option value="regdate">按注册日期查询</option>
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

