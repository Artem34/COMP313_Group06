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
                this.Master.WelcomeMessage = "Welcome, " + Session["name"];
            }
            else
            {
                Response.Redirect("~/Login.aspx?logged=false");
            }

        }

        protected void btnCreateSched_Click(object sender, EventArgs e)
        {
            String site = drpSite.SelectedValue;
            String siteName = drpSite.SelectedItem.ToString();
            String from = txtFromDate.Value;
            String to = txtToDate.Value;

            string connString = ConfigurationManager.ConnectionStrings["ScheduleDb"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);

            string sql1 = "select s.siteId, s.weekday, s.startTime, s.endTime from SiteShifts s where s.siteId = @siteId";

            string datesSql = "select DATEPART(wk, dates), dates from (select TOP (DATEDIFF(DAY, @MinDate, @MaxDate) + 1) DATEADD(DAY, ROW_NUMBER() OVER(ORDER BY a.object_id) - 1, @MinDate) dates FROM sys.all_objects a) as d; ";

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
                List<SiteShifts> listSchedule = new List<SiteShifts>();

                SiteShifts siteShifts;
                SiteShifts siteSched;
                using (SqlDataReader reader = comm1.ExecuteReader()) {
                    while (reader.Read())
                    {
                        siteShifts = new SiteShifts();
                        siteShifts.siteId = Convert.ToInt32(reader[0].ToString());
                        siteShifts.weekday = Convert.ToInt32(reader[1].ToString());
                        siteShifts.startTime = Convert.ToInt32(reader[2].ToString());
                        siteShifts.endTime = Convert.ToInt32(reader[3].ToString());                        
                         
                        listSiteShifts.Add(siteShifts);
                    }
                }

                SqlDataReader readerDates = dateCmd.ExecuteReader();
                string insertSql = "";
                while (readerDates.Read())
                {                    
                    DateTime schedDate = (DateTime)readerDates[1];
                    int day = (int)schedDate.DayOfWeek + 1;
                    int weekNum = Convert.ToInt32(readerDates[0]);
                    for (int i = 0; i < listSiteShifts.Count; i++) {
                        if (day == listSiteShifts[i].weekday) {
                            siteSched = new SiteShifts();
                            siteSched.shiftDate = schedDate.Date.ToShortDateString();
                            siteSched.day = schedDate.DayOfWeek.ToString();
                            siteSched.startTime = listSiteShifts[i].startTime;
                            siteSched.endTime = listSiteShifts[i].endTime;
                            siteSched.weekNum = weekNum;
                            listSchedule.Add(siteSched);

                            insertSql += "if not exists(select scheduleId from schedule where siteId = '" + listSiteShifts[i].siteId + "' and shiftDate='" + schedDate + "') ";
                            insertSql += "insert into schedule(siteId, shiftDate,shiftDay,startTime, endTime, weekNum )" +
                           "values('" + listSiteShifts[i].siteId + "', '" + schedDate.Date + "','" + listSiteShifts[i].weekday + "','" + listSiteShifts[i].startTime + "','" + listSiteShifts[i].endTime + "','" + weekNum + "');";

                        }
                    }
                }
                    SqlCommand sqlcomd = new SqlCommand(insertSql, conn);
                    sqlcomd.ExecuteNonQuery();

                  
                lblErrorMsg.Text = "Schedule created successfully!";
                labelMessage.Text = "Schedule created for <b>" + siteName + "</b> from <b>" + from + "</b> to <b>" + to + "</b> :";
                populateGrid(listSchedule);
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
            gridSched.DataSource = sched;
            gridSched.DataBind();
        }
    }
}