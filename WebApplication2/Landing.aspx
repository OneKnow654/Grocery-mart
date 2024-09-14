<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Landing.aspx.cs" Inherits="WebApplication2.Landing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Store Landing Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .header {
            background-color: #007bff;
            padding: 20px;
            text-align: center;
            color: white;
        }

        .header h1 {
            margin: 0;
            font-size: 36px;
        }

        .hero {
            background-image: url('image/store-map.jpg');
            background-size: cover;
            background-position: center;
            height: 500px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            text-align: center;
        }

        .hero h2 {
            font-size: 48px;
            margin: 0;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }

        .content {
            padding: 40px 0;
            text-align: center;
        }

        .content h3 {
            font-size: 28px;
            margin-bottom: 20px;
        }

        .content p {
            font-size: 18px;
            line-height: 1.6;
        }

        .footer {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .footer p {
            margin: 0;
        }

        .cta-button {
            background-color: #28a745;
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            margin-top: 20px;
        }

        .cta-button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
            <h1>Welcome to Our Store</h1>
        </div>
        <div class="hero">
            <h2>Your One-Stop Shop for Everything</h2>
        </div>
        <div class="container">
            <div class="content">
                <h3>Discover Our Latest Products</h3>
                <p>From fresh produce to daily essentials, find everything you need at our store. We are committed to providing the best quality products at the most competitive prices.</p>
                <a href="Login.aspx" class="cta-button">Shop Now</a>
            </div>
        </div>
        <div class="footer">
            <p>&copy; 2024 SuperMart. All Rights Reserved.</p>
        </div>
    </form>
</body>
</html>
