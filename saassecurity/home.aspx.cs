using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace saassecurity
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddEmp_Click(object sender, EventArgs e)
        {
            Server.Transfer("home.aspx", true);
        }

        protected void btnAddAvail_Click(object sender, EventArgs e)
        {
            Server.Transfer("AddandUpdateAvailability.aspx", true);
        }

        protected void btnAddSite_Click(object sender, EventArgs e)
        {
            Server.Transfer("AddSite.aspx", true);
        }
    }
}