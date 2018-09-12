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
            ts.Add(new ListItem("0"));
            ts.Add(new ListItem("1"));
            ts.Add(new ListItem("2"));
            ts.Add(new ListItem("3"));
            ts.Add(new ListItem("4"));
            ts.Add(new ListItem("5"));
            ts.Add(new ListItem("6"));
            ts.Add(new ListItem("7"));
            ts.Add(new ListItem("8"));
            ts.Add(new ListItem("9"));
            ts.Add(new ListItem("10"));
            ts.Add(new ListItem("11"));
            ts.Add(new ListItem("12"));
            ts.Add(new ListItem("13"));
            ts.Add(new ListItem("14"));
            ts.Add(new ListItem("15"));
            ts.Add(new ListItem("16"));
            ts.Add(new ListItem("17"));
            ts.Add(new ListItem("18"));
            ts.Add(new ListItem("19"));
            ts.Add(new ListItem("20"));
            ts.Add(new ListItem("21"));
            ts.Add(new ListItem("22"));
            ts.Add(new ListItem("23"));

            return ts;
        }
    }

   
}