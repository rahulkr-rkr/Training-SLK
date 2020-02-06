using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.BaseClassContruct
{
    class MyBase
    {
        String sY;
        public MyBase()
        {
            sY = "Bond";
            Console.WriteLine("inside Mybase Constructor");
        }

        public MyBase(String s)
        {
            sY = "MyBase Value" + s;
            Console.WriteLine("Inside MyBase Constructor with parameter");
        }

        public void baseDisplay()
        {
            Console.WriteLine("Value of sY: " + sY);
        }
    }
}
