<%@ page language="java" isELIgnored="false"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form:form modelAttribute="student">
		<table align="center" bgcolor="cyan" border="1">
			
			<tr>
				<td>name</td>
				<td><form:input type="text" path="name" /></td>
			</tr>
			
			<tr>
				<td>email</td>
				<td><form:input type="text" path="email" /></td>
			</tr>
			
			<tr>
				<td>course</td>
				<td><form:input type="text" path="course" /></td>
			</tr>
			
			<tr>
				<td>fee</td>
				<td><form:input type="text" path="fee" /></td>
			</tr>
			
			<tr>
				<td><input type="submit" value="submit"></td>
				<td><input type="reset" value="cancel" /></td>
			</tr>

		</table>
	</form:form>

</body>
</html>