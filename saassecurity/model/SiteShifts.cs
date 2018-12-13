using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace saassecurity.model
{
    public class SiteShifts
    {
        public int id { get; set; }
        public int siteId { get; set; }
        public int weekday { get; set; }
        public int startTime { get; set; }
        public int endTime { get; set; }
        public String shiftDate { get; set; }
        public String day { get; set; }
        public int weekNum { get; set; }
    }
}