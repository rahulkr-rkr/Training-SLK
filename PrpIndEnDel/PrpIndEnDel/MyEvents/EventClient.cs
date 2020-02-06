using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PrpIndEnDel.MyEvents
{
    class EventClient
    {
        static void Main(string[] args)
        {
            Console.Clear();
            Console.WriteLine("Demo for Event Handling\n");

            Admission adm1;
            Appointment app1;

            adm1 = new Admission();
            adm1.Action1 += new EventHandler(ActionHandler);
            adm1.Apply("S001");

            //return;
            app1 = new Appointment();
            app1.Action1 += new EventHandler(ActionHandler);
            app1.Apply("I005");
        }
        static void ActionHandler(Object o,EventArgs e)
        {
            if(o.GetType() == typeof(Admission))
            {
                Console.WriteLine("Admission Object raised this event");
                Console.WriteLine("Inside ActionHandler\n" + ((AdmissionEventArgs)e).Message);
            }

            if(o.GetType() == typeof(Appointment))
            {
                Console.WriteLine("\n\nAppoinment Object raised this event");
                Console.WriteLine("Inside ActionHandler\n" + ((AdmissionEventArgs)e).Message);
            }
            Console.WriteLine("Information recieved about selection process");
        }
    }
}
