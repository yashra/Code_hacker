<%@page import="com.cg.bean.PnbBank"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display</title>
<!-- Bootstrap core CSS -->
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   
    <!-- Custom styles for this template -->
    <link href="bank.css" rel="stylesheet">
</head>
<body>
<jsp:include page="/index1.jsp"></jsp:include>
<br>
<br>
<br>
<br>
<br>
   <%
		PnbBank pb=(PnbBank)session.getAttribute("user");
		if(pb==null)
		{
			session.invalidate();
	%>
	<h3 align="center">Please Login To View the profile</h3>
	<jsp:include page="/index3.jsp"></jsp:include>
	<%
		}
		else
		{
	%>	
	<div class="container">
	
	<table class="table table-striped">
	<tr><td><b>Name:</b></td><td>${user.name}</td></tr>
	<tr><td><b>Account Number:</b></td><td>${user.account_number}</td></tr>
	<tr><td><b>Gender:</b></td><td>${user.gender}</td></tr>
	<tr><td><b>Phone Number:</b></td><td>${user.phone_number}</td></tr>
	<tr><td><b>Balance:</b></td><td>${user.balance}</td></tr>
	
	</table>
	</div>
	<% } %>
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>