<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ajit.model.BankAccount" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account Summary</title>
<style>
    body {
        font-family: "Segoe UI", Arial, sans-serif;
        background: linear-gradient(135deg, #74ebd5, #ACB6E5);
        margin: 0;
        padding: 40px;
    }
    .summary {
        width: 50%;
        margin: auto;
        padding: 30px;
        background: #fff;
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        animation: fadeIn 1s ease-in-out;
    }
    h2 {
        text-align: center;
        color: #007BFF;
        margin-bottom: 25px;
        font-size: 26px;
        text-transform: uppercase;
        letter-spacing: 1px;
    }
    .row {
        display: flex;
        justify-content: space-between;
        padding: 12px 0;
        border-bottom: 1px solid #eee;
        transition: background 0.3s;
    }
    .row:hover {
        background: #f9f9f9;
    }
    .label {
        font-weight: bold;
        color: #333;
        display: flex;
        align-items: center;
    }
    .label::before {
        content: "✔ ";
        color: #007BFF;
        font-size: 14px;
        margin-right: 5px;
    }
    .value {
        color: #555;
        font-weight: 500;
    }
    .balance {
        font-size: 18px;
        font-weight: bold;
        color: #2e7d32;
    }
    .low-balance {
        color: #d32f2f;
        font-weight: bold;
        text-align: center;
        margin-top: 20px;
        font-size: 16px;
    }
    @keyframes fadeIn {
        from {opacity: 0; transform: translateY(20px);}
        to {opacity: 1; transform: translateY(0);}
    }
</style>
</head>
<body>
<div class="summary">
    <h2>Account Summary</h2>
    <%
        BankAccount account = (BankAccount) request.getAttribute("account");
        java.text.NumberFormat formatter = java.text.NumberFormat.getInstance(new java.util.Locale("en", "IN"));
        String formattedBalance = formatter.format(account.getBalance());
    %>
    <div class="row">
        <span class="label">Account No :</span>
        <span class="value"><%= account.getAccountNumber() %></span>
    </div>
    <div class="row">
        <span class="label">Name :</span>
        <span class="value"><%= account.getHolderName() %></span>
    </div>
    <div class="row">
        <span class="label">Type :</span>
        <span class="value"><%= account.getAccountType() %></span>
    </div>
    <div class="row">
        <span class="label">Branch :</span>
        <span class="value"><%= account.getBranch() %></span>
    </div>
    <div class="row">
        <span class="label">Balance :</span>
        <span class="balance">₹<%= formattedBalance %></span>
    </div>

    <% if(account.getBalance() < 1000) { %>
        <p class="low-balance">⚠ Low Balance Warning</p>
    <% } %>
</div>
</body>
</html>