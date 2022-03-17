<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/ccproject?autoReconnect=true&useSSL=false";
String username="root";
String password = "arpan123";
String sql ="select * from empdetail";

try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RECORDS</title>
</head>
<body>
<div align="center">
<h1>Data</h1>
<table border="1">
<tr>
<td>Employee ID</td>
<td>First name</td>
<td>Last name</td>
<td>DOB</td>
<td>Contact NO.</td>

</tr>
<%
try{
connection = DriverManager.getConnection(url, username, password);
statement=connection.createStatement();
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("eid") %></td>
<td><%=resultSet.getString("fname") %></td>
<td><%=resultSet.getString("lname") %></td>
<td><%=resultSet.getString("dob") %></td>
<td><%=resultSet.getString("contact") %></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 

	<form action="disp.jsp" method="post">
		 Enter Employee ID : <input type="text" name="eid"><br>
		 <input type="submit" value="Find Details">
	</form>
	</div>
</body>
</html>