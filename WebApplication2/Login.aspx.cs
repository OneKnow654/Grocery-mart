using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Mart.mdf;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SELECT COUNT(1) FROM Register WHERE email=@Email AND password=@Password";
            cmd.Parameters.AddWithValue("@Email", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);

            int count = Convert.ToInt32(cmd.ExecuteScalar());

            if (count == 1)
            {
                cmd.CommandText = "SELECT user_id, fname FROM Register WHERE email=@mail AND password=@Pass";
                cmd.Parameters.AddWithValue("@mail", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Pass", TextBox2.Text);

                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {

                    int userID = Convert.ToInt32(reader["user_id"]);
                    string username = reader["fname"].ToString();


                    Session["UserID"] = userID;
                    Session["Username"] = username;

                    Response.Redirect("home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid username or password.')</script>");
                }

                
            }
            else
            {
                // Failed login
                Response.Write("<script>alert('Invalid username or password.')</script>");
            }
            con.Close();


            TextBox1.Text = "";

            TextBox2.Text = "";

            
        }

    }
}