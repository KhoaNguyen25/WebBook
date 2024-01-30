<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>List Users - Evergeen Book Administrative</title>
</head>
<body>
	<jsp:include page="header.jsp" />

	<div align="center">
		<h2>Users Management</h2>
		<h3>
			<a href="user_form.jsp">Create New User</a>
		</h3>
		<c:if test="${message != null}">
			<h4>
				<i>${message}</i>
			</h4>
		</c:if>

	</div>

	<div align="center">
		<table border="1" width="60%">
			<tr>
				<th>Index</th>
				<th>Id</th>
				<th>Email</th>
				<th>Full Name</th>
				<th>Actions</th>
			</tr>


			<c:forEach var="user" items="${listUser}" varStatus="status">
				<tr>
					<td>${status.index + 1}</td>
					<td>${user.userId}</td>
					<td>${user.email}</td>
					<td>${user.fullName}</td>
					<td><a href="edit_user?id=${user.userId}">Edit</a> &nbsp; <a
						href="javascript:confirmDelete(${user.userId})">Delete</a></td>
				</tr>
			</c:forEach>

		</table>
	</div>

	<jsp:include page="footer.jsp" />
	<script type="text/javascript">
		function confirmDelete(userId) {

			if (confirm("Are you sure you want to delete the user width ID "
					+ userId + " ?")) {
				//if (userId == 1) {
					//alert("This is Account User default not delete");
			//	} else {
					window.location = "delete_user?id=" + userId;
				//}

			}
		}
	</script>
</body>
</html>
