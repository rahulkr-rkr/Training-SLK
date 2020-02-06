using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.Demo2
{
    class Spolymorphism
    {
        static void Main(string[] args)
        {
            double z;
            z = sum(15, 12);  //polymorphic function call to int,int
            //z = sum("hello", "mars"); //plymorphic function call compilation error
            //z = sum(15.7, 12.3); //polymorphic function call to double,double
            z = sum(0.2223F, 0.2223F); //polymorphic function call to float,float
            Console.WriteLine(z);
        }
       public static float sum(float x,float y)
        {
            Console.WriteLine("Inside float,float");
            return x + y;
        }
        public static int sum(int x,int y)
        {
            Console.WriteLine("Inside int,int");
            return x + y;
        }
    }
}
