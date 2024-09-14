<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WebApplication2.Cart" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Your Cart</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .cart-container {
            margin: 20px;
        }
        .cart-item {
            border-bottom: 1px solid #ddd;
            padding: 10px 0;
        }
        .cart-item h3 {
            margin: 0;
            font-size: 18px;
        }
        .cart-item p {
            margin: 5px 0;
            color: #555;
        }
        .cart-total {
            margin-top: 20px;
            font-size: 20px;
            font-weight: bold;
        }
        .cart-checkout {
            margin-top: 20px;
        }
        .cart-checkout button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
            border-radius: 5px;
        }
        .cart-checkout button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="cart-container">
            <h1>Your Cart</h1>
            <asp:Literal ID="CartItemsLiteral" runat="server"></asp:Literal>
            <asp:Literal ID="TotalAmountLiteral" runat="server"></asp:Literal>
            <div class="cart-checkout">
                <asp:Button ID="ProceedToPaymentButton" runat="server" Text="Proceed to Payment" OnClick="ProceedToPaymentButton_Click" />
                <asp:Button ID="ContinueShoppingButton" runat="server" Text="Continue Shopping" PostBackUrl="~/Products.aspx" />
            </div>
        </div>
    </form>
</body>
</html>
