<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication2.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Home - SuperMart Store</title>
  <link rel="stylesheet" href="css/home.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
    <div class="navbar">
        <div class="nav-links">
            <a href="Home.aspx">Home</a>
            <a href="Products.aspx">Products</a>
            <a href="About.aspx">About Us</a>
            <a href="Contact.aspx">Contact Us</a>
        </div>
         <div class="image-box">
                 <!-- <img src="image/image1.jpg" alt="Store Image"> -->
    </div>
        <button class="cart-button" onclick="location.href='Cart.aspx'">View Cart</button>
    </div>

    <form id="form1" runat="server">
        <div>
            <h1>Welcome to Our SuperMart Store, <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
            

            <div class="featured-products">
                <div class="product-item">
                    <img src="image/image (5).jpg" alt="Apple" />
                    <h3>Apple</h3>
                    <p>Price: ₹80 each</p>

                    <div class="quantity-box">
                        <label for="quantity-apple">Quantity:</label>
                        <input type="number" id="quantity-Apple" value="1" min="1" style="width: 50px;" />
                    </div>
                    <button type="button" onclick="addToCart('Apple', 80)">Add to Cart</button>
                </div>
                <div class="product-item">
                    <img src="image/carrot.jpg.crdownload.jpg" alt="Carrot" />
                    <h3>Carrot</h3>
                    <p>Price: ₹30 per kg</p>

                        <div class="quantity-box">
                        <label for="quantity-Carrot">Quantity:</label>
                        <input type="number" id="quantity-Carrot" value="1" min="1" style="width: 50px;" />
                    </div>
                    <button type="button" onclick="addToCart('Carrot', 30)">Add to Cart</button>
                </div>
                <div class="product-item">
                    <img src="image/image (3).jpg" alt="Cheese" />
                    <h3>Cheese</h3>
                    <p>Price: ₹400 per kg</p>
                    <div class="quantity-box">
                        <label for="quantity-Cheese">Quantity:</label>
                        <input type="number" id="quantity-Cheese" value="1" min="1" style="width: 50px;" />
                    </div>
                    <button type="button" onclick="addToCart('Cheese', 400)">Add to Cart</button>
                </div>
                <div class="product-item">
                    <img src="image/bread.jpg" alt="Bread" />
                    <h3>Bread</h3>
                    <p>Price: ₹25 per loaf</p>
                    <div class="quantity-box">
                        <label for="quantity-Bread">Quantity:</label>
                        <input type="number" id="quantity-Bread" value="1" min="1" style="width: 50px;" />
                    </div>
                    <button type="button" onclick="addToCart('Bread', 25)">Add to Cart</button>
                </div>
                <div class="product-item">
                    <img src="image/image (6).jpg" alt="Rice" />
                    <h3>Rice</h3>
                    <p>Price: ₹60 per kg</p>
                     <div class="quantity-box">
                        <label for="quantity-Rice">Quantity:</label>
                        <input type="number" id="quantity-Rice" value="1" min="1" style="width: 50px;" />
                    </div>
                    <button type="button" onclick="addToCart('Rice', 60)">Add to Cart</button>
                </div>
                <div class="product-item">
                    <img src="image/banana.jpeg" alt="Banana" />
                    <h3>Banana</h3>
                    <p>Price: ₹50 per dozen</p>
                     <div class="quantity-box">
                        <label for="quantity-Banana">Quantity:</label>
                        <input type="number" id="quantity-Banana" value="1" min="1" style="width: 50px;" />
                    </div>
                    <button type="button" onclick="addToCart('Banana', 50)">Add to Cart</button>
                </div>
            </div>
        </div>
    </form>

   <script>
       
       function addToCart(productName, price) {
           quantity = parseInt(document.getElementById('quantity-'+productName).value)
           
           $.ajax({
               type: "POST",
               url: "Home.aspx/TestMethod",
               data: JSON.stringify({ productName: productName, price: price, quantity: quantity }),
               contentType: "application/json; charset=utf-8",
               dataType: "json",
               success: function (response) {
                   //alert(response.d);
                   alert(productName + " added to cart at ₹" + price);
               },
               error: function (xhr, status, error) {
                   alert("Error: " + error);
               }
           });
       }


</script>

</body>
</html>
