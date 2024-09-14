<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pay_UI.aspx.cs" Inherits="WebApplication2.Pay_UI" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Payment Gateway</title>
    <link rel="stylesheet" href="css/Styles.css"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript">
        function showPopup() {
            $("#paymentPopup").fadeIn(500).delay(2000).fadeOut(500);
        }
    </script>
    <style>
        body {
            background-image: linear-gradient(135deg, #37ecba 10%, #72afd3 100%);
           
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="payment-wrapper">
        <h2>Payment Information</h2>
        
        
        <div class="row">
            <asp:TextBox ID="TextBox1" runat="server" placeholder="First Name"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Last Name"></asp:TextBox>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is Empty" ControlToValidate="TextBox1" CssClass="error-message"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is Empty" ControlToValidate="TextBox2" CssClass="error-message"></asp:RequiredFieldValidator>

        <asp:TextBox ID="TextBox3" runat="server" placeholder="Card Number"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Card number is Empty" ControlToValidate="TextBox3" CssClass="error-message"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Card number must be 16 digits" ControlToValidate="TextBox3" ValidationExpression="[0-9]{16}" CssClass="error-message"></asp:RegularExpressionValidator>

        <div class="row">
            <asp:TextBox ID="TextBox4" runat="server" placeholder="MM/YY"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" placeholder="CVV"></asp:TextBox>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Expiry date is empty" ControlToValidate="TextBox4" CssClass="error-message"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="CVV is Empty" ControlToValidate="TextBox5" CssClass="error-message"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="CVV must be 3 digits" ControlToValidate="TextBox5" ValidationExpression="[0-9]{3}" CssClass="error-message"></asp:RegularExpressionValidator>

        <asp:TextBox ID="TextBox6" runat="server" placeholder="Billing Address" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Address is empty" ControlToValidate="TextBox6" CssClass="error-message"></asp:RequiredFieldValidator>

        <div class="payment-icons">
            <img src="image/icons8-google-pay.svg" alt="Google Pay" />
            <img src="image/icons8-paytm.svg" alt="Paytm" />
            <img src="image/icons8-amazon-pay.svg" alt="Stripe"/>
        </div>

        <asp:Button ID="Button1" runat="server" Text="Submit"  OnClick="Button2" CssClass="submit-button"/>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please fix the following errors:" CssClass="validation-summary"/>

        <div class="links">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/" Text="Previous page"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/" Text="Home page"></asp:HyperLink>
        </div>
        <div id="paymentPopup" class="popup">
    <p>Your payment is being processed. Please wait...</p>
</div>
    </form>
     <div class="footer">
        &copy; 2024  SuperMart. All Rights Reserved.
    </div>
</body>
</html>
