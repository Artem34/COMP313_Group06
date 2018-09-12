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
    public partial class SiteDetails : System.Web.UI.Page
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
            
            LoadSiteShifts(Request.QueryString["siteId"]);
        }

        private void LoadSiteShifts(string siteId)
        {
            
            string connString = ConfigurationManager.ConnectionStrings["ScheduleDb"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);
            String query = "select s.siteName, s.siteAddress, s.contactPerson, s.contactNum, f.weekday, f.startTime, f.endTime from " +
                "sites s join siteshifts f on s.siteId = f.siteId where s.siteId = " + Convert.ToInt32(siteId);
            SqlCommand comm = new SqlCommand(query, conn);
            try
            {
                conn.Open();

                using (SqlDataReader reader = comm.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        txtSiteName.Text = reader[0].ToString();
                        txtSiteAddress.Text = reader[1].ToString();
                        txtContact.Text = reader[2].ToString();
                        txtContactNum.Text = reader[3].ToString();
                        string weekday = reader[4].ToString();
                        string startTime = reader[5].ToString();
                        string endTime = reader[6].ToString();

                        switch (weekday)
                        {
                            case "2":
                                chkMonday.Checked = true;
                                startTimeMonday.SelectedValue = startTime;
                                endTimeMonday.SelectedValue = endTime;
                                break;
                            case "3":
                                chkTuesday.Checked = true;
                                startTimeTuesday.SelectedValue = startTime;
                                endTimeTuesday.SelectedValue = endTime;
                                break;
                            case "4":
                                chkWednesday.Checked = true;
                                startTimeWednesday.SelectedValue = startTime;
                                endTimeWednesday.SelectedValue = endTime;
                                break;
                            case "5":
                                chkThursday.Checked = true;
                                startTimeThursday.SelectedValue = startTime;
                                endTimeThursday.SelectedValue = endTime;
                                break;
                            case "6":
                                chkFriday.Checked = true;
                                startTimeFriday.SelectedValue = startTime;
                                endTimeFriday.SelectedValue = endTime;
                                break;
                            case "7":
                                chkSaturday.Checked = true;
                                startTimeSaturday.SelectedValue = startTime;
                                endTimeSaturday.SelectedValue = endTime;
                                break;
                            case "1":
                                chkSunday.Checked = true;
                                startTimeSunday.SelectedValue = startTime;
                                endTimeSunday.SelectedValue = endTime;
                                break;

                        }


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

        protected void btnSave_Click(object sender, EventArgs e)
        {
            String siteName = txtSiteName.Text;
            String siteAdd = txtSiteAddress.Text;
            String contactPerson = txtContact.Text;
            String contactNum = txtContactNum.Text;
            int siteId = Convert.ToInt32(Request.QueryString["siteId"]);
            Boolean shiftMon = chkMonday.Checked;
            Boolean shiftTue = chkTuesday.Checked;
            Boolean shiftWed = chkWednesday.Checked;
            Boolean shiftThu = chkThursday.Checked;
            Boolean shiftFri = chkFriday.Checked;
            Boolean shiftSat = chkSaturday.Checked;
            Boolean shiftSun = chkSunday.Checked;
            var daysMap = new Dictionary<int, List<String>>();

            if (shiftMon)
            {
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
            String query1 = "update Sites set siteName = '" + siteName + "', siteAddress='" + siteAdd + "', contactPerson='" + contactPerson + "', contactNum='" + contactNum + "' where siteId='" + siteId + "'";
            SqlCommand comm = new SqlCommand(query1, conn);
            SqlCommand comm2;
            String comm2Query = "";

            try
            {
                conn.Open();
                comm.ExecuteNonQuery();

                comm2Query = "delete from SiteShifts where siteId=" + siteId + ";";
                foreach (var item in daysMap)
                {
                    
                    comm2Query += "insert into SiteShifts(siteId, weekday, startTime, endTime) " +
                        "values('" + siteId + "','" + item.Key + "','" + item.Value[0] + "','" + item.Value[1] + "');";
                }

                comm2 = new SqlCommand(comm2Query, conn);

                comm2.ExecuteNonQuery();

                lblErrorMsg.Text = "Site details saved successfully!";
               
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