using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.Demo2
{
    class ConDestDespose
    {
        //demo for constructor destructor dispose
        static void Main()
        {
            Console.WriteLine("Program for accessing Student Class");
            /*
            Student objStud;
            objStud = new Student();
            objStud.display();

            objStud.iRegNo = 1;
            objStud.sName = "Nitin Rao";
            objStud.iAge = 25;
            objStud.display();

            objStud.add(2, "Vishwa", 25, 89);
            objStud.display();
            //objStud.Dispose();  //this will suppres finalize
            GC.Collect();
            Console.WriteLine("End of main");
            Console.ReadKey();
            */
            createStud();
            Console.WriteLine("End of Main");
            Console.ReadKey();
        }

        public static void createStud()
        {
            Console.WriteLine("Inside CreateStud");
            Student s1;
            s1 = new Student();
            s1.display();
            s1.Dispose();  //for user call
            //s1 = null;  //with null and GC.Collect() it will show the destructor before function exits
            //GC.Collect();  //avoid
            System.Threading.Thread.Sleep(1000); //for delay your current thread; so that GC takes Priority
            s1.display();
            Console.WriteLine("Going Out of CreateStuddent");
        }
    }
}
