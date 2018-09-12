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
            if (Request.Params["logged"] == "false")
            {
                lblErrorMsg.Text = "You have to login first!";
            }
            if (Request.Params["logout"] == "true") {
                lblErrorMsg.Text = "You have been successfully logged out!";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String userId = txtUsername.Text;
            String password = txtPassword.Text;

            string connString = ConfigurationManager.ConnectionStrings["ScheduleDb"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);

            String query = "Select empId,role from users where userId = '" + userId + "' and password='" + password + "'";

            SqlCommand comm = new SqlCommand(query, conn);

            try
            {
                conn.Open();

                using (SqlDataReader reader = comm.ExecuteReader()) {
                    if (reader.Read()) {
                        int empId = Convert.ToInt32(reader[0].ToString());
                        string role = reader[1].ToString();

                        String query2 = "Select firstName from employees where empId = '" + empId + "'";
                        SqlCommand comm2 = new SqlCommand(query2, conn);
                        string name = (string)comm2.ExecuteScalar();
                        Session["empId"] = empId;
                        Session["name"] = name;
                        Session["role"] = role;
                        Session["navloaded"] = "false";
                        Server.Transfer("home.aspx", true);
                        reader.Close();
                    }
                    else
                    {
                        lblErrorMsg.Text = "Login Error. Incorrect Username/Password combination.";
                    }
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