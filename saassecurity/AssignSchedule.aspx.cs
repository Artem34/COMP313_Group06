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
    public partial class AssignSchedule : System.Web.UI.Page
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

        protected void btnStartSchedAssign_Click(object sender, EventArgs e)
        {
            string connString = ConfigurationManager.ConnectionStrings["ScheduleDb"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);
            
          
                //find employees
            string sqlemp = "select scheduleId,shiftDay, startTime, endTime,weekNum from schedule where empId is NULL";
            SqlCommand cmd = new SqlCommand(sqlemp, conn);

            try{
                conn.Open();
                SqlDataReader reademp = cmd.ExecuteReader();
                while (reademp.Read()) {
                    int scheduleId = Convert.ToInt32(reademp[0].ToString());
                    int shiftDay = Convert.ToInt32(reademp[1].ToString());
                    int startTime = Convert.ToInt32(reademp[2].ToString());
                    int endTime = Convert.ToInt32(reademp[3].ToString());
                    int weekNum = Convert.ToInt32(reademp[4].ToString());
                    string sqlsched = "select empId from availability where weekday= '"+shiftDay+"' and startTime <=" + startTime + "and endTime >= " + endTime;

                    SqlCommand com = new SqlCommand(sqlsched, conn);
                    SqlDataReader avReader = com.ExecuteReader();
                    string updateSql = "";
                    Boolean flag = false;
                    if (avReader.HasRows) {
                        while (avReader.Read()) {
                            int empId = Convert.ToInt32(avReader[0].ToString());
                            string checksql = "select scheduleId from schedule where empId =" + empId +" and shiftDay=" + shiftDay + "and weekNum='"+weekNum+"';";
                            SqlCommand checkcmd = new SqlCommand(checksql, conn);
                            //If no other shift assigned for that day
                            if (checkcmd.ExecuteScalar() == null) {
                                //If total hours not exceeded
                                flag = true;
                                //assign shift
                                updateSql += "Update schedule set empId =" + empId + " where scheduleId=" + scheduleId;
                                break;
                                /*int shiftHours = endTime - startTime;
                                //Increase Hours
                                SqlCommand hourcmd = new SqlCommand("select e.hours, h.tothours from employees e, empHours h where e.empId = h.empId and e.empId =" + empId + "and h.weekNum=" + weekNum, conn);

                                SqlDataReader redd = hourcmd.ExecuteReader();
                                if (redd.HasRows)
                                {
                                    while (redd.Read()) {
                                        int maxHours = Convert.ToInt32(redd[0].ToString());
                                        int currHours = Convert.ToInt32(redd[1].ToString());
                                        int tothours = currHours + shiftHours;
                                        if (tothours <= maxHours)
                                        {
                                            flag = true;
                                            //assign shift
                                            updateSql += "Update schedule set empId =" + empId + " where scheduleId=" + scheduleId;
                                            string hoursql = "update empHours set totHours = " + tothours + " where empId=" + empId + "and weekNum=" + weekNum;

                                            SqlCommand updHour = new SqlCommand(hoursql, conn);
                                            updHour.ExecuteNonQuery();
                                            break;
                                        }
                                    }
                                   
                                }
                                else {
                                    flag = true;
                                    //assign shift
                                    int tothours = shiftHours;
                                    updateSql += "Update schedule set empId =" + empId + " where scheduleId=" + scheduleId;
                                    string hoursql = "insert into empHours(empId, weekNum, totHours) values('"+empId+"','"+weekNum+"', '"+tothours+"')";
                                    SqlCommand updHour = new SqlCommand(hoursql, conn);
                                    updHour.ExecuteNonQuery();

                                    break;
                                }
                                */
                              
                            }
                        }
                        if (flag) {
                            SqlCommand updateCmd = new SqlCommand(updateSql, conn);

                            updateCmd.ExecuteNonQuery();

                        }
                        
                    }
                }
                lblErrorMsg.Text = "Schedule assigned successfully!";
            }

            catch (SqlException ex)
            {

                lblErrorMsg.Text = ex.ToString();
            }
            finally
            {
                conn.Close();
            }
            /*string connString = ConfigurationManager.ConnectionStrings["ScheduleDb"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);

            SqlCommand comm = new SqlCommand("insertEmployersSchedule", conn);
            comm.CommandType = CommandType.StoredProcedure;

            try
            {
                conn.Open();
                comm.ExecuteNonQuery();

                lblErrorMsg.Text = "Scheduler started successfully!";


            }
            catch (SqlException ex)
            {

                lblErrorMsg.Text = ex.ToString();
            }
            finally
            {
                conn.Close();
            }*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connString = ConfigurationManager.ConnectionStrings["ScheduleDb"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);

            string sql1 = "select s.siteId, s.weekday, s.startTime, s.endTime from SiteShifts s";

            string datesSql = "SELECT datepart(wk, getdate()+1) as CurrentWeek, DATEADD(DAY, nbr -1, dateadd(day, 1-datepart(dw, getdate()+1), CONVERT(date,getdate()+1))) as CurrentWeekDates FROM(SELECT ROW_NUMBER() OVER(ORDER BY c.object_id) AS Nbr FROM sys.columns c) nbrs WHERE nbr - 1 <= DATEDIFF(DAY, dateadd(day, 1 - datepart(dw, getdate()+1), CONVERT(date, getdate()+1)), dateadd(day, 7 - datepart(dw, getdate()+1), CONVERT(date, getdate()+1)));";

            SqlCommand comm1 = new SqlCommand(sql1, conn);
            SqlCommand dateCmd = new SqlCommand(datesSql, conn);
            String[] dates = new String[8];
            try
            {
                conn.Open();
                SqlDataReader readerDates = dateCmd.ExecuteReader();
                int index = 1;
                int currentweek = 0;
                while (readerDates.Read())
                {
                    currentweek = Convert.ToInt32(readerDates[0].ToString());
                    dates[index] = readerDates[1].ToString();

                    index++;
                }
                string sql = "";

                int i = 0;
                HashSet<int> siteList = new HashSet<int>();
                using (SqlDataReader reader = comm1.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        i++;
                        int siteId = Convert.ToInt32(reader[0].ToString());
                        int weekday = Convert.ToInt32(reader[1].ToString());
                        int startTime = Convert.ToInt32(reader[2].ToString());
                        int endTime = Convert.ToInt32(reader[3].ToString());

                        sql += "insert into schedule(siteId, shiftDate,shiftDay,startTime, endTime,weekNum) " +
                            "values('" + siteId + "', '" + dates[weekday] + "','" + weekday + "','" + startTime + "','" + endTime + "','" + currentweek + "');";
                        siteList.Add(siteId);
                    }
                    SqlCommand sqlcomd = new SqlCommand(sql, conn);
                    sqlcomd.ExecuteNonQuery();

                    string sqlStatus = "";
                    foreach (int siteId in siteList) {
                        sqlStatus += "Insert into scheduleWeek values('" + siteId + "','" + currentweek + "');";
                    }
                    SqlCommand statusCmd = new SqlCommand(sqlStatus, conn);
                    statusCmd.ExecuteNonQuery();
                }

                lblErrorMsg.Text = "Schedule created successfully!";
            }
            catch (SqlException ex)
            {
                lblErrorMsg.Text = ex.ToString();
            }
            finally {
                conn.Close();
            }
    }
    }
}