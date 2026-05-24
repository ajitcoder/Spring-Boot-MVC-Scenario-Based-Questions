<%@ page isELIgnored="false" import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Loan Approval</title>
</head>
<body>

    <h1 style="color:blue;text-align:center">Loan Approval Page</h1>

    <b>
        You are approved for loan amount ::
        <%= new Random().nextInt(1000000) %>
    </b>

    <br><br>

    <a href="./">Home</a>

</body>
</html>
