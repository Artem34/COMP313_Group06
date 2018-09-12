using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace saassecurity
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["ScheduleDb"].ConnectionString;
        

        protected void Page_Load(object sender, EventArgs e)
        {

            txtempid.Text = Convert.ToString(Session["empId"]);
            SqlConnection sqlconnection = new SqlConnection(connString);
            SqlCommand comm = new SqlCommand("select (siteId,shiftDate,startTime,endTime,checkInStatus) from schedule where (empId = @empid)", sqlconnection);
            comm.Parameters.AddWithValue("@empId", Convert.ToString(Session["empId"]));
            

            sqlconnection.Open();
            SqlDataReader reader = comm.ExecuteReader();

            reader.Read();
            txtsiteid.Text = reader["siteId"].ToString();
            reader.Read();
            txtdate.Text = reader["shiftDate"].ToString();

            reader.Read();
            txtStartime.Text = reader["startTime"].ToString();
            reader.Read();
            txtstatus.Text = reader["checkInStatus"].ToString();
            reader.Read();
            txtempid.Text = reader["endTime"].ToString();
           
            reader.Close();
            sqlconnection.Close();

        }

        protected void checkInE_Click(object sender, EventArgs e)
        {
            SqlCommand commnd = new SqlCommand("Update schedule set checkInStatus = 'Checked In', sqlconnection");
            txtstatus.Text = "You are checked in.";

        }

        protected void checkOutE_Click(object sender, EventArgs e)
        {
            SqlCommand commnd = new SqlCommand("Update schedule set checkInStatus = 'Checked Out', sqlconnection");
            txtstatus.Text = "You are checked out.";
        }
    }
}