using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.General
{
    class Client
    {
        public static void Main(string[] args)
        {
            MyBase mb;
            mb = new MyBase();
            //mb.defaultDisplay();    //this will not work as it is a private by default
            mb.pubDisplay();
            //mb.pvtDisplay();    //Private function cannot be called
            //mb.prtDisplay();     //this will not work as it is protected
            mb.intDisplay();
            mb.piDisplay();
        }
    }
}
