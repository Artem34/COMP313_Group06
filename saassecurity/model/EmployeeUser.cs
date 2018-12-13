using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace saassecurity.model
{
    public class EmployeeUser
    {
        public String firstName { get; set; }
        public String lastName { get; set; }
        public String email { get; set; }
        public String dob { get; set; }
        public String address { get; set; }
        public String contactNum { get; set; }
        public String userId { get; set; }
        public String password { get; set; }
        public String confirmPassword { get; set; }
        public String role { get; set; }
        public String status { get; set; }
        public String hours { get; set; }
    }
}