using saassecurity.model;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace saassecurity
{
    public partial class CreateSchedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["empId"] != null)
            {
                //this.Master.WelcomeMessage = "Welcome, " + Session["name"];
            }
            else
            {
                Response.Redirect("~/Login.aspx?logged=false");
            }

        }

        protected void btnCreateSched_Click(object sender, EventArgs e)
        {
            String site = drpSite.SelectedValue;
            String from = txtFromDate.Value;
            String to = txtToDate.Value;

            string connString = ConfigurationManager.ConnectionStrings["ScheduleDb"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);

            string sql1 = "select s.siteId, s.weekday, s.startTime, s.endTime from SiteShifts s where s.siteId = @siteId";

            string datesSql = "SELECT  TOP (DATEDIFF(DAY, @MinDate, @MaxDate) + 1) Date = DATEADD(DAY, ROW_NUMBER() OVER(ORDER BY a.object_id) - 1, @MinDate) FROM sys.all_objects a; ";

            SqlCommand comm1 = new SqlCommand(sql1, conn);
            comm1.Parameters.AddWithValue("@siteId", site);

            SqlCommand dateCmd = new SqlCommand(datesSql, conn);
            dateCmd.Parameters.Add("@MinDate", SqlDbType.Date);
            dateCmd.Parameters.Add("@MaxDate", SqlDbType.Date);

            dateCmd.Parameters["@MinDate"].Value = from;
            dateCmd.Parameters["@MaxDate"].Value = to;

            DateTime[] dates = new DateTime[8];
            try
            {
                conn.Open();
                List<SiteShifts> listSiteShifts = new List<SiteShifts>();
                
                SiteShifts siteShifts;
                using (SqlDataReader reader = comm1.ExecuteReader()) {
                    while (reader.Read())
                    {
                        siteShifts = new SiteShifts();
                        siteShifts.setSiteId(Convert.ToInt32(reader[0].ToString()));
                        siteShifts.setWeekday(Convert.ToInt32(reader[1].ToString()));
                        siteShifts.setStartTime(Convert.ToInt32(reader[2].ToString()));
                        siteShifts.setEndTime(Convert.ToInt32(reader[3].ToString()));                        

                        listSiteShifts.Add(siteShifts);
                    }
                }

                SqlDataReader readerDates = dateCmd.ExecuteReader();
                string insertSql = "";
                while (readerDates.Read())
                {                    
                    DateTime schedDate = (DateTime)readerDates[0];
                    int day = (int)schedDate.DayOfWeek + 1;

                    for (int i = 0; i < listSiteShifts.Count; i++) {
                        if (day == listSiteShifts[i].getWeekday()) {
                            listSiteShifts[i].setShiftDate(schedDate.Date.ToShortDateString());
                            insertSql += "if not exists(select scheduleId from schedule where siteId = '" + listSiteShifts[i].getSiteId() + "' and shiftDate='" + schedDate + "') ";
                            insertSql += "insert into schedule(siteId, shiftDate,shiftDay,startTime, endTime )" +
                           "values('" + listSiteShifts[i].getSiteId() + "', '" + schedDate.Date + "','" + listSiteShifts[i].getWeekday() + "','" + listSiteShifts[i].getStartTime() + "','" + listSiteShifts[i].getEndTime() + "');";

                        }
                    }
                }
                    SqlCommand sqlcomd = new SqlCommand(insertSql, conn);
                    sqlcomd.ExecuteNonQuery();

                  
                lblErrorMsg.Text = "Schedule created successfully!";

                populateGrid(listSiteShifts);
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

        protected void populateGrid(List<SiteShifts> sched) {
           // gridSched.DataSource = sched;
            //gridSched.DataBind();
        }
    }
}