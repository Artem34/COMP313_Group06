﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace saassecurity
{
    public partial class AddandUpdateAvailability : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Master.WelcomeMessage = "Welcome, " + Session["empId"];
        }
    }
}