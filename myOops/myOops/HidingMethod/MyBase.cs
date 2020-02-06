using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.HidingMethod
{
    class MyBase
    {
        int iValue1;
        public MyBase()
        {
            iValue1 = 10;
        }
        public virtual void display()
        {
            Console.WriteLine("Value of iValue1:" + iValue1);
        }

    }
}
