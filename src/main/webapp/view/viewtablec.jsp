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
	<th>name</th>
	<th>address</th>
		<th>email</th>
		<th>mobile</th>
	</tr>
	<%
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3307/batch0001","root","root");
	Statement s=c.createStatement();
	ResultSet rs=s.executeQuery("select*from contact");
	while(rs.next()){
		String name=rs.getString(1);
		String address=rs.getString(2);
		String email=rs.getString(3);
		int mobile=rs.getInt(4);
		out.println("<tr><td>"+name+"</td><td>" + address + "</td><td>" +email+ "</td><td>" + mobile +  "</td></tr>");
	}
	%>
	
	</table>
	
	<a href="logincpage">Back To Contact</a>
	
	
</body>
</html>