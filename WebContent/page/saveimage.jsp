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
<script src="asset/js/pintuer.js"></script>
<script type="text/javascript">
	function selok() {
		opener.document.getElementById("image").value = myform.p.value;
		window.close();
	}
</script>
</head>
<body>
	<div class="panel admin-panel" style="margin: 0 auto;">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>上传图片</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x" action="upload/image.action" name="myform" method="post" enctype="multipart/form-data" name="myform">
				<c:if test="${imageFileName eq null }">
					<div class="form-group">
						<div class="label">
							<label>图片：</label>
						</div>
						<div class="field">
							<input type="file" name="image" id="image" />
						</div>
					</div>
					<div class="form-group">
						<div class="label">
							<label></label>
						</div>
						<div class="field">
							<button class="button bg-main icon-check-square-o" type="submit">上传图片</button>
						</div>
					</div>
				</c:if>
				<c:if test="${imageFileName ne null }">
					<div class="form-group">
						<div class="label">
							<label></label>
						</div>
						<div class="field">${imageFileName }</div>
					</div>
					<div class="form-group">
						<div class="label">
							<label> <input type="hidden" name="p" value="upfiles/${imageFileName }" id="p" />
							</label>
						</div>
						<div class="field">
							<button class="button bg-main icon-check-square-o" type="button" onclick="selok();">保存图片</button>
						</div>
					</div>
				</c:if>

			</form>
		</div>
	</div>
</body>
</html>