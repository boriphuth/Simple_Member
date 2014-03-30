<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.css"
	rel="stylesheet" />
<link type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap-responsive.css"
	rel="stylesheet" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-2.0.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- Header -->
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<button type="button" class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="brand" href="#">Simple Member</a>
				<div class="nav-collapse collapse">
					<ul class="nav">
						<li><a href="${pageContext.request.contextPath}/member.html">All Member</a></li>
						<li class="active"><a href="${pageContext.request.contextPath}/register.html">Create Member</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>
	<br />
	<br />

	<!-- content -->
	<form class="form-horizontal" action="${pageContext.request.contextPath}/edit.html" method="post">
		<input type="hidden" value="${member.id}" name="id" />
		<fieldset>
			<legend>Edit</legend>
			<div class="control-group">
				<label class="control-label" for="id-card">Id Card</label>
				<div class="controls">
					<input type="text" value="${member.idCard}" id="id-card" name="idCard" class="span5"
						required /> <label class="help-block help-inline"></label>
				</div>
			</div>

			<div class="control-group">
				<label class="control-label" for="name">firstname</label>
				<div class="controls">
					<input type="text" id="name" value="${member.name}" name="name" class="span5" required />
					<label class="help-block help-inline"></label>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="lastname">Lastname</label>
				<div class="controls">
					<input type="text" id="lastname" value="${member.lastname}" name="lastname" class="span5"
						required /> <label class="help-block help-inline"></label>
				</div>
			</div>

			<div class="control-group">
				<label class="control-label" for="gender">Gender</label>
				<div class="controls">
					<input type="text" id="gender" value="${member.gender}" name="gender" class="span5" required />
					<label class="help-block help-inline"></label>
				</div>
			</div>

			<div class="control-group">
				<label class="control-label" for="age">Age</label>
				<div class="controls">
					<input type="number" id="age" value="${member.age}" name="age" class="span5" required />
					<label class="help-block help-inline"></label>
				</div>
			</div>

			<div class="form-actions">
				<button class="btn btn-primary" type="submit">Submit</button>
				<button class="btn" type="reset">reset</button>
			</div>
		</fieldset>
	</form>
</body>
</html>