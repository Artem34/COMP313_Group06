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
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["ScheduleDb"].ConnectionString;
        

        private String fname, lname, email, phn, address, username,password,cpassword,dbrth;

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        
        protected void btnadd_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connString);

            SqlCommand sqlcommand;
            fname = txtfName.Text.ToString();
            lname = txtlName.Text.ToString();
            email = txtemail.Text.ToString();
            phn = txtphn.Text.ToString();
            address = txtaddress.Text.ToString();
            username = txtuser.Text.ToString();
            password = txtpwd.Text.ToString();
            cpassword = txtcpwd.Text.ToString();
            dbrth =  txtdate.Text.ToString();
            DateTime dbirth = DateTime.Parse(dbrth);

            string insertEmp = "INSERT INTO employees(firstName,lastName,dob,address,email,contactNum,userId) VALUES(@firstName,@lastName,@dob,@address,@email,@contactNum,@userId)";

            sqlcommand = new SqlCommand(insertEmp, conn);
            sqlcommand.Parameters.AddWithValue("@firstName", fname);
            sqlcommand.Parameters.AddWithValue("@lastName", lname);
            sqlcommand.Parameters.AddWithValue("@dob", dbirth);
            sqlcommand.Parameters.AddWithValue("@address", address);
            sqlcommand.Parameters.AddWithValue("@email", email);
            sqlcommand.Parameters.AddWithValue("@contactNum", phn);
            sqlcommand.Parameters.AddWithValue("@userId", username);

            try
            {

                conn.Open();
                sqlcommand.ExecuteNonQuery();

                string insertUser = "INSERT INTO users(userId,password,role) VALUES(@userId,@password,@role)";

                sqlcommand = new SqlCommand(insertUser, conn);
                sqlcommand.Parameters.AddWithValue("@userId", username);
                sqlcommand.Parameters.AddWithValue("@password", password);
                sqlcommand.Parameters.AddWithValue("@role", "emp");

                sqlcommand.ExecuteNonQuery();

                lblErrorMsg.Text = "Employee Added Successfully!";
            }
            catch (SqlException ex)
            {
                lblErrorMsg.Text = ex.ToString();
            }
            finally {
                conn.Close();
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            this.Master.WelcomeMessage = "Welcome, " + Session["empId"];
        }
    }
}