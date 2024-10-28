<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</head>
<body style="background-color: #f2f9fd;">
	<div class="header bg-main">
		<div class="logo margin-big-left fadein-top">
			<h1>
				<img src="images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" />校园二手交易系统
			</h1>
		</div>
		<div class="head-l">
			<a class="button button-little bg-green" href="admin/prePwd.action" target="main"><span class="icon-key"></span>修改密码</a> &nbsp;&nbsp; <a
				class="button button-little bg-red" href="admin/exit.action"><span class="icon-power-off"></span>退出登录</a>
		</div>
	</div>
	<jsp:include page="menu.jsp"></jsp:include>
	<script type="text/javascript">
		$(function() {
			$(".leftnav h2").click(function() {
				$(this).next().slideToggle(200);
				$(this).toggleClass("on");
			})
			$(".leftnav ul li a").click(function() {
				$("#a_leader_txt").text($(this).text());
				$(".leftnav ul li a").removeClass("on");
				$(this).addClass("on");
			})
		});
	</script>
	<ul class="bread">
		<li><a href="javascript:;" target="right" class="icon-home"> 首页</a></li>
		<li><a href="javascript:;" id="a_leader_txt"></a></li>
	</ul>
	<div class="admin">
		<iframe scrolling="auto" rameborder="0" src="" name="main" width="100%" height="100%"></iframe>
	</div>
</body>
</html>