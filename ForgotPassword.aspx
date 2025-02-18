﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Prototype_University_IS_.ForgotPassword" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password - Howark University</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <style type="text/css">
        body {
            font-family: 'Roboto', Arial, sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            overflow: hidden;
        }
        .container {
            max-width: 400px;
            width: 90%;
            padding: 30px;
            background-color: white;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            transition: box-shadow 0.3s ease, transform 0.3s ease;
        }
        .container:hover {
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
            transform: scale(1.02);
        }
        .header {
            text-align: center;
            margin-bottom: 30px;
        }
        .header h1 {
            color: #1abc9c;
            margin: 0;
            font-size: 2em;
            transition: color 0.3s ease;
        }
        .header h1:hover {
            color: #16a085;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-size: 1.1em;
            color: #34495e;
        }
        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group select {
            width: calc(100% - 22px); /* Adjusted to account for padding */
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1em;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
            margin-top: 5px; /* Added for better spacing */
        }
        .form-group input[type="text"]:focus,
        .form-group input[type="email"]:focus,
        .form-group select:focus {
            border-color: #1abc9c;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            outline: none;
        }
        .form-group input[type="submit"] {
            background-color: #1abc9c;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 8px;
            cursor: pointer;
            font-size: 1.2em;
            transition: background-color 0.3s ease, transform 0.3s ease;
            width: 100%; /* Full-width button for better user experience */
        }
        .form-group input[type="submit"]:hover {
            background-color: #16a085;
            transform: scale(1.05);
        }
        .form-group .error-message {
            color: #e74c3c;
            font-size: 0.9em;
            margin-top: 10px;
        }
        .footer {
            text-align: center;
            margin-top: 20px;
            color: #34495e;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="header">
                <h1>Forgot Password</h1>
            </div>
            
            <div class="form-group">
                <label for="txtUsername">Username</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="ddlMethod">OTP Retrieval Method</label>
                <asp:DropDownList ID="ddlMethod" runat="server" CssClass="form-control">
                    <asp:ListItem Value="Email">Email</asp:ListItem>
                    <asp:ListItem Value="Phone">Phone</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <asp:Button ID="btnSendOTP" runat="server" Text="Send OTP" OnClick="btnSendOTP_Click" CssClass="form-control" />
                <asp:Label ID="lblErrorMessage" runat="server" CssClass="error-message" Text=""></asp:Label>
            </div>

            <div class="footer">
                <p>&copy; 2024 Howark University</p>
            </div>
        </div>
    </form>
</body>
</html>