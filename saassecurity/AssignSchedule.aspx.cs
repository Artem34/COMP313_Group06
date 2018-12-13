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

            String sql;

            SqlCommand cmd;

            String value = drpSelectSite.SelectedValue;
            if (value.Equals("0")) {
                sql = "select scheduleId,shiftDate, shiftDay, startTime, endTime, weekNum from schedule where empId is NULL";
                cmd = new SqlCommand(sql, conn);
            }
            else {
                sql = "select scheduleId,shiftDate, shiftDay, startTime, endTime, weekNum from schedule where siteId = @siteId and empId is NULL";
                cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@siteId", value);
            }

            try{
                conn.Open();
                SqlDataReader reademp = cmd.ExecuteReader();
                while (reademp.Read()) {
                    int scheduleId = Convert.ToInt32(reademp[0].ToString());
                    String shiftDate = reademp[1].ToString();
                    int shiftDay = Convert.ToInt32(reademp[2].ToString());
                    int startTime = Convert.ToInt32(reademp[3].ToString());
                    int endTime = Convert.ToInt32(reademp[4].ToString());
                    int weekNum = Convert.ToInt32(reademp[5].ToString());
                    string sqlsched = "select empId from availability where weekday= '"+shiftDay+ "' and '" +  shiftDate + "' between startDate and endDate and startTime <=" + startTime + "and endTime >= " + endTime;

                    SqlCommand com = new SqlCommand(sqlsched, conn);
                    SqlDataReader avReader = com.ExecuteReader();
                    string updateSql = "";
                    Boolean flag = false;
                    if (avReader.HasRows) {
                        while (avReader.Read()) {
                            int empId = Convert.ToInt32(avReader[0].ToString());
                            string checksql = "select scheduleId from schedule where empId =" + empId +" and shiftDate='" + shiftDate + "';";
                            SqlCommand checkcmd = new SqlCommand(checksql, conn);
                            //If no other shift assigned for that day
                            if (checkcmd.ExecuteScalar() == null) {
                                //If total hours not exceeded
                               /* flag = true;
                                //assign shift
                                updateSql += "Update schedule set empId =" + empId + " where scheduleId=" + scheduleId;
                                */
                                int shiftHours = endTime - startTime;
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

      
    }
}