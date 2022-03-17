<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Salary Details of Employee</title>
</head>
<body>
<div align="center">
	<form action="sal_details" method="post">
		 Employee id : <input type="text" name="eid"><br>
		 Job Role Assigned: <input type="text" name="jobrole"><br>
		 Monthly Salary : <input type="text" name="salary"><br>
		 Yearly Bonus : <input type="text" name="bonus"><br>
		 <input type="submit" value="Add Details">
		 
	</form>
	</div>
</body>
</html>