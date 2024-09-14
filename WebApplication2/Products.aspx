<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WebApplication2.Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Our Products</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .product-category {
            margin-bottom: 50px;
        }
        .category-title {
            font-size: 24px;
            margin-bottom: 10px;
        }
        .product-grid {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            
        }
        .product-item {
            border: 1px solid #ddd;
            padding: 10px;
            width: 200px;
            text-align: center;
        }
        .product-item img {
            width: 100%;
            height: auto;
            border-radius: 5px;
        }
        .product-item h3 {
            font-size: 18px;
            margin: 10px 0;
        }
        .product-item p {
            font-size: 14px;
            color: #555;
        }
        .product-item button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
            border-radius: 5px;
            font-size: 16px;
        }
        .product-item button:hover {
            background-color: #45a049;
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

        .navbar .cart-button {
            background-color: #28a745;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .navbar .cart-button:hover {
            background-color: #218838;
        }
        .quantity-box {
    margin: 10px 0;
    text-align: center;
}

.quantity-box label {
    font-size: 14px;
    color: #555;
    margin-right: 5px;
}

.quantity-box input[type="number"] {
    width: 50px;
    padding: 5px;
    font-size: 14px;
    border: 1px solid #ddd;
    border-radius: 5px;
    text-align: center;
    margin-right: 10px;
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
        <button class="cart-button" onclick="location.href='Cart.aspx'">View Cart</button>
    </div>
    <form id="form1" runat="server">
       <div>
    <h1>Our Products</h1>

    <!-- Fruits Category -->
    <div class="product-category">
        <div class="category-title">Fruits</div>
        <div class="product-grid">
            <div class="product-item">
                <img src="image/image (5).jpg" alt="Apple" />
                <h3>Apple</h3>
                <p>Price: ₹80 each</p>
                <div class="quantity-box">
                    <label for="quantity-apple">Quantity:</label>
                    <input type="number" id="quantity-apple" value="1" min="1" style="width: 50px;" />
                </div>
                <button type="button" onclick="addToCart('Apple', 80, $('#quantity-apple').val())">Add to Cart</button>
            </div>
            <div class="product-item">
                <img src="image/image (1).jpg" alt="Banana" />
                <h3>Banana</h3>
                <p>Price: ₹40 per dozen</p>
                <div class="quantity-box">
                    <label for="quantity-banana">Quantity:</label>
                    <input type="number" id="quantity-banana" value="1" min="1" style="width: 50px;" />
                </div>
                <button type="button" onclick="addToCart('Banana', 40, $('#quantity-banana').val())">Add to Cart</button>
            </div>
            <div class="product-item">
                <img src="image/image (4).jpg" alt="Orange" />
                <h3>Orange</h3>
                <p>Price: ₹60 each</p>
                <div class="quantity-box">
                    <label for="quantity-orange">Quantity:</label>
                    <input type="number" id="quantity-orange" value="1" min="1" style="width: 50px;" />
                </div>
                <button type="button" onclick="addToCart('Orange', 60, $('#quantity-orange').val())">Add to Cart</button>
            </div>
        </div>
    </div>

    <!-- Vegetables Category -->
    <div class="product-category">
        <div class="category-title">Vegetables</div>
        <div class="product-grid">
            <div class="product-item">
                <img src="image/carrot.jpg.crdownload.jpg" alt="Carrot" />
                <h3>Carrot</h3>
                <p>Price: ₹30 per kg</p>
                <div class="quantity-box">
                    <label for="quantity-carrot">Quantity:</label>
                    <input type="number" id="quantity-carrot" value="1" min="1" style="width: 50px;" />
                </div>
                <button type="button" onclick="addToCart('Carrot', 30, $('#quantity-carrot').val())">Add to Cart</button>
            </div>
            <div class="product-item">
                <img src="image/image (4).jpg" alt="Tomato" />
                <h3>Tomato</h3>
                <p>Price: ₹50 per kg</p>
                <div class="quantity-box">
                    <label for="quantity-tomato">Quantity:</label>
                    <input type="number" id="quantity-tomato" value="1" min="1" style="width: 50px;" />
                </div>
                <button type="button" onclick="addToCart('Tomato', 50, $('#quantity-tomato').val())">Add to Cart</button>
            </div>
            <div class="product-item">
                <img src="image/image (7).jpg" alt="Spinach" />
                <h3>Spinach</h3>
                <p>Price: ₹20 per bunch</p>
                <div class="quantity-box">
                    <label for="quantity-spinach">Quantity:</label>
                    <input type="number" id="quantity-spinach" value="1" min="1" style="width: 50px;" />
                </div>
                <button type="button" onclick="addToCart('Spinach', 20, $('#quantity-spinach').val())">Add to Cart</button>
            </div>
            <div class="product-item">
                <img src="image/potato.jpeg" alt="Potato" />
                <h3>Potato</h3>
                <p>Price: ₹40 per kg</p>
                <div class="quantity-box">
                    <label for="quantity-potato">Quantity:</label>
                    <input type="number" id="quantity-potato" value="1" min="1" style="width: 50px;" />
                </div>
                <button type="button" onclick="addToCart('Potato', 40, $('#quantity-potato').val())">Add to Cart</button>
            </div>
        </div>
    </div>

    <!-- Dairy Category -->
    <div class="product-category">
        <div class="category-title">Dairy</div>
        <div class="product-grid">
            <div class="product-item">
                <img src="image/image (2).jpg" alt="Milk" />
                <h3>Milk</h3>
                <p>Price: ₹60 per liter</p>
                <div class="quantity-box">
                    <label for="quantity-milk">Quantity:</label>
                    <input type="number" id="quantity-milk" value="1" min="1" style="width: 50px;" />
                </div>
                <button type="button" onclick="addToCart('Milk', 60, $('#quantity-milk').val())">Add to Cart</button>
            </div>
            <div class="product-item">
                <img src="image/image (3).jpg" alt="Cheese" />
                <h3>Cheese</h3>
                <p>Price: ₹400 per kg</p>
                <div class="quantity-box">
                    <label for="quantity-cheese">Quantity:</label>
                    <input type="number" id="quantity-cheese" value="1" min="1" style="width: 50px;" />
                </div>
                <button type="button" onclick="addToCart('Cheese', 400, $('#quantity-cheese').val())">Add to Cart</button>
            </div>
            <div class="product-item">
                <img src="image/yogurt.jpg" alt="Yogurt" />
                <h3>Yogurt</h3>
                <p>Price: ₹30 per cup</p>
                <div class="quantity-box">
                    <label for="quantity-yogurt">Quantity:</label>
                    <input type="number" id="quantity-yogurt" value="1" min="1" style="width: 50px;" />
                </div>
                <button type="button" onclick="addToCart('Yogurt', 30, $('#quantity-yogurt').val())">Add to Cart</button>
            </div>
        </div>
    </div>

    <!-- Bakery Category -->
    <div class="product-category">
        <div class="category-title">Bakery</div>
        <div class="product-grid">
            <div class="product-item">
                <img src="image/bread.jpg" alt="Bread" />
                <h3>Bread</h3>
                <p>Price: ₹25 per loaf</p>
                <div class="quantity-box">
                    <label for="quantity-bread">Quantity:</label>
                    <input type="number" id="quantity-bread" value="1" min="1" style="width: 50px;" />
                </div>
                <button type="button" onclick="addToCart('Bread', 25, $('#quantity-bread').val())">Add to Cart</button>
            </div>
            <div class="product-item">
                <img src="image/cake.jpeg.jpg" alt="Cake" />
                <h3>Cake</h3>
                <p>Price: ₹400 each</p>
                <div class="quantity-box">
                    <label for="quantity-cake">Quantity:</label>
                    <input type="number" id="quantity-cake" value="1" min="1" style="width: 50px;" />
                </div>
                <button type="button" onclick="addToCart('Cake', 400, $('#quantity-cake').val())">Add to Cart</button>
            </div>
            <div class="product-item">
                <img src="image/croissant.jpg" alt="Croissant" />
                <h3>Croissant</h3>
                <p>Price: ₹50 each</p>
                <div class="quantity-box">
                    <label for="quantity-croissant">Quantity:</label>
                    <input type="number" id="quantity-croissant" value="1" min="1" style="width: 50px;" />
                </div>
                <button type="button" onclick="addToCart('Croissant', 50, $('#quantity-croissant').val())">Add to Cart</button>
            </div>
        </div>
    </div>
</div>

    </form>
        
    <script>
        function addToCart(productName, price, quantity) {
            //quantity = parseInt(document.getElementById('quantity-' + productName).value)
           
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
