<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication2.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>About Us - Grocery Store</title>
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
            text-align: center;
        }

        .content h1 {
            font-size: 36px;
            color: #333;
            margin-bottom: 20px;
        }

        .content p {
            font-size: 18px;
            color: #666;
            margin-bottom: 30px;
            line-height: 1.6;
        }

        .content img {
            max-width: 80%;
            height: auto;
            margin-bottom: 30px;
            border-radius: 8px;
        }

        .team-section {
            margin-top: 50px;
        }

        .team-section h2 {
            font-size: 28px;
            color: #333;
            margin-bottom: 30px;
        }

        .team-members {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .team-member {
            text-align: center;
            margin: 20px;
            flex: 1 0 30%;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border-radius: 8px;
            background-color: white;
        }

        .team-member img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            margin-bottom: 15px;
        }

        .team-member h3 {
            font-size: 22px;
            color: #007bff;
            margin-bottom: 10px;
        }

        .team-member p {
            font-size: 16px;
            color: #666;
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
    <div class="content">
        <h1>About Us</h1>
        <p>Welcome to SuperMAT , your number one source for all grocery items. We're dedicated to providing you with the best products, focusing on quality, customer service, and uniqueness.</p>
        <p>Founded in 2024, Grocery Store has come a long way from its beginnings. When we first started out, our passion for providing high-quality organic products drove us to start our own business.</p>
        <p>We now serve customers all over the region and are thrilled to be a part of the eco-friendly wing of the grocery industry.</p>
        <img src="image/image1.jpg" alt="Our Store" />

        <div class="team-section">
            <h2>Meet Our Team</h2>
            <div class="team-members">
                <div class="team-member">
                    <img src="image/th.jpeg" alt="Yash Kushwaha" />
                    <h3>Yash Kushwaha</h3>
                    <p>Founder & CEO</p>
                </div>
                <div class="team-member">
                    <img src="image/wp7565081.png" alt="Ayush Jain" />
                    <h3>Ayush Jain </h3>
                    <p>Head of Operations</p>
                </div>
                <div class="team-member">
                    <img src="image/th_K.jpeg" alt="Shaida Choudharyn" />
                    <h3>Shaida Choudhary</h3>
                    <p>Chief Marketing Officer</p>
                </div>
             
                <div class="team-member">
                    <img src="image/th_s.jpeg" alt="Kumud yadav" />
                    <h3>Kumud yadav</h3>
                    <p>Assistance Chief Marketing Officer</p>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">
        &copy; 2024 SuperMart. All Rights Reserved.
    </div>
</body>
</html>
