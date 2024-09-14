<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="thank.aspx.cs" Inherits="WebApplication2.thank" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    <title>Thank You</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }

        .thank-you-box {
            background-color: #fff;
            padding: 40px 60px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
            max-width: 600px;
        }

        .thank-you-box h1 {
            font-size: 36px;
            color: #4CAF50;
            margin-bottom: 20px;
        }

        .thank-you-box p {
            font-size: 18px;
            color: #555;
            margin-bottom: 40px;
        }

        .thank-you-box .home-button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
            display: inline-block;
        }

        .thank-you-box .home-button:hover {
            background-color: #0056b3;
        }
    </style>
        <style>
        body {
            background-image: linear-gradient(135deg, #3C8CE7 10%, #00EAFF 100%);
           
        }
    </style>
</head>
<body>

    <div class="thank-you-box">
        <h1>Thank You!</h1>
        <p>Your order has been placed successfully. We appreciate your business!</p>
        <a href="Home.aspx" class="home-button">Back to Home</a>
        <a href="Feedback.aspx" class="home-button">FeedBack</a>
    </div>

</body>
</html>

