using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.HidingMethod
{
    class MyDev:MyBase
    {
        int iValue2;
        public MyDev()
        {
            iValue2 = 20;
        }
        //Usage of NEW keyword
        public new void display()
        {
            base.display();
            Console.WriteLine("Value of iValue2:" + iValue2);
        }
    }
}
