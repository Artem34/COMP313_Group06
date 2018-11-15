using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace saassecurity.model
{
    public class SiteShifts
    {
        private int id;
        private int siteId;
        private int weekday;
        private int startTime;
        private int endTime;
        private String shiftDate;

        public int getId() {
            return this.id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public int getSiteId() {
            return this.siteId;
        }

        public void setSiteId(int siteId){
            this.siteId = siteId;
        }

        public int getWeekday() {
            return this.weekday;
        }

        public void setWeekday(int weekday) {
            this.weekday = weekday;
        }

        public int getStartTime() {
            return this.startTime;
        }

        public void setStartTime(int startTime) {
            this.startTime = startTime;
        }

        public int getEndTime(){
            return this.endTime;
        }

        public void setEndTime(int endTime) {
            this.endTime = endTime;
        }

        public String getShiftDate() {
            return this.shiftDate;
        }

        public void setShiftDate(String shiftDate) {
            this.shiftDate = shiftDate;
        }
    }
}