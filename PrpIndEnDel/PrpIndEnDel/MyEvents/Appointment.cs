using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrpIndEnDel.MyEvents
{
    class Appointment
    {
        public event EventHandler Action1;
        public void Apply(string sAppNo)
        {
            AdmissionEventArgs aea;
            aea = new AdmissionEventArgs();

            if (sAppNo == "I005")
                aea.Message = sAppNo + "\nYour Profile is not suitable for the current job";
            else
                aea.Message = sAppNo + "\nYour Profile matches the job requirement";

            //Raising an event with a message
            if (Action1 != null)
                Action1(this, aea);
        }
    }
}
