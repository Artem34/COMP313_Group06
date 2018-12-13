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
    public partial class ViewScheduleByE : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["ScheduleDb"].ConnectionString;

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


        protected void RowSelected(object sender, GridViewCommandEventArgs e)
        {
            SqlConnection conn = new SqlConnection(connString);

            SqlCommand sqlcommand;

            if (e.CommandName == "CheckInShift")
            {
                int rowId = Convert.ToInt32( e.CommandArgument.ToString());
                int scheduleId = Convert.ToInt32(GridView1.DataKeys[rowId]["scheduleId"]);

                String query = "Update Schedule set checkInStatus = 'Y', checkInTime=@now where scheduleId=@scheduleId";
               
                try {
                    conn.Open();
                    sqlcommand = new SqlCommand(query, conn);
                    sqlcommand.Parameters.AddWithValue("@now", DateTime.Now);
                    sqlcommand.Parameters.AddWithValue("@scheduleId", scheduleId);


                    sqlcommand.ExecuteNonQuery();

                    lblErrorMsg.Text = "You have successfully checked into schedule : " + scheduleId;

                    Page.Response.Redirect(Page.Request.Url.ToString(), true);
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
            else if (e.CommandName == "CheckOutShift") {
                int rowId = Convert.ToInt32(e.CommandArgument.ToString());
                int scheduleId = Convert.ToInt32(GridView1.DataKeys[rowId]["scheduleId"]);

                String query = "Update Schedule set checkOutStatus = 'Y', checkOutTime=@now where scheduleId=@scheduleId";

                try
                {
                    conn.Open();
                    sqlcommand = new SqlCommand(query, conn);
                    sqlcommand.Parameters.AddWithValue("@now", DateTime.Now);
                    sqlcommand.Parameters.AddWithValue("@scheduleId", scheduleId);


                    sqlcommand.ExecuteNonQuery();

                    lblErrorMsg.Text = "You have successfully checked out from shift : " + scheduleId;

                    Page.Response.Redirect(Page.Request.Url.ToString(), true);
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
}