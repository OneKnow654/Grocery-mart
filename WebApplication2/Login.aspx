<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="css/login.css" />
     <style>
        body {
            background-image: linear-gradient(135deg, #e9defa 10%, #fbfcdb 100%);;
           
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Login</h2>
            <div class="form-group">
                <label for="TextBox1">Email:</label>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TextBox2">Password:</label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </div>
            <div class="button-group">
                <asp:Button ID="Button1" runat="server" Text="Login" CssClass="login-button" OnClick="Button1_Click" />
            </div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <div class="links">
            <asp:HyperLink ID="HyperLink1" class="b1"  runat="server" NavigateUrl="~/REGISTRATION.aspx" Text="SignUP"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" class="b2" runat="server" NavigateUrl="~/Landing.aspx" Text="Back"></asp:HyperLink>
        </div>
        </div>

    </form>
     <div class="footer">
        &copy; 2024 SuperMart. All Rights Reserved.
    </div>
</body>
</html>
