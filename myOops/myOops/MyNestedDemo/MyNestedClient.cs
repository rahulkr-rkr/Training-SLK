using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace myOops.MyNestedDemo
{
    class MyNestedClient
    {
        public static void Main(string[] args)
        {
            
            Student sObj;
            sObj = new Student();   // size is for 3 variables
            Console.WriteLine("Without Marks");
            sObj.Display();
           
            Console.WriteLine("\nWith Marks");
            sObj.Save(21, "nitin", 24, 55, 66);  //size will imcrease by 2 variables
            sObj.Display();
           
           
           Console.WriteLine("\nMarks Through Student");
           //using semister object through student as it is public
           sObj.semObj.Display();


            //OR
            //using semister class directly as it is public
            Console.WriteLine("\n------------------------------------------");
            Student.Semester marksObj;
            marksObj = new Student.Semester();
            marksObj.Topic1 = 77;
            marksObj.Topic2 = 87;
            Console.WriteLine("\nMarks without Student");
            marksObj.Display();

        }
    }
}
