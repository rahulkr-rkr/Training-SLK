using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.MyMultilevelInheritance
{
    class NissanMicro:Car
    {
        String sStartMode;

        public NissanMicro()
        {
            sStartMode = "SelfStart";
            Console.WriteLine("Inside Nissan Micra Constructor");
        }

        public override void display()
        {
            Console.WriteLine("StaertMode:" + sStartMode);
            base.display();
        }

        public void dip()
        {
            Console.WriteLine("dip fun!!!");
        }
    }
}
