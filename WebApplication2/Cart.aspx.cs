using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace WebApplication2
{
    public partial class Cart : Page
    {
        private string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Mart.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCartItems();
            }
        }

        private void LoadCartItems()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT ProductName, Price, Quantity FROM CartItems WHERE UserId = @UserId";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@UserId", Convert.ToInt32(Session["UserID"])); // Replace with actual user ID or logic

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        decimal totalAmount = 0;
                        string cartItemsHtml = "";

                        while (reader.Read())
                        {
                            string productName = reader["ProductName"].ToString();
                            decimal price = Convert.ToDecimal(reader["Price"]);
                            int quantity = Convert.ToInt32(reader["Quantity"]);
                            decimal itemTotal = price * quantity;

                            totalAmount += itemTotal;

                            cartItemsHtml += "<div class='cart-item'>"
                                + "  <h3>" + productName + "</h3>"
                                + "<p>Price: ₹" + price + " x " + quantity + " = ₹" + itemTotal + "</p></div>";
                        }

                        CartItemsLiteral.Text = cartItemsHtml;
                        TotalAmountLiteral.Text = "<div class='cart-total'>Total Amount: ₹" + totalAmount + "</div>";
                    }
                }
            }
        }


        protected void ProceedToPaymentButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pay_UI.aspx");
        }
    }
}





/*using System;
using System.Collections.Generic;
using System.Web.UI;

namespace WebApplication2
{
    public partial class Cart : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCartItems();
            }
        }

        private void LoadCartItems()
        {
            var cart = Session["Cart"] as List<CartItem>;
            decimal totalAmount = 0;
            string cartItemsHtml = "";

            if (cart != null)
            {
                foreach (var item in cart)
                {
                    decimal itemTotal = item.Price * item.Quantity;
                    totalAmount += itemTotal;

                    cartItemsHtml += "<div class='cart-item'>"
                     + "  <h3>"+item.ProductName+"</h3>"
                      +  "<p>Price: ₹"+item.Price+" x "+item.Quantity+" = ₹"+itemTotal+"</p></div>";
                }
                
                CartItemsLiteral.Text = cartItemsHtml;
                TotalAmountLiteral.Text = "<div class='cart-total'>Total Amount: ₹"+totalAmount+"</div>";
            }
            else
            {
                CartItemsLiteral.Text = "<p>Your cart is empty.</p>";
            }
        }

        protected void ProceedToPaymentButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pay_UI.aspx");
        }
    }
}*/
