<%@ page language="java" isELIgnored="false"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1 style="color: red; text-align: center;">Students Details</h1>
	<br>
	<br>

	<c:choose>
		<c:when test="${!empty  listEntity}">

			<table border="1" align="center" bgcolor="cyan">
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Email</th>
					<th>Course</th>
					<th>Fee</th>
					<th>Operation</th>
				</tr>

				<c:forEach var="entity" items="${listEntity}">
					<tr>
						<td>${entity.id}</td>
						<td>${entity.name}</td>
						<td>${entity.email}</td>
						<td>${entity.course}</td>
						<td>${entity.fee}</td>
						<td><a href="edit?no=${entity.id}"><img src="images/edit.png" width="30" height=""></a>  
							<a href="delete?no=${entity.id}" onclick="return confirm('Are you sure?')"><img src="images/delete.png" width="30" height=""></a>
						</td>

					</tr>
				</c:forEach>

			</table>

		</c:when>

	</c:choose>






	<h1 style="text-align: center;">${resultMsg}</h1>

	<h1 align="center">
		<a href="add">Add Student <img src="images/add.png" width="30"
			height="30" />
		</a>
	</h1>

	<h1 align="center">
		<a href="./">home<img src="images/home.png" width="30" height="30" /></a>
	</h1>

</body>
</html>