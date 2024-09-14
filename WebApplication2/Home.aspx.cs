using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.Services;
using System.Web.UI;

namespace WebApplication2
{
    public partial class Home : Page
    {
        private static string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Mart.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else {
                Label1.Text = HttpContext.Current.Session["Username"].ToString();

            }
        }

        
        protected static string AddToCart(string productName, decimal price, int quantity)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    string query = "INSERT INTO CartItems (ProductName, Price, Quantity, UserId) VALUES (@ProductName, @Price, @Quantity, @UserId)";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@ProductName", productName);
                        command.Parameters.AddWithValue("@Price", price);
                        command.Parameters.AddWithValue("@Quantity", quantity);
                        command.Parameters.AddWithValue("@UserId", Convert.ToInt32(HttpContext.Current.Session["UserID"]));
             

                        command.ExecuteNonQuery();
                    }
                } 
                 return "Success";
            }
            catch (Exception ex)
            {
                return "Error: " + ex.Message; ;
            }
    
    }


        protected void AddToCartButton_Click(object sender, EventArgs e)
        {
            // Example: Adding an item to the cart
            AddToCart("Apple", 80, 1);
        }

        [WebMethod]
        public static string TestMethod(string productName, decimal price, int quantity)
        {
            AddToCart(productName,price,quantity);
            return "Test successful";
        }

    }
}
