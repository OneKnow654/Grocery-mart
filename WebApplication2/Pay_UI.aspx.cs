using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication2
{
    public partial class Pay_UI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
            {
                Path = "~/Scripts/jquery-3.6.0.min.js",
                DebugPath = "~/Scripts/jquery-3.6.0.js",
                CdnPath = "https://code.jquery.com/jquery-3.6.0.min.js",
                CdnDebugPath = "https://code.jquery.com/jquery-3.6.0.js"
            });
        }

        protected void Button2(object sender, EventArgs e)
        {
            // Retrieve form data
            Response.Write("showPopup()");
            string firstName = TextBox1.Text.Trim();
            string lastName = TextBox2.Text.Trim();
            string cardNumber = TextBox3.Text.Trim();
            string expiryDate = TextBox4.Text.Trim();
            string cvv = TextBox5.Text.Trim();
            string billingAddress = TextBox6.Text.Trim();

            // Insert data into the database
            try
            {
                string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Mart.mdf;Integrated Security=True";
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO Payments (FirstName, LastName, CardNumber, ExpiryDate, CVV, BillingAddress) " +
                                   "VALUES (@FirstName, @LastName, @CardNumber, @ExpiryDate, @CVV, @BillingAddress)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@FirstName", firstName);
                        cmd.Parameters.AddWithValue("@LastName", lastName);
                        cmd.Parameters.AddWithValue("@CardNumber", cardNumber);
                        cmd.Parameters.AddWithValue("@ExpiryDate", expiryDate);
                        cmd.Parameters.AddWithValue("@CVV", cvv);
                        cmd.Parameters.AddWithValue("@BillingAddress", billingAddress);

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }
                
            }
            catch (Exception ex)
            {
                // Handle any errors
                Response.Write("<script>alert('Error processing payment: " + ex.Message + "');</script>");
            }

            Response.Redirect("~/thank.aspx");
        }
    }
}