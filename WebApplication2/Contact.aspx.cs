using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Contact : System.Web.UI.Page
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


        protected void Submit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Mart.mdf;Integrated Security=True"))
                {

                    string query = "INSERT INTO ContactMessages (Name, Email, Message) VALUES (@Name, @Email, @Message)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {

                        cmd.Parameters.AddWithValue("@Name", NameTextBox.Text);
                        cmd.Parameters.AddWithValue("@Email", EmailTextBox.Text);
                        cmd.Parameters.AddWithValue("@Message", MessageTextBox.Text);


                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }


                Response.Write("<script>alert('Thank you for contacting us. We will get back to you shortly.'); location.href='Home.aspx'</script>");
                
                // Clear the form
                NameTextBox.Text = "";
                EmailTextBox.Text = "";
                MessageTextBox.Text = "";
            }
        }
    }
}