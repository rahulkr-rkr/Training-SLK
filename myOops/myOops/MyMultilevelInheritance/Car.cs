using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.MyMultilevelInheritance
{
    class Car:Automobile
    {
        int iNoOfDoors;
        
        public Car()
        {
            iNoOfDoors = 5;
            iWheels = 4;
            sEngineType = "Petrol/Diesel";
            Console.WriteLine("Inside Car Constructor");
        }

        public override void display()
        {
            Console.WriteLine("No Of Doors:"+ iNoOfDoors);
            base.display();
        }
    }
}
