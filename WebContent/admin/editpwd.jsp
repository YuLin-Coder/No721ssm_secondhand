<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
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
	<div class="panel admin-panel" style="width: 55%; margin: 0 auto;">
		<div class="panel-head">
			<strong><span class="icon-key"></span> 修改密码</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x" action="admin/editpwd.action">
				<div class="form-group">
					<div class="label">
						<label for="sitename">帐号：</label>
					</div>
					<div class="field">
						<label style="line-height: 33px;"> <%=session.getAttribute("adminname")%>
						</label>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label for="sitename">原始密码：</label>
					</div>
					<div class="field">
						<input type="password" class="input w150" id="password" name="password" placeholder="请输入原始密码" data-validate="required:请输入原始密码" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label for="sitename">新密码：</label>
					</div>
					<div class="field">
						<input type="password" class="input w150" id="newpassword" name="newpassword" placeholder="请输入新密码" data-validate="required:请输入新密码,length#>=6:新密码不能小于6位" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label for="sitename">确认新密码：</label>
					</div>
					<div class="field">
						<input type="password" class="input w150" id="repassword" name="repassword" placeholder="请再次输入新密码" data-validate="required:请再次输入新密码,repeat#newpassword:两次输入的密码不一致" />
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label></label>
					</div>
					<div class="field">
						<button class="button bg-main icon-check-square-o" type="submit">提交</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>