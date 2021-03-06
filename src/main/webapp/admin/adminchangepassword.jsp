<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>优质课程网站</title>
<link href="../framework/bootstrap-3.0.3/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../css/sample.css" rel="stylesheet" type="text/css" />
<script src="../framework/bootstrap-3.0.3/js/jquery.min.js"></script>
<script src="../framework/bootstrap-3.0.3/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 头部开始阶段 -->
	<jsp:include page="Anavigation.jsp" />
	<!-- 头部 阶段结束 -->

	<!-- 主体阶段开始 -->
	<div class="col-md-12 col-sm-6">
		<div class="col-md-3 col-sm-1.5">
			<jsp:include page="adminleft.jsp"></jsp:include>
		</div>
		<div class="col-md-9 col-sm-4.5">
			<div class="col-md-12 col-sm-6">
				<div class="alert alert-success">
					<button type="button" class="close" data-dismiss="alert">×</button>
					<h4>提示!</h4>
					<strong>警告!</strong> 请注意你的个人隐私安全.
				</div>
			</div>
			<div class="col-md-12 col-sm-6">
				<div class="col-md-12 col-sm-6">
					<fieldset>
						<legend>密码修改</legend>

						<form action="changeuserpassword.action">
							<input id="uid" name="uid" value="${uid}" type="hidden" readonly />

							<div class="col-md-12 col-sm-6">
								<span class="glyphicon glyphicon-user" style="font-size: 20px;">初始密码:</span>
								<input id="password" name="password" type="password"
									class="required" />
							</div>
							<div class="col-md-12 col-sm-6">
								<span class="glyphicon glyphicon-arrow-right"
									style="font-size: 20px;">现密码:</span> <input id="password2"
									name="password2" type="password" class="required" />
							</div>
							<div class="col-md-12 col-sm-6">
								<button type="submit" class="btn btn-success">提交</button>
							</div>
						</form>
					</fieldset>
				</div>
			</div>
		</div>
	</div>
	<!-- 主体 阶段结束 -->
	<!-- 尾部 开始 -->
	<div class="col-md-12 col-sm-6"
		style="position: fixed; left: 0; bottom: 0; _position: absolute; _margin-top: expression(this.style.pixelHeight + document.documentElement.scrollTop);">
		<jsp:include page="foot.jsp"></jsp:include>
	</div>
	<!-- 尾部阶段 结束 -->
</body>
</html>