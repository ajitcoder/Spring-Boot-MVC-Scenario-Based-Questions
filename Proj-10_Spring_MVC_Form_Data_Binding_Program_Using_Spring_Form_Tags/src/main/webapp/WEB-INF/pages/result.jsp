<html>
<head>
    <title>Result Page</title>
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background: linear-gradient(135deg, #ff0000 0%, #ffff00 100%);
            margin: 0;
            padding: 0;
        }
        .result-container {
            width: 450px;
            margin: 80px auto;
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            animation: fadeIn 1s ease-in-out;
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }
        p {
            font-size: 16px;
            color: #444;
            margin: 12px 0;
            padding: 10px;
            background: #f9f9f9;
            border-left: 4px solid #ff0000;
            border-radius: 6px;
        }
        @keyframes fadeIn {
            from {opacity: 0; transform: translateY(20px);}
            to {opacity: 1; transform: translateY(0);}
        }
    </style>
</head>
<body>
    <div class="result-container">
        <h2>Submitted Data</h2>
        <p>Username: ${user.username}</p>
        <p>Password: ${user.password}</p>
        <p>About: ${user.about}</p>
    </div>
</body>
</html>