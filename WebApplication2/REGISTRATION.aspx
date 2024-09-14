<%@ Page Language="C#" AutoEventWireup="true" CodeFile="REGISTRATION.aspx.cs" Inherits="WebApplication2.REGISTRATION" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Registration</title>
    <link rel="stylesheet" href="./css/Registration.css"/>
    <style>
        body {
            background-image:linear-gradient(135deg,#fff3b0 10%,#CA26ff 100%);
           
        }
    </style>
</head>
<body >
    
    <form id="form1" runat="server">
        <div class="form-container" style="position:relative;left:400px;">
            <h2>Registration Page</h2>

            <div class="form-group">
                <label for="TextBox1">First Name:</label>
                <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="First name is empty" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Only characters are allowed" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
            </div>

            <div class="form-group">
                <label for="TextBox2">Last Name:</label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Last name is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Only characters are allowed" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
            </div>

            <div class="form-group">
                <label for="TextBox3">Email:</label>
                <asp:TextBox ID="TextBox3" runat="server"  TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Email ID is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="DropDownList1">Gender:</label>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="228px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Gender is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="TextBox4">Address:</label>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" ErrorMessage="Address is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="TextBox5">Phone No:</label>
                <asp:TextBox ID="TextBox5" runat="server" Height="28px" Width="225px" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Phone no is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Invalid phone number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </div>

            <div class="form-group">
                <label for="TextBox6">Password:</label>
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="Password is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="TextBox7">Confirm Password:</label>
                <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="Confirm password is empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="Password doesn't match" ForeColor="Red"></asp:CompareValidator>
            </div>

            <div class="form-group button-group">
                <asp:Button ID="Button1" runat="server" Height="40px" Text="Register" Width="131px" Font-Bold="True" Font-Size="Large" OnClick="Button1_Click" CssClass="register-button" />
            </div>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" class="validation-summary" />
            
            <div class="links">
            <asp:HyperLink ID="HyperLink1"  class="b1" runat="server" NavigateUrl="~/Login.aspx" Text="Login"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" class="b2" runat="server" NavigateUrl="~/Landing.aspx" Text="Back"></asp:HyperLink>
        </div>
        </div>
    </form>
     <!-- <div class="footer">
        &copy; 2024 Grocery Store. All Rights Reserved.
    </div> -->
</body>
</html>
