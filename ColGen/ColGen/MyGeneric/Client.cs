using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ColGen.MyGeneric
{
    class Client
    {
        static void Main(string[] args)
        {
            int x, y, z;
            double d1, d2, d3;
            x = 10;
            y = 20;
            d1 = 45.2;
            d2 = 50.5;

            NormalClass nc;
            nc = new NormalClass();
            Console.WriteLine("Number Interchange with Normal Class");
            Console.WriteLine("X:{0} Y:{1}",x,y);
            nc.interchange(ref x, ref y);
            Console.WriteLine("X:{0} Y:{1}",x,y);

            //error beacuse of double
            /*
            Console.WriteLine("d1:{0} d2:{1}",d1,d2);
            nc.interchange(ref d1, ref d2);
            Console.WriteLine("d1:{0} d2:{1}", d1, d2);
            */

            WithGenericMethod wgm;
            wgm = new WithGenericMethod();
            x = 25;
            y = 50;
            Console.WriteLine("\nGeneric works with Int");
            Console.WriteLine("X:{0} Y:{1}",x,y);
            //wgm.interchange<int>(ref x, ref y);
            wgm.interchange(ref x, ref y);
            Console.WriteLine("X:{0} Y:{1}\n\n", x, y);

            Console.WriteLine("\nGeneric works with Double");
            d1 = 22.3;
            d2 = 55.2;
            Console.WriteLine("d1:{0} d2:{1}", d1, d2);
            wgm.interchange<double>(ref d1, ref d2);
            Console.WriteLine("d1:{0} d2:{1}\n\n", d1, d2);


            Employee e1, e2;
            e1 = new Employee();
            e2 = new Employee();

            e1.no = 1;
            e1.name = "Nithin";
            e1.age = 23;

            e2.no = 2;
            e2.name = "Justin";
            e2.age = 32;

            Console.WriteLine("Before interchange");
            e1.display();
            e2.display();

            wgm.interchange<Employee>(ref e1, ref e2);
            //below also works
            //wgm.interchange(ref e1, ref e2);
            Console.WriteLine("After interchange");
            e1.display();
            e2.display();
        }
    }
}
