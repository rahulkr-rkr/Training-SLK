using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ColGen.MyGeneric
{
    class Employee
    {
        public int no;
        public string name;
        public int age;

        public void display()
        {
            Console.WriteLine("Number:" +no);
            Console.WriteLine("Name:"+name);
            Console.WriteLine("Age:"+age);
        }
    }
}
