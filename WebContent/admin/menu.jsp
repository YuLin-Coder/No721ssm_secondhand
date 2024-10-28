<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div class="leftnav">
	<div class="leftnav-title">
		<strong><span class="icon-list"></span>管理菜单</strong>
	</div>

	<h2>
		<span class="icon-user"></span>管理员信息管理
	</h2>
	<ul style="display: block">
		<li><a href="admin/createAdmin.action" target="main"><span class="icon-pencil-square-o"></span>新增管理员信息</a></li>
		<li><a href="admin/getAllAdmin.action" target="main"><span class="icon-reorder"></span>管理员信息列表</a></li>
		<li><a href="admin/queryAdminByCond.action" target="main"><span class="icon-search"></span>查询管理员信息</a></li>
	</ul>

	<h2>
		<span class="icon-user"></span>用户信息管理
	</h2>
	<ul>
		<li><a href="users/getAllUsers.action" target="main"><span class="icon-reorder"></span>网站用户信息列表</a></li>
		<li><a href="users/queryUsersByCond.action" target="main"><span class="icon-search"></span>查询网站用户信息</a></li>
	</ul>

	<h2>
		<span class="icon-user"></span>新闻公告管理
	</h2>
	<ul>
		<li><a href="article/createArticle.action" target="main"><span class="icon-pencil-square-o"></span>新增新闻公告信息</a></li>
		<li><a href="article/getAllArticle.action" target="main"><span class="icon-reorder"></span>新闻公告信息列表</a></li>
		<li><a href="article/queryArticleByCond.action" target="main"><span class="icon-search"></span>查询新闻公告信息</a></li>
	</ul>

	<h2>
		<span class="icon-user"></span>商品类别管理
	</h2>
	<ul>
		<li><a href="cate/createCate.action" target="main"><span class="icon-pencil-square-o"></span>新增商品类别</a></li>
		<li><a href="cate/getAllCate.action" target="main"><span class="icon-reorder"></span>商品类别列表</a></li>
		<li><a href="cate/queryCateByCond.action" target="main"><span class="icon-search"></span>查询商品类别</a></li>
	</ul>

	<h2>
		<span class="icon-user"></span>商品信息管理
	</h2>
	<ul>
		<li><a href="goods/getAllGoods.action" target="main"><span class="icon-reorder"></span>商品信息列表</a></li>
		<li><a href="goods/queryGoodsByCond.action" target="main"><span class="icon-search"></span>查询商品信息</a></li>
	</ul>
	<h2>
		<span class="icon-user"></span>订单信息管理
	</h2>
	<ul>
		<li><a href="orders/getAllOrders.action" target="main"><span class="icon-reorder"></span>订单信息列表</a></li>
		<li><a href="orders/queryOrdersByCond.action" target="main"><span class="icon-search"></span>查询订单信息</a></li>
	</ul>

	<h2>
		<span class="icon-user"></span>评价信息管理
	</h2>
	<ul>
		<li><a href="topic/getAllTopic.action" target="main"><span class="icon-reorder"></span>评价信息列表</a></li>
		<li><a href="topic/queryTopicByCond.action" target="main"><span class="icon-search"></span>查询评价信息</a></li>
	</ul>

	<h2>
		<span class="icon-user"></span>意见反馈管理
	</h2>
	<ul>
		<li><a href="complains/getAllComplains.action" target="main"><span class="icon-reorder"></span>意见反馈列表</a></li>
		<li><a href="complains/queryComplainsByCond.action" target="main"><span class="icon-search"></span>查询意见反馈</a></li>
	</ul>

</div>



