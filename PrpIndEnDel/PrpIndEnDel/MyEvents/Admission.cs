using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrpIndEnDel.MyEvents
{
    class Admission
    {
        public event EventHandler Action1;

        public void Apply(string sAppNo)
        {
            AdmissionEventArgs aea;
            aea = new AdmissionEventArgs();

            if (sAppNo == "S005")
                aea.Message = sAppNo + "\nYour Application has Been Rejected";
            else
                aea.Message = sAppNo + "\nYour Application Has Been Accepted";

            //raising an event with a message
            Action1(this, aea);

        }                                                             
    }
}
