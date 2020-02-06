using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.MySimpleInheritance
{
    class Client
    {
        static void Main(string[] args)
        {
            EAccount ea;
            ea = new EAccount();     //memory occupied=AccountHolder+EAAcount
            ea.eaDisplay();
            Console.WriteLine("\n\n");
            ea.ahDisplay();          //This is also possible
        }
    }
}
