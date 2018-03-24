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
    public partial class AssignSchedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Master.WelcomeMessage = "Welcome, " + Session["empId"];
        }

        protected void btnStartSchedAssign_Click(object sender, EventArgs e)
        {
            // =================================================
            // Display all data
            // =================================================
            //var r1 = from employee in employees select employee;
            //foreach (var employee in r1)
            //    Console.WriteLine(employee);
            // =================================================
            // I want all employees available at site: Progress from: 10:00 to 15:00
            // =================================================
            // Should only get John cuz Denis is not available from 10am
            //var r1 = from employee in employees where employee.Site == "Progress" && employee.StartTime <= 10 && employee.EndTime >= 15 select employee;
            //foreach (var employee in r1)
            //    Console.WriteLine(employee);
            // =================================================
            // Assign employees based on List<Slot> slots
            // =================================================
            var combo = from slot in slots
                        from hour in hours
                        join employee in employees on slot.Site equals employee.Site
                        // where will link slot period of time to hours
                        where (slot.StartTime <= hour.HourSlot && slot.EndTime >= hour.HourSlot)
                        // here we filter employees that are available for each time slot selected above
                        && (employee.StartTime <= hour.HourSlot && (employee.EndTime >= (hour.HourSlot + 1) && (hour.HourSlot + 1) <= slot.EndTime))
                        select new { slot, hour, employee };

            foreach (var line in combo)
            {

                //Console.WriteLine("{0} ({1}) {2}", line.hour.hourSlot, line.employee.Name, line.employee.Name.Count());

                Console.WriteLine(line.slot + " " + line.hour + " " + line.employee);
            }


            // Exit
            Console.WriteLine("\n\nPress any key to exit...");
            Console.ReadKey();
        }

        /// <summary>
        /// Fake list of employee data
        /// </summary>
        static List<Employee> employees = new List<Employee>()
        {
            new Employee(){ Name="John", Site="Progress", StartTime=9, EndTime=17},
            new Employee(){ Name="Elton", Site="Ashtonbee", StartTime=9, EndTime=17},
            new Employee(){ Name="Denis", Site="Progress", StartTime=12, EndTime=20},
            new Employee(){ Name="Bane", Site="Progress", StartTime=17, EndTime=23},
        };

        /// <summary>
        /// Employee information
        /// </summary>
        class Employee
        {
            public string Name { get; set; }
            public string Site { get; set; }
            public int StartTime { get; set; }
            public int EndTime { get; set; }

            public override string ToString()
            {
                return string.Format("\tName: {0} \tSite: {1}  From: {2}  to: {3}", Name, Site, StartTime, EndTime);
            }
        }

        /// <summary>
        /// Fake list of available slots
        /// </summary>
        static List<Slot> slots = new List<Slot>()
        {
            new Slot(){Site="Progress", StartTime=8, EndTime=15},
            new Slot(){Site="Ashtonbee", StartTime=12, EndTime=18}
        };

        /// <summary>
        /// Slots information
        /// </summary>
        class Slot
        {
            public string Site { get; set; }
            public int StartTime { get; set; }
            public int EndTime { get; set; }

            public override string ToString()
            {
                return string.Format("Site: {0}  \tFrom: {1}  to: {2}", Site, StartTime, EndTime);
            }
        }

        /// <summary>
        /// Fake list of hours
        /// </summary>
        static List<Hour> hours = new List<Hour>()
        {
            new Hour(){HourSlot=1},
            new Hour(){HourSlot=2},
            new Hour(){HourSlot=3},
            new Hour(){HourSlot=4},
            new Hour(){HourSlot=5},
            new Hour(){HourSlot=6},
            new Hour(){HourSlot=7},
            new Hour(){HourSlot=8},
            new Hour(){HourSlot=9},
            new Hour(){HourSlot=10},
            new Hour(){HourSlot=11},
            new Hour(){HourSlot=12},
            new Hour(){HourSlot=13},
            new Hour(){HourSlot=14},
            new Hour(){HourSlot=15},
            new Hour(){HourSlot=16},
            new Hour(){HourSlot=17},
            new Hour(){HourSlot=18},
            new Hour(){HourSlot=19},
            new Hour(){HourSlot=20},
            new Hour(){HourSlot=21},
            new Hour(){HourSlot=22},
            new Hour(){HourSlot=23},
            new Hour(){HourSlot=24},
        };

        /// <summary>
        /// List of 24h slots
        /// </summary>
        class Hour
        {
            public int HourSlot { get; set; }

            public override string ToString()
            {
                return string.Format("\tHourSlot: {0} ", HourSlot);
            }
        }
    }
}