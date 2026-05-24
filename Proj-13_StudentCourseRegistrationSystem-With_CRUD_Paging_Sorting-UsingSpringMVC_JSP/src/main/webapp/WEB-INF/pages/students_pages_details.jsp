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

	<h1 style="color: red; text-align: center;">Students Details: page ${pageData.getPageable().getPageNumber()+1}</h1>
	<br>
	<br>

	<c:choose>
		<c:when test="${!empty  pageData.getContent()}">

			<table border="1" align="center" bgcolor="cyan">
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Email</th>
					<th>Course</th>
					<th>Fee</th>
					<th>Operation</th>
				</tr>

				<c:forEach var="entity" items="${pageData.getContent()}">
					<tr>
						<td>${entity.id}</td>
						<td>${entity.name}</td>
						<td>${entity.email}</td>
						<td>${entity.course}</td>
						<td>${entity.fee}</td>
						<td><a href="edit?no=${entity.id}"><img
								src="images/edit.png" width="30" height=""></a> <a
							href="delete?no=${entity.id}"
							onclick="return confirm('Are you sure?')"><img
								src="images/delete.png" width="30" height=""></a></td>

					</tr>
				</c:forEach>

			</table>

			<b>
				<center>
					<c:if test="${!pageData.isFirst()}">
						<a href="page_details?page=0">First</a>&nbsp;&nbsp;
				</c:if>


					<c:if test="${pageData.hasNext()}">
						<a
							href="page_details?page=${pageData.getPageable().getPageNumber()+1}">Next</a>&nbsp;&nbsp;
				</c:if>

					<c:forEach var="i" begin="1" end="${pageData.getTotalPages()}"
						step="1">
				
				[<a href="page_details?page=${i-1}">${i}</a>]&nbsp;&nbsp;
				
				
				</c:forEach>



					<c:if test="${pageData.hasPrevious()}">
						<a href="page_details?page=${pageData.getPageable().getPageNumber()-1}">Previous</a>&nbsp;&nbsp;
				</c:if>


					<c:if test="${!pageData.isLast()}">
						<a href="page_details?page=${pageData.getTotalPages()-1}">Last</a>&nbsp;&nbsp;
				</c:if>


				</center>
			</b>

		</c:when>

		<c:otherwise>
			<h1 style="color: red; text-align: center;">Records not found</h1>
		</c:otherwise>

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