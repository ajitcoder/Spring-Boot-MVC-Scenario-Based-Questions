<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.ajit.model.Movie" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie List</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f6f9;
        margin: 20px;
    }
    h2 {
        text-align: center;
        color: #333;
    }
    table {
        width: 80%;
        margin: auto;
        border-collapse: collapse;
        box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        background: #fff;
    }
    th, td {
        padding: 12px 15px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #007BFF;
        color: white;
        text-transform: uppercase;
        letter-spacing: 0.05em;
    }
    tr:hover {
        background-color: #f1f1f1;
    }
    .top-rated {
        color: green;
        font-weight: bold;
    }
    .normal {
        color: gray;
    }
</style>
</head>
<body>

<h2>Trending Movies</h2>

<table>
    <tr>
        <th>Title</th>
        <th>Genre</th>
        <th>Rating</th>
        <th>Language</th>
        <th>Status</th>
    </tr>
    <%
        List<Movie> movies = (List<Movie>) request.getAttribute("movies");
        for(Movie movie : movies){
    %>
    <tr>
        <td><%= movie.getTitle() %></td>
        <td><%= movie.getGenre() %></td>
        <td><%= movie.getRating() %></td>
        <td><%= movie.getLanguage() %></td>
         <td class="<%= movie.getRating() >= 8 ? "top-rated" : "normal" %>">
            <%= movie.getRating() >= 8 ? "Top Rated" : "Normal" %>
        </td>
        
        
        
       
        
    </tr>
    <%
        }
    %>
</table>

</body>
</html>