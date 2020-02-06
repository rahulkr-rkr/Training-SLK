using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.MyMultilevelInheritance
{
    class Automobile
    {
        public int iWheels;
        public String sEngineType;
        //......

        public Automobile()
        {
            iWheels = 2;
            sEngineType = "Petrol";
            Console.WriteLine("Inside Automobile Constructor");
        }

       
        public virtual void display()
        {
            Console.WriteLine("No of Wheels:" + iWheels);
            Console.WriteLine("engine Types:" + sEngineType);
        }
       
    }
}
