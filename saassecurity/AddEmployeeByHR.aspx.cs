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
        

        private String fname, lname, email, phn, address, username,password,cpassword,dbrth, role,status, hours;

        
        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        
        protected void btnadd_Click(object sender, EventArgs e)
        {
            if (txtpwd.Text == txtcpwd.Text)
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
                dbrth = txtdate.Text.ToString();                
                role = drpRole.SelectedValue;
                hours = statusRadio.SelectedValue;
                status = statusRadio.SelectedItem.ToString();

                string insertEmp = "INSERT INTO employees(firstName,lastName,dob,address,email,contactNum,userId,hours, status) VALUES(@firstName,@lastName,@dob,@address,@email,@contactNum,@userId,@hours, @status);"
                                + "SELECT CAST(scope_identity() AS int)";
                sqlcommand = new SqlCommand(insertEmp, conn);
                sqlcommand.Parameters.AddWithValue("@firstName", fname);
                sqlcommand.Parameters.AddWithValue("@lastName", lname);
                sqlcommand.Parameters.AddWithValue("@dob", dbrth);
                sqlcommand.Parameters.AddWithValue("@address", address);
                sqlcommand.Parameters.AddWithValue("@email", email);
                sqlcommand.Parameters.AddWithValue("@contactNum", phn);
                sqlcommand.Parameters.AddWithValue("@userId", username);
                sqlcommand.Parameters.AddWithValue("@hours", hours);
                sqlcommand.Parameters.AddWithValue("@status", status);

                try
                {

                    conn.Open();
                    int empId = Convert.ToInt32(sqlcommand.ExecuteScalar());

                    string insertUser = "INSERT INTO users(userId,password,role, empId) VALUES(@userId,@password,@role,@empId)";

                    sqlcommand = new SqlCommand(insertUser, conn);
                    sqlcommand.Parameters.AddWithValue("@userId", username);
                    sqlcommand.Parameters.AddWithValue("@password", password);
                    sqlcommand.Parameters.AddWithValue("@role", role);
                    sqlcommand.Parameters.AddWithValue("@empId", empId);

                    sqlcommand.ExecuteNonQuery();

                    string insertHour = "insert into empHours values(@empId,@totalHours,0)";
                    SqlCommand cmd = new SqlCommand(insertHour,conn);
                    cmd.Parameters.AddWithValue("@empId", empId);
                    cmd.Parameters.AddWithValue("@totalHours", hours);
                    cmd.ExecuteNonQuery();

                    lblErrorMsg.Text = "Employee Added Successfully!";
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
            else {
                lblErrorMsg.Text = "Passwords do not match!";
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["empId"] != null)
            {
                this.Master.WelcomeMessage = "Welcome, " + Session["name"];
            }
            else
            {
                Response.Redirect("~/Login.aspx?logged=false");
            }
        }
    }
}