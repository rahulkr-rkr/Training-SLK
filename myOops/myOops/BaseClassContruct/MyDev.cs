using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.BaseClassContruct
{
    class MyDev:MyBase
    {
        int iZ;

        public MyDev()//:base("DotNet Bond")
        {
            iZ = 15;
            Console.WriteLine("Inside MyDev Constructor");
        }

        public MyDev(String s)
        {
            //will call default base constructor
            Console.WriteLine("Inside MyDev constructor with Parameter");
        }

        public void devDisplay()
        {
            Console.WriteLine("\n devDisplay Function");
            Console.WriteLine("Value of iZ:" + iZ);
            baseDisplay();
        }
    }
}
