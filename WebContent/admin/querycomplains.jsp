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
			<strong class="icon-search">意见反馈信息查询</strong>
		</div>
		<table class="table table-hover text-center">

			<thead>
				<tr>
					<th>用户</th>
					<th>标题</th>
					<th>内容</th>
					<th>发布日期</th>
					<th>状态</th>
					<th>管理员回复</th>
				</tr>
			</thead>
			<c:forEach items="${complainsList}" var="complains">
				<tr>
					<td>${complains.username}</td>
					<td>${complains.title}</td>
					<td>${complains.contents}</td>
					<td>${complains.addtime}</td>
					<td>${complains.status}</td>
					<td>${complains.reps}</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="6"><div class="pagelist">
						<form action="complains/queryComplainsByCond.action" name="myform" method="post">
							<label>查询条件: <select name="cond" class="select" style="width: 150px; line-height: 17px; display: inline-block">
									<option value="usersid">按用户查询</option>
									<option value="title">按标题查询</option>
									<option value="contents">按内容查询</option>
									<option value="addtime">按发布日期查询</option>
									<option value="status">按状态查询</option>
									<option value="reps">按管理员回复查询</option>
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

