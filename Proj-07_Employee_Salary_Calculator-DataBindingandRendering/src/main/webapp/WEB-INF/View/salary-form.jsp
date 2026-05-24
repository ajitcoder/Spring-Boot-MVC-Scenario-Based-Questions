<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="calculate-salary" method="post">
    Name: <input type="text" name="name"/><br/>
    Basic Salary: <input type="number" name="basicSalary"/><br/>
    HRA: <input type="number" name="hra"/><br/>
    Tax %: <input type="number" name="taxPercentage"/><br/>
    <input type="submit" value="Calculate"/>
</form>
</body>
</html>