<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Result Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #f0f2f5, #d9e4f5);
            margin: 0;
            padding: 0;
        }
        h1 {
            color: #e63946;
            text-align: center;
            margin-top: 30px;
            font-size: 2.5em;
            text-shadow: 1px 1px 2px #555;
        }
        .card {
            max-width: 600px;
            margin: 40px auto;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
            padding: 20px;
            text-align: left;
        }
        .card h2 {
            color: #1d3557;
            margin-bottom: 15px;
            border-bottom: 2px solid #457b9d;
            padding-bottom: 5px;
        }
        .details {
            font-size: 1.1em;
            line-height: 1.6;
            color: #333;
        }
        .home-link {
            display: block;
            text-align: center;
            margin-top: 20px;
        }
        .home-link a {
            text-decoration: none;
            background: #457b9d;
            color: #fff;
            padding: 10px 20px;
            border-radius: 6px;
            transition: background 0.3s ease;
        }
        .home-link a:hover {
            background: #1d3557;
        }
    </style>
</head>
<body>
    <h1>Result Page</h1>

    <div class="card">
        <h2>Student Details</h2>
        <div class="details">
            <p><b>SI:</b> ${si}</p>
            <p><b>Name:</b> ${name}</p>
            <p><b>College:</b> ${collegeName}</p>
            <p><b>Address:</b> ${addrs}</p>
        </div>
    </div>

    <div class="home-link">
        <a href="./"> Home</a>
    </div>
</body>
</html>