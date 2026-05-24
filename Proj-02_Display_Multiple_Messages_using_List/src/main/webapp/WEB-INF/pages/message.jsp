<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import=" java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Messages</title>
</head>
<body>
   <h1 style="color: red;text-align: center;">message without iteration</h1> 
	
	<b>${messages}</b>
	
	<h1 style="color: red;text-align: center;">message with iteration</h1> 

<%
List<String> str=(List<String>) request.getAttribute("messages");

for(String message:str){
%>
<%=message%><br>
<%
}
%>
</body>
</html>
