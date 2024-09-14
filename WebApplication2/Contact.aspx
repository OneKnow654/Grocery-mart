<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication2.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #007bff;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin-right: 20px;
            font-size: 16px;
        }

        .navbar a:hover {
            text-decoration: underline;
        }

        .content {
            padding: 40px 20px;
            max-width: 1200px;
            margin: 0 auto;
        }

        .content h1 {
            font-size: 36px;
            color: #333;
            margin-bottom: 20px;
            text-align: center;
        }

        .content p {
            font-size: 18px;
            color: #666;
            margin-bottom: 30px;
            line-height: 1.6;
            text-align: center;
        }

        .contact-form {
            background-color: white;
            padding: 30px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            max-width: 600px;
            margin: 0 auto;
        }

        .contact-form label {
            font-size: 16px;
            color: #333;
            display: block;
            margin-bottom: 8px;
        }

        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        .contact-form textarea {
            height: 150px;
            resize: none;
        }

        .contact-form button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
        }

        .contact-form button:hover {
            background-color: #0056b3;
        }

        .store-info {
            margin-top: 40px;
            text-align: center;
        }

        .store-info h2 {
            font-size: 28px;
            color: #333;
            margin-bottom: 20px;
        }

        .store-info p {
            font-size: 18px;
            color: #666;
            margin-bottom: 10px;
        }

        .store-info img {
            max-width: 100%;
            height: auto;
            margin-top: 20px;
            border-radius: 8px;
        }

        .footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>
     <div class="navbar">
        <div class="nav-links">
            <a href="Home.aspx">Home</a>
            <a href="Products.aspx">Products</a>
            <a href="About.aspx">About Us</a>
            <a href="Contact.aspx">Contact Us</a>
        </div>
    </div>
    <form id="form1" runat="server">
     <div class="content">
        <h1>Contact Us</h1>
        <p>If you have any questions, comments, or concerns, feel free to reach out to us. We're here to help!</p>
        <div class="contact-form">
            <h2>Send Us a Message</h2>
            <asp:Label ID="NameLabel" runat="server" Text="Your Name"></asp:Label>
            <asp:TextBox ID="NameTextBox" runat="server" placeholder="Your Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="NameRequiredValidator" runat="server" ControlToValidate="NameTextBox" ErrorMessage="Name is required." ForeColor="Red" />

            <asp:Label ID="EmailLabel" runat="server" Text="Your Email"></asp:Label>
            <asp:TextBox ID="EmailTextBox" runat="server" placeholder="Your Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="EmailRequiredValidator" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Email is required." ForeColor="Red" />
            <asp:RegularExpressionValidator ID="EmailRegexValidator" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Invalid email address." ForeColor="Red" ValidationExpression="\w+([-+.'’]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />

            <asp:Label ID="MessageLabel" runat="server" Text="Your Message"></asp:Label>
            <asp:TextBox ID="MessageTextBox" runat="server" TextMode="MultiLine" placeholder="Your Message"></asp:TextBox>
            <asp:RequiredFieldValidator ID="MessageRequiredValidator" runat="server" ControlToValidate="MessageTextBox" ErrorMessage="Message is required." ForeColor="Red" />

            <asp:Button ID="SubmitButton" runat="server" Text="Send Message" OnClick="Submit_Click" />
        </div>
  
     <div class="store-info">
            <h2>Our Store</h2>
            <p>123 Grocery Lane, Freshville, FV 45678</p>
            <p>Email: support@grocerystore.com</p>
            <p>Phone: (123) 456-7890</p>
            <img src="image/store-map.jpg" alt="Store Location Map" />
        </div>
    </div>
          </form>
     <div class="footer">
        &copy; 2024 SuperMart. All Rights Reserved.
    </div>
</body>
</html>
