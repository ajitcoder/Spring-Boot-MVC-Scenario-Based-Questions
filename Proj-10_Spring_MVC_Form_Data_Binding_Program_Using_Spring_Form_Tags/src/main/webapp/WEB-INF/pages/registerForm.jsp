<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Register Form</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #74ebd5 0%, #9face6 100%);
            margin: 0;
            padding: 0;
        }
        .container {
            width: 400px;
            margin: 80px auto;
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        label {
            font-weight: bold;
            color: #555;
            display: block;
            margin-bottom: 6px;
        }
        form input[type="text"],
        form input[type="password"],
        form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 18px;
            border: 1px solid #ccc;
            border-radius: 6px;
            transition: border-color 0.3s;
        }
        form input[type="text"]:focus,
        form input[type="password"]:focus,
        form textarea:focus {
            border-color: #6a5acd;
            outline: none;
        }
        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background: #6a5acd;
            color: #fff;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s;
        }
        input[type="submit"]:hover {
            background: #483d8b;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>User Registration</h2>
        <form:form modelAttribute="user" action="register" method="post">
            <label>Username:</label>
            <form:input path="username"/>

            <label>Password:</label>
            <form:password path="password"/>

            <label>About You:</label>
            <form:textarea path="about"/>

            <input type="submit" value="Submit"/>
        </form:form>
    </div>
</body>
</html>