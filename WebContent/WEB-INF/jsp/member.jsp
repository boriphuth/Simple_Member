<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<link type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet" />
<link type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css"
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
						<li class="active"><a href="member.html">All Member</a></li>
						<li><a href="register.html">Create Member</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>
	<br />
	<br />

	<!-- content -->
	<table class="table">
		<thead>
			<tr>
				<th scope="col">id</th>
				<th scope="col">id card</th>
				<th scope="col">Name</th>
				<th scope="col">Lastname</th>
				<th scope="col">Gender</th>
				<th scope="col">Age</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="member" items="${memberList1}">
				<tr>
					<td>${member.id}</td>
					<td>${member.idCard}</td>
					<td>${member.name}</td>
					<td>${member.lastname}</td>
					<td>${member.gender}</td>
					<td>${member.age}</td>
					<td><a href="javascript:void(0);"
						class="btn btn-primary btn-edit" data-id="${member.id}">edit</a> <a
						href="javascript:void(0);" class="btn btn-danger btn-delete"
						data-id="${member.id}">delete</a></td>
				</tr>
			</c:forEach>


		</tbody>
	</table>

	<script type="text/javascript">
		$(function() {
			$(".btn-delete").click(function() {
				//alert($(this).data("id"));
				var memberId = $(this).data("id");
				$(this).parent().parent().fadeOut('slow');
				$.ajax({
					url : "delete.html",
					data : {
						id : memberId
					},
					type : "POST",
					success : function(data) {
						if (data == "success") {
							//add effect
						} else {
							//add effect
						}
					}
				});
			});
		});
	</script>

</body>
</html>