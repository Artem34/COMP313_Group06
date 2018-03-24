using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace saassecurity
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String userId = txtUsername.Text;
            String password = txtPassword.Text;

            string connString = ConfigurationManager.ConnectionStrings["ScheduleDb"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);

            String query = "Select count(*) from users where userId = '" + userId + "' and password='" + password + "'";

            SqlCommand comm = new SqlCommand(query, conn);

            try
            {
                conn.Open();
     

                int count = Convert.ToInt32(comm.ExecuteScalar());

                if (count > 0)
                {
                    Session["empId"] = userId;

                    Server.Transfer("home.aspx", true);
                }
                else {
                    lblErrorMsg.Text = "Login Error. Incorrect Username/Password combination.";
                }


            }
            catch (SqlException ex)
            {

                lblErrorMsg.Text = ex.ToString();
            }
            finally
            {
                conn.Close();
            }
        
        
           
        }
    }
}