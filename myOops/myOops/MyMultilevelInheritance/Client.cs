using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.MyMultilevelInheritance
{
    class Client
    {
        static void Main(string[] args)
        {
            /*
            //Automobile nm;
            NissanMicro nm;
            nm = new NissanMicro();
            nm.display();
            nm.dip();
            Console.WriteLine("----------------------------");
            return;
            */

            /*
            //ability to point to functions of dev class
            //base class pointing to derive class
            Automobile a;
            a = new NissanMicro();
            a.display();
            //a.dip();
            return;
            */

            Automobile a;
            a = Factory.GetObject(Console.ReadLine());   //sample suita....
            a.display();
        }
    }
}
