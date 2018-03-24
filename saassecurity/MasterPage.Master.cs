using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
                navigationMenu.Visible = true;
            }
        }
    }
}