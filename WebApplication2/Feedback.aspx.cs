using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace WebApplication2
{
    public partial class Feedback : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Mart.mdf;Integrated Security=True");
        

        protected void Page_Load(object sender, EventArgs e)
        {
            // This page does not need any logic on load for now
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Get the form values
            string name = txtName.Text;
            string email = txtEmail.Text;
            string feedback = txtFeedback.Text;

           
            string query = "INSERT INTO Feedback (Name, Email, FeedbackText) VALUES (@Name, @Email, @FeedbackText)";
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Name", name);
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@FeedbackText", feedback);
            cmd.CommandText = query;
            cmd.ExecuteNonQuery();
               
                txtName.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txtFeedback.Text = string.Empty;
            }
          
        
    }
        
}
