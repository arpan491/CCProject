<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%
String id = request.getParameter("eid");

String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/ccproject?autoReconnect=true&useSSL=false";
String username="root";
String password = "arpan123";
String sql ="select * from empsalary where eid=?";

try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
PreparedStatement statement = null;
ResultSet resultSet = null;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Salary Records</title>
</head>
<body>
<div align="center">
<h1>Data present in Database</h1>
<table border="1">
<tr>
<td>Employee ID</td>
<td>Job Role</td>
<td>Monthly Salary</td>
<td>Yearly Bonus</td>


</tr>
<%
try{
connection = DriverManager.getConnection(url, username, password);
statement= connection.prepareStatement(sql);
statement.setString(1,id);
resultSet = statement.executeQuery();
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("eid") %></td>
<td><%=resultSet.getString("jobrole") %></td>
<td><%=resultSet.getInt("salary") %></td>
<td><%=resultSet.getInt("bonus") %></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 
</div>
</body>
</html>