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
<script type="text/javascript" src="js/complains.js" charset="utf-8"></script>
<script type="text/javascript" src="js/selimage.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>
<body>
	<div class="panel admin-panel" style="width: 55%; margin: 0 auto;">
		<div class="panel-head" id="add">
			<strong><span class="icon-edit"></span>回复意见反馈信息</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x" action="complains/updateComplains.action" name="myform">

				<div class="form-group">
					<div class="label">
						<label>内容</label>
					</div>
					<div class="field">
						<input type="text" name="contents" class="input w150" id="contents" value="${complains.contents}" readonly="readonly" />
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>管理员回复</label>
					</div>
					<div class="field">
						<textarea name="reps" class="input w150" id="reps" style="width: 99%; height: 140px">${complains.reps}</textarea>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label></label>
					</div>
					<div class="field">
						<input type="hidden" name="complainsid" id="complainsid" value="${complains.complainsid}" /><input type="hidden" name="usersid"
							id="usersid" value="${complains.usersid}" /> <input type="hidden" name="title" id="title" value="${complains.title}" /> <input
							type="hidden" name="addtime" id="addtime" value="${complains.addtime}" /> <input type="hidden" name="status" id="status" value="已回复" />

						<button class="button bg-main icon-check-square-o" type="submit">提交保存</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>




