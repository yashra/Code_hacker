<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/index.jsp"/>
	<form action="addUser">
		<table>
			<tr><td>UserID</td><td><input type="text" name="userId"></td></tr>
			<tr><td>UserName</td><td><input type="text" name="userName"></td></tr>
			<tr><td>Password</td><td><input type="password" name="password"></td></tr>
			<tr><td>UserType</td><td><input type="text" name="userType"></td></tr>
			<tr><td><input type="submit" value="AddUser"></td><td>${Message }</td></tr>
		</table>
	</form>
</body>
</html>