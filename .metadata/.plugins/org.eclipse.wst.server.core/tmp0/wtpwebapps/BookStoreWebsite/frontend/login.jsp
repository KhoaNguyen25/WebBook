<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div align="center">
		<h2>Please Login:</h2>
		<form action="">
			UserName: <input type="text" name="username" /> Password: <input
				type="password" name="password" /> <input type="submit"
				name="login" value="login" />
		</form>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>