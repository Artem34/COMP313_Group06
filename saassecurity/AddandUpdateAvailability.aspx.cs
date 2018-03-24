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
    public partial class AddandUpdateAvailability : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Master.WelcomeMessage = "Welcome, " + Session["empId"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Boolean shiftMon = chkMon.Checked;
            Boolean shiftTue = chkTue.Checked;
            Boolean shiftWed = chkWed.Checked;
            Boolean shiftThu = chkThu.Checked;
            Boolean shiftFri = chkFri.Checked;
            Boolean shiftSat = chkSat.Checked;
            Boolean shiftSun = chkSun.Checked;
            var daysMap = new Dictionary<String, List<String>>();

            if (shiftMon)
            {
                String monStart = startMon.SelectedItem.Text;
                
                String monEnd = endMon.SelectedItem.Text;

                daysMap.Add("Mon", new List<String> { monStart, monEnd });
            }
            if (shiftTue)
            {
                String tueStart = startTue.SelectedItem.Text;
                String tueEnd = endTue.SelectedItem.Text;

                daysMap.Add("Tue", new List<String> { tueStart, tueEnd });
            }
            if (shiftWed)
            {
                String wedStart = startWed.SelectedItem.Text;
                String wedEnd = endWed.SelectedItem.Text;

                daysMap.Add("Wed", new List<String> { wedStart, wedEnd });
            }
            if (shiftThu)
            {
                String thuStart = startThu.SelectedItem.Text;
                String thuEnd = endThu.SelectedItem.Text;

                daysMap.Add("Thu", new List<String> { thuStart, thuEnd });
            }
            if (shiftFri)
            {
                String friStart = startFri.SelectedItem.Text;
                String friEnd = endFri.SelectedItem.Text;

                daysMap.Add("Fri", new List<String> { friStart, friEnd });
            }
            if (shiftSat)
            {
                String satStart = startSat.SelectedItem.Text;
                String satEnd = endSat.SelectedItem.Text;

                daysMap.Add("Sat", new List<String> { satStart, satEnd });
            }
            if (shiftSun)
            {
                String sunStart = startSun.SelectedItem.Text;
                String sunEnd = endSun.SelectedItem.Text;

                daysMap.Add("Sun", new List<String> { sunStart, sunEnd });
            }

            string connString = ConfigurationManager.ConnectionStrings["ScheduleDb"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);
            String query = "";
            string empl = Session["empId"] + "";
            int empId = Convert.ToInt32(empl);
            foreach (var item in daysMap)
            {
                query += "insert into availability(empId, days, startTime, endTime) " +
                    "values('" + empId + "','" + item.Key + "','" + item.Value[0] + "','" + item.Value[1] + "');";
            }

            try {
                conn.Open();
                SqlCommand comm = new SqlCommand(query, conn);
                comm.ExecuteNonQuery();

                lblErrorMsg.Text = "Availability added successfully!";
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