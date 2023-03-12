<%@page import="java.io.PrintWriter"%>
<%@page import="com.dao.AdminD1"%>
<%@page import="com.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String adminEmail= request.getParameter("admin-email");
	String adminPass= request.getParameter("admin-pass");
	
	Admin admin= new Admin(adminEmail,adminPass);

	AdminD1 adminDao = new AdminD1();
	adminDao.saveAdmin(admin);
	
	PrintWriter pw = response.getWriter();
	pw.println("Saved");
	
	response.setHeader("Refresh", "3;url=admin-login.html");
%>


</body>
</html>