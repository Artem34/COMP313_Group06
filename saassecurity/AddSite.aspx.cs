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
    public partial class AddSite : System.Web.UI.Page
    {
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            String siteName = txtSiteName.Text;
            String siteAdd = txtAddress.Text;
            String contactPerson = txtContactPerson.Text;
            String contactNum = txtContactNum.Text;
            Boolean shiftMon = chkMonday.Checked;
            Boolean shiftTue = chkTuesday.Checked;
            Boolean shiftWed = chkWednesday.Checked;
            Boolean shiftThu = chkThursday.Checked;
            Boolean shiftFri = chkFriday.Checked;
            Boolean shiftSat = chkSaturday.Checked;
            Boolean shiftSun = chkSunday.Checked;
            var daysMap = new Dictionary<int, List<String>>();

            if (shiftMon) {
                String startMon = startTimeMonday.SelectedItem.Text;
                String endMon = endTimeMonday.SelectedItem.Text;

                daysMap.Add(2, new List<String> { startMon, endMon });             
            }
            if (shiftTue)
            {
                String startTue = startTimeTuesday.SelectedItem.Text;
                String endTue = endTimeTuesday.SelectedItem.Text;

                daysMap.Add(3, new List<String> { startTue, endTue });
            }
            if (shiftWed)
            {
                String startWed = startTimeWednesday.SelectedItem.Text;
                String endWed = endTimeWednesday.SelectedItem.Text;

                daysMap.Add(4, new List<String> { startWed, endWed });
            }
            if (shiftThu)
            {
                String startThu = startTimeThursday.SelectedItem.Text;
                String endThu = endTimeThursday.SelectedItem.Text;

                daysMap.Add(5, new List<String> { startThu, endThu });
            }
            if (shiftFri)
            {
                String startFri = startTimeFriday.SelectedItem.Text;
                String endFri = endTimeFriday.SelectedItem.Text;

                daysMap.Add(6, new List<String> { startFri, endFri });
            }
            if (shiftSat)
            {
                String startSat = startTimeSaturday.SelectedItem.Text;
                String endSat = endTimeSaturday.SelectedItem.Text;

                daysMap.Add(7, new List<String> { startSat, endSat });
            }
            if (shiftSun)
            {
                String startSun = startTimeSunday.SelectedItem.Text;
                String endSun = endTimeSunday.SelectedItem.Text;

                daysMap.Add(1, new List<String> { startSun, endSun });
            }

            string connString = ConfigurationManager.ConnectionStrings["ScheduleDb"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);
            String query1 = "insert into Sites(siteName, siteAddress, contactPerson, contactNum) values('" + siteName + "','" + siteAdd + "','" + contactPerson + "','" + contactNum + "');"  
                + "SELECT CAST(scope_identity() AS int)";
            SqlCommand comm = new SqlCommand(query1, conn);
            SqlCommand comm2;
            String comm2Query = "";
            
            try {
                conn.Open();
                int id = Convert.ToInt32(comm.ExecuteScalar());

                foreach (var item in daysMap)
                {
                    comm2Query += "insert into SiteShifts(siteId, weekday, startTime, endTime) " +
                        "values('"+id+"','"+ item.Key +"','"+ item.Value[0]+"','" +item.Value[1]+"');";
                }

                comm2 = new SqlCommand(comm2Query, conn);

                comm2.ExecuteNonQuery();

                lblErrorMsg.Text = "Site details saved successfully!";
                txtSiteName.Text = "";
                txtAddress.Text = "";
                txtContactNum.Text = "";
                txtContactPerson.Text = "";
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