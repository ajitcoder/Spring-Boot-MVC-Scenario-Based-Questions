<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.List, com.ajit.model.Course"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Course List</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: #f4f6f9;
	margin: 40px;
}

h1 {
	text-align: center;
	color: #2c3e50;
}

table {
	width: 80%;
	margin: 20px auto;
	border-collapse: collapse;
	background: #fff;
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

th, td {
	padding: 12px 15px;
	text-align: center;
	border-bottom: 1px solid #ddd;
}

th {
	background: #2c3e50;
	color: #fff;
}

tr:hover {
	background: #f1f1f1;
}
</style>
</head>
<body>
	<h1>Available Courses</h1>
	<table>
		<tr>
			<th>ID</th>
			<th>Course Name</th>
			<th>Trainer</th>
			<th>Duration</th>
			<th>Fee</th>
		</tr>
		<%
		List<Course> courses = (List<Course>) request.getAttribute("courses");
		if (courses != null) {
			for (Course c : courses) {
		%>
		<tr>
			<td><%=c.getCourseId()%></td>
			<td><%=c.getCourseName()%></td>
			<td><%=c.getInstructor()%></td>
			<td><%=c.getDuration()%></td>
			<td><%=c.getPrice()%></td>
		</tr>
		<%
		}
		} else {
		%>
		<tr>
			<td colspan="5">No courses available</td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>