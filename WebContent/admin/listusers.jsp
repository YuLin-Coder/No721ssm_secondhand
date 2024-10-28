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
			<strong class="icon-reorder">网站用户信息列表</strong>
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
					<th>操作</th>
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
					<td><a href="users/status.action?id=${users.usersid}">${users.status == "解锁"?"锁定":"解锁"}</a>&nbsp;&nbsp;<a
						href="users/deleteUsers.action?id=${users.usersid}" onclick="{if(confirm('确定要删除吗?')){return true;}return false;}"><span
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

