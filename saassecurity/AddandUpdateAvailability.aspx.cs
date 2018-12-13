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
            if (Session["empId"] != null)
            {
                this.Master.WelcomeMessage = "Welcome, " + Session["name"];
            }
            else
            {
                Response.Redirect("~/Login.aspx?logged=false");
            }

            if (!Page.IsPostBack) {
                getAvailability(Session["empId"].ToString());
            }

           
        }

        private void getAvailability(string empId) {
            string connString = ConfigurationManager.ConnectionStrings["ScheduleDb"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);
            String query = "Select weekday, startTime, endTime, startDate, endDate from availability where empId =" + Convert.ToInt32(empId);
            SqlCommand comm = new SqlCommand(query, conn);
            try {
                conn.Open();

                using (SqlDataReader reader = comm.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        string weekday = reader[0].ToString();
                        string startTime = reader[1].ToString();
                        string endTime = reader[2].ToString();
                        string startDate = reader[3].ToString();
                        string endDate = reader[4].ToString();

                        txtStartDate.Value = startDate;
                        txtEndDate.Value = endDate;

                        switch (weekday)
                        {
                            case "2":
                                chkMon.Checked = true;
                                startMon.SelectedValue = startTime;
                                endMon.SelectedValue = endTime;
                                break;
                            case "3":
                                chkTue.Checked = true;
                                startTue.SelectedValue = startTime;
                                endTue.SelectedValue = endTime;
                                break;
                            case "4":
                                chkWed.Checked = true;
                                startWed.SelectedValue = startTime;
                                endWed.SelectedValue = endTime;
                                break;
                            case "5":
                                chkThu.Checked = true;
                                startThu.SelectedValue = startTime;
                                endThu.SelectedValue = endTime;
                                break;
                            case "6":
                                chkFri.Checked = true;
                                startFri.SelectedValue = startTime;
                                endFri.SelectedValue = endTime;
                                break;
                            case "7":
                                chkSat.Checked = true;
                                startSat.SelectedValue = startTime;
                                endSat.SelectedValue = endTime;
                                break;
                            case "1":
                                chkSun.Checked = true;
                                startSun.SelectedValue = startTime;
                                endSun.SelectedValue = endTime;
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsPostBack) {
                Boolean shiftMon = chkMon.Checked;
                Boolean shiftTue = chkTue.Checked;
                Boolean shiftWed = chkWed.Checked;
                Boolean shiftThu = chkThu.Checked;
                Boolean shiftFri = chkFri.Checked;
                Boolean shiftSat = chkSat.Checked;
                Boolean shiftSun = chkSun.Checked;

                string startDate = txtStartDate.Value;
                string endDate = txtEndDate.Value;

                var daysMap = new Dictionary<int, List<String>>();

                if (shiftMon)
                {
                    String monStart = startMon.SelectedItem.Text;

                    String monEnd = endMon.SelectedItem.Text;

                    daysMap.Add(2, new List<String> { monStart, monEnd });
                }
                if (shiftTue)
                {
                    String tueStart = startTue.SelectedItem.Text;
                    String tueEnd = endTue.SelectedItem.Text;

                    daysMap.Add(3, new List<String> { tueStart, tueEnd });
                }
                if (shiftWed)
                {
                    String wedStart = startWed.SelectedItem.Text;
                    String wedEnd = endWed.SelectedItem.Text;

                    daysMap.Add(4, new List<String> { wedStart, wedEnd });
                }
                if (shiftThu)
                {
                    String thuStart = startThu.SelectedItem.Text;
                    String thuEnd = endThu.SelectedItem.Text;

                    daysMap.Add(5, new List<String> { thuStart, thuEnd });
                }
                if (shiftFri)
                {
                    String friStart = startFri.SelectedItem.Text;
                    String friEnd = endFri.SelectedItem.Text;

                    daysMap.Add(6, new List<String> { friStart, friEnd });
                }
                if (shiftSat)
                {
                    String satStart = startSat.SelectedItem.Text;
                    String satEnd = endSat.SelectedItem.Text;

                    daysMap.Add(7, new List<String> { satStart, satEnd });
                }
                if (shiftSun)
                {
                    String sunStart = startSun.SelectedItem.Text;
                    String sunEnd = endSun.SelectedItem.Text;

                    daysMap.Add(1, new List<String> { sunStart, sunEnd });
                }

                string connString = ConfigurationManager.ConnectionStrings["ScheduleDb"].ConnectionString;
                SqlConnection conn = new SqlConnection(connString);


                string empl = Session["empId"] + "";
                int empId = Convert.ToInt32(empl);
                String query = "delete from availability where empId = " + empId + ";";
                foreach (var item in daysMap)
                {
                    query += "insert into availability(empId, weekday, startTime, endTime, startDate, endDate) " +
                        "values('" + empId + "','" + item.Key + "','" + item.Value[0] + "','" + item.Value[1] + "', '" + startDate + "', '" + endDate + "');";
                }

                try
                {
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
}