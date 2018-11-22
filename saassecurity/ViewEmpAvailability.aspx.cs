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
    public partial class ViewEmpAvailability : System.Web.UI.Page
    {
        String sql = "select a.empId, a.weekday, (case a.weekday " +
            "when 1 then 'Sunday' when 2 then 'Monday'	when 3 then 'Tuesday' " +
            "when 4 then 'Wednesday' when 5 then 'Thursday'	when 6 then 'Friday'" +
            "when 7 then 'Saturday' end) as day, a.startTime, a.endTime, " +
            "e.firstName + e.lastName as name, e.hours " +
            "from availability a JOIN employees e on a.empId = e.empId" +
            " where a.startTime >= @startTime and a.endTime <= @endTime";
        String sqlOrder = " order by a.weekday asc";
        String sqlConnection = ConfigurationManager.ConnectionStrings["scheduleDb"].ToString();
        SqlCommand sqlCommand = new SqlCommand();
        SqlDataSource source = new SqlDataSource();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            this.Page.Controls.Add(source);
            source.ConnectionString = sqlConnection;

            if (!Page.IsPostBack)
            {
                String endTime = "23";
                drpEndTime.SelectedValue = endTime;
           }
            source.SelectParameters.Clear();

            ControlParameter controlStartTime = new ControlParameter("startTime", drpStartTime.UniqueID, "SelectedValue");
            controlStartTime.DefaultValue = "0";
            source.SelectParameters.Add(controlStartTime);

            ControlParameter controlEndTime = new ControlParameter("endTime", drpEndTime.UniqueID, "SelectedValue");
            controlEndTime.DefaultValue = "23";
            source.SelectParameters.Add(controlEndTime);

           
            String weekday = drpWeekDay.SelectedValue;

            if (weekday != null && weekday != "")
             {
                 sql += " and a.weekday = @weekday";
               
                source.SelectParameters.Add(new ControlParameter("weekday", drpWeekDay.UniqueID, "SelectedValue"));

            }


            source.SelectCommand = sql + sqlOrder;
            //source.DataBind();
            GridView1.DataSource = source;
            GridView1.DataBind();

        }

        protected void OnDataBound(object sender, EventArgs e)
        {
            for (int i = GridView1.Rows.Count - 1; i > 0; i--)
            {
                GridViewRow row = GridView1.Rows[i];
                GridViewRow previousRow = GridView1.Rows[i - 1];
                int j = 0;
                    if (row.Cells[j].Text == previousRow.Cells[j].Text)
                    {
                        if (previousRow.Cells[j].RowSpan == 0)
                        {
                            if (row.Cells[j].RowSpan == 0)
                            {
                                previousRow.Cells[j].RowSpan += 2;
                            }
                            else
                            {
                                previousRow.Cells[j].RowSpan = row.Cells[j].RowSpan + 1;
                            }
                            row.Cells[j].Visible = false;
                        }
                    }
                
            }
        }

        protected void filterData(object sender, EventArgs e) {
            
                String weekday = drpWeekDay.SelectedValue;

                /* if (drpWeekDay.SelectedValue != null) {

                     sqlCommand.Connection = sqlConnection;
                     String sqlText = sql;

                     int weekday = Convert.ToInt32(drpWeekDay.SelectedValue);

                     if (weekday > 0 && weekday < 8)
                     {
                         sqlText += " and a.weekday = " + weekday;                   
                     }


                     sqlCommand.CommandText = sqlText;
                 }

                 ViewEmpAvailabilitySqlDataSource.SelectCommand = */

                /*SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
                dataTable = new DataTable();
                sqlDataAdapter.Fill(dataTable);
                grvStudentWithoutDatasource.DataSource = dataTable;
                grvStudentWithoutDatasource.DataBind();
                */
            }
    }
}