using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace saassecurity
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["ScheduleDb"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

      
        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string username = txtUserName.Text;
            string pwd = txtPassword.Text;
            string confirmpwd = txtConfirmPassword.Text;

            if (pwd != confirmpwd)
            {
                errorMsg.Text = "Passwords do not match!";
            }
            else {
                String query = "Select userId from users where userId=@userId";

                SqlConnection conn = new SqlConnection(connString);

                SqlCommand sqlcommand;
                sqlcommand = new SqlCommand(query, conn);
                sqlcommand.Parameters.AddWithValue("@userId", username);

                try
                {

                    conn.Open();



                    string userId = (String)sqlcommand.ExecuteScalar();

                    if (userId == null || userId == "")
                    {
                        errorMsg.Text = "User Name does not exist!";
                    }
                    else {
                        String updateCmd = "Update users set password=@password where userId=@userId";
                        sqlcommand = new SqlCommand(updateCmd, conn);
                        sqlcommand.Parameters.AddWithValue("@userId", username);
                        sqlcommand.Parameters.AddWithValue("@password", pwd);

                        sqlcommand.ExecuteNonQuery();

                        errorMsg.Text = "Password updated successfully!";
                    }
                    
                }
                catch (SqlException ex)
                {
                    errorMsg.Text = ex.ToString();
                }
                finally
                {
                    conn.Close();
                }

            }
        }
    }
}