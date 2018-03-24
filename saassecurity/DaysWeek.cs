using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace saassecurity
{
    public class DaysWeek
    {

        public List<ListItem> getDaysWeek() {
           
            List<ListItem> list = new List<ListItem>();

            list.Add(new ListItem("Monday"));
            list.Add(new ListItem("Tuesday"));
            list.Add(new ListItem("Wednesday"));
            list.Add(new ListItem("Thursday"));
            list.Add(new ListItem("Friday"));
            list.Add(new ListItem("Saturday"));
            list.Add(new ListItem("Sunday"));


            return list;
        }
        
    }

}