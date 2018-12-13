using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data;
using CsvHelper;
using saassecurity.model;

namespace saassecurity
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["ScheduleDb"].ConnectionString;
        
        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        
        protected void btnadd_Click(object sender, EventArgs e)
        {
            if (txtpwd.Text == txtcpwd.Text)
            {
                EmployeeUser emp = new EmployeeUser();
                emp.firstName = txtfName.Text.ToString();
                emp.lastName = txtlName.Text.ToString();
                emp.email = txtemail.Text.ToString();
                emp.contactNum = txtphn.Text.ToString();
                emp.address = txtaddress.Text.ToString();
                emp.userId = txtuser.Text.ToString();
                emp.password = txtpwd.Text.ToString();
                emp.confirmPassword = txtcpwd.Text.ToString();
                emp.dob = txtdate.Text.ToString();                
                emp.role = drpRole.SelectedValue;
                emp.hours = statusRadio.SelectedValue;
                emp.status = statusRadio.SelectedItem.ToString();

                if (insertEmployee(emp) > 0) {

                    lblErrorMsg.Text = "Employee Added Successfully!";
                }
                
            }
            else {
                lblErrorMsg.Text = "Passwords do not match!";
            }

        }

        public void UploadEmployees(object sender, EventArgs e) {
            if (uploadCsvControl.HasFile) {
                string fileExt =
               System.IO.Path.GetExtension(uploadCsvControl.FileName);
                if(fileExt == ".csv" || fileExt == ".xlsx") {
                    DataTable dt = new DataTable();
                    List<EmployeeUser> allEmployees = new List<EmployeeUser>();
                    try
                    {
                        using (var reader = new StreamReader(uploadCsvControl.PostedFile.InputStream))
                        using (var csvReader = new CsvReader(reader))
                        {
                            while (csvReader.Read()) {
                                EmployeeUser data = csvReader.GetRecord<EmployeeUser>();
                                if (insertEmployee(data) <= 0) {
                                    lblErrorMsg.Text = "Error adding employee!";
                                    break;
                                }
                            }

                        }

                    }
                    catch (Exception ex)
                    {
                        Console.Write(ex.StackTrace);
                    }
                }
               
            }
        }

        public int insertEmployee(EmployeeUser empUser) {
            SqlConnection conn = new SqlConnection(connString);

            SqlCommand sqlcommand;

            string insertEmp = "INSERT INTO employees(firstName,lastName,dob,address,email,contactNum,userId,hours, status) VALUES(@firstName,@lastName,@dob,@address,@email,@contactNum,@userId,@hours, @status);"
                                + "SELECT CAST(scope_identity() AS int)";
            sqlcommand = new SqlCommand(insertEmp, conn);
            sqlcommand.Parameters.AddWithValue("@firstName", empUser.firstName);
            sqlcommand.Parameters.AddWithValue("@lastName", empUser.lastName);
            sqlcommand.Parameters.AddWithValue("@dob", empUser.dob);
            sqlcommand.Parameters.AddWithValue("@address", empUser.address);
            sqlcommand.Parameters.AddWithValue("@email", empUser.email);
            sqlcommand.Parameters.AddWithValue("@contactNum", empUser.contactNum);
            sqlcommand.Parameters.AddWithValue("@userId", empUser.userId);
            sqlcommand.Parameters.AddWithValue("@hours", empUser.hours);
            sqlcommand.Parameters.AddWithValue("@status", empUser.status);

            try
            {

                conn.Open();
                int empId = Convert.ToInt32(sqlcommand.ExecuteScalar());

                string insertUser = "INSERT INTO users(userId,password,role, empId) VALUES(@userId,@password,@role,@empId)";

                sqlcommand = new SqlCommand(insertUser, conn);
                sqlcommand.Parameters.AddWithValue("@userId", empUser.userId);
                sqlcommand.Parameters.AddWithValue("@password", empUser.password);
                sqlcommand.Parameters.AddWithValue("@role", empUser.role);
                sqlcommand.Parameters.AddWithValue("@empId", empId);

                sqlcommand.ExecuteNonQuery();

                string insertHour = "insert into empHours values(@empId,@totalHours,0)";
                SqlCommand cmd = new SqlCommand(insertHour, conn);
                cmd.Parameters.AddWithValue("@empId", empId);
                cmd.Parameters.AddWithValue("@totalHours", empUser.hours);
                return cmd.ExecuteNonQuery();

            }
            catch (SqlException ex)
            {
                lblErrorMsg.Text = ex.ToString();
            }
            finally
            {
                conn.Close();
            }
            return -1;
        }

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
    }
}