using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace saassecurity
{
    public partial class ViewEmployeeDetail : System.Web.UI.Page
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
            getAvailability(Request.QueryString["empId"]);
        }


        private void getAvailability(string empId)
        {
            string connString = ConfigurationManager.ConnectionStrings["ScheduleDb"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);
            String query = "Select weekday, startTime, endTime from availability where empId =" + Convert.ToInt32(empId);
            SqlCommand comm = new SqlCommand(query, conn);
            try
            {
                conn.Open();

                using (SqlDataReader reader = comm.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        string weekday = reader[0].ToString();
                        string startTime = reader[1].ToString();
                        string endTime = reader[2].ToString();

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
    }
}