using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI.WebControls;

namespace saassecurity
{
    
    public class TimeHours
    {
        public int Hour { get; set; }

        public List<ListItem> GetHours()
        {
            List<ListItem> ts = new List<ListItem>();
            
            
            DataSet ds = new DataSet();
            DataTable dt = new DataTable("TimeHours");
            dt.Columns.Add("Hour");
            ts.Add(new ListItem("0000"));
            ts.Add(new ListItem("0100"));
            ts.Add(new ListItem("0200"));
            ts.Add(new ListItem("0300"));
            ts.Add(new ListItem("0400"));
            ts.Add(new ListItem("0500"));
            ts.Add(new ListItem("0600"));
            ts.Add(new ListItem("0700"));
            ts.Add(new ListItem("0800"));
            ts.Add(new ListItem("0900"));
            ts.Add(new ListItem("1000"));
            ts.Add(new ListItem("1100"));
            ts.Add(new ListItem("1200"));
            ts.Add(new ListItem("1300"));
            ts.Add(new ListItem("1400"));
            ts.Add(new ListItem("1500"));
            ts.Add(new ListItem("1600"));
            ts.Add(new ListItem("1700"));
            ts.Add(new ListItem("1800"));
            ts.Add(new ListItem("1900"));
            ts.Add(new ListItem("2000"));
            ts.Add(new ListItem("2100"));
            ts.Add(new ListItem("2200"));
            ts.Add(new ListItem("2300"));

            return ts;
        }
    }

   
}