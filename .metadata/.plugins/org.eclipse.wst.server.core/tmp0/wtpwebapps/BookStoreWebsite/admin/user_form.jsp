<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Create New User - Evergeen Book Administrative</title>
</head>
<body>
	<jsp:include page="header.jsp" />


	<div align="center">
		<c:if test="${user != null}">
			<h2>Eidt User</h2>
		</c:if>
		<c:if test="${user == null }">
			<h2>Create New User</h2>
		</c:if>

	</div>

	<div align="center">
		<c:if test="${user != null}">
			<form action="update_user" method="post" onsubmit="return validateFormInput();">
			<input type="hidden" name="userId" value="${user.userId}" />
		</c:if>
		<c:if test="${user == null}">
			<form action="create_user" method="post" onsubmit="return validateFormInput();">
		</c:if>
		
		

			<table border="1">
				<tr>
					<td>Full Name:</td>
					<td><input type="text" name="fullName" id="fullname"
						placeholder="Nguyen van A" value="${user.fullName}" /></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="text" name="email" id="email"
						placeholder="a@gmail.com" value="${user.email}" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password" id="password"  value="${user.password}"/></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Submit" /> <input
						type="button" value="Cancel"
						onclick="window.history.go(-1); return false;" /></td>
				</tr>
			</table>
		</form>
	</div>

	<jsp:include page="footer.jsp" />
</body>
<script type="text/javascript">
	function validateFormInput() {
		let fullname = document.getElementById("fullname");
		let email = document.getElementById("email");
		let password = document.getElementById("password");
		if (fullname.value.length == 0) {
			alert("Please enter FullName!");
			fullname.focus();
			return false;
		}
		if (email.value.length == 0) {
			alert("Please enter Email!");
			fullname.focus();
			return false;
		}
		if (password.value.length == 0) {
			alert("Please enter Password!");
			fullname.focus();
			return false;
		}
		return true;
	}
</script>
</html>
