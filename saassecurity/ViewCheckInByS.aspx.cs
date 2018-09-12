using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace saassecurity
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["empId"] != null)
            {
                this.Master.WelcomeMessage = "Welcome, " + Session["name"];
                displaysite();
            }
            else
            {
                Response.Redirect("~/Login.aspx?logged=false");
            }
            
        }
        private void displaysite()
        {
          string conn = ConfigurationManager.ConnectionStrings["ScheduleDb"].ConnectionString;
          SqlConnection con = new SqlConnection(conn);
            SqlCommand comm = new SqlCommand("Select * from schedule inner join employees on employees.empId = schedule.empId inner join sites on sites.siteId = schedule.siteId", con);

            con.Open();
            SqlDataReader reader = comm.ExecuteReader();
            if (reader.HasRows)
            {
                DataTable tabn = new DataTable();
                tabn.Load(reader);
                site.DataSource = tabn;
                site.DataBind();

            }
            con.Close();

        }
    }
}