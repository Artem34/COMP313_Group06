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
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        public string WelcomeMessage
        {
            get
            {
                return lblWelcome.Text;
            }
            set
            {
                lblWelcome.Text = value;
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["empId"] != null) {
                
                btnLogout.Visible = true;
                
                if(!IsPostBack)
                 buildNavigation(Session["role"].ToString());
                
                
                navigationMenu.Visible = true;
                lblWelcome.Text = "Welcome, " + Session["name"];

                lblLoggedAs.Text = "(Logged in as, " + Session["role"]+ ")";
            }
        }

        private void buildNavigation(String role) {
            string connString = ConfigurationManager.ConnectionStrings["ScheduleDb"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);

            String query = "Select menuText,menuLoc from navigationmenu where role = '" + role + "' or role='All'";

            SqlCommand comm = new SqlCommand(query, conn);

            try
            {
                conn.Open();

                using (SqlDataReader reader = comm.ExecuteReader())
                {
                    while (reader.Read())
                    {
                       
                        string menuText = reader[0].ToString();
                        string menuLoc = reader[1].ToString();

                        navigationMenu.Items.Add(new MenuItem(menuText, menuText, "", menuLoc));
                        
                    }
                    
                }

            }
            catch (SqlException ex)
            {

              
            }
            finally
            {

                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["empId"] != null)
            {
                Session["empId"] = null;
                Session["name"] = null;
            }
            Response.Redirect("~/Login.aspx?logout=true");
        }
    }
}