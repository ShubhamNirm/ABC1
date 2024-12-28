<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<tr>
	<th>ID</th>
	<th>Name</th>
	</tr>
	<%
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3307/batch0001","root","root");
	Statement s=c.createStatement();
	ResultSet rs=s.executeQuery("select*from student");
	while(rs.next()){
		int id=rs.getInt(1);
		String name=rs.getString(2);
		out.println("<tr><td>"+id+"</td><td>" + name + "</td></tr>");
	}
	%>
	
	</table>
	
	<a href="loginpage">Back To Login</a>
	
	
</body>
</html>