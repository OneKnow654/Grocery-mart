<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="WebApplication2.Feedback" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Feedback Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .feedback-form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: auto;
        }
        .feedback-form h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }
        .feedback-form label {
            display: block;
            margin-bottom: 8px;
        }
        .feedback-form input, .feedback-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 4px;
            border: 1px solid #ddd;
        }
        .feedback-form button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }
        .feedback-form button:hover {
            background-color: #0056b3;
        }
    </style>
    <style>
        body {
            background-image: linear-gradient(135deg, #81FFEF 10%, #F067B4 100%);
           
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="feedback-form">
            <h1>Feedback Form</h1>
            <asp:Label ID="lblName" runat="server" Text="Name:" AssociatedControlID="txtName"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" CssClass="input" />

            <asp:Label ID="lblEmail" runat="server" Text="Email:" AssociatedControlID="txtEmail"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="input" />

            <asp:Label ID="lblFeedback" runat="server" Text="Feedback:" AssociatedControlID="txtFeedback"></asp:Label>
            <asp:TextBox ID="txtFeedback" runat="server" TextMode="MultiLine" Rows="5" CssClass="input" />

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>
