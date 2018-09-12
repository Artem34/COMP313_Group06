using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace saassecurity
{
    public partial class ViewSites : System.Web.UI.Page
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

        protected void viewDetail(object sender, EventArgs e)
        {
            int id = gridSitesInfo.SelectedIndex;
            int siteId = Convert.ToInt32(gridSitesInfo.Rows[id].Cells[1].Text);
            Response.Redirect("SiteDetails.aspx?siteId=" + siteId);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}